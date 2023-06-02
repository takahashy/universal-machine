#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "assert.h"
#include "fmt.h"
#include "seq.h"

extern void Um_write_sequence(FILE *output, Seq_T instructions);

extern void build_halt_test(Seq_T instructions);
extern void build_verbose_halt_test(Seq_T instructions);
extern void build_add_test(Seq_T stream);
extern void build_output_test(Seq_T instructions);
extern void build_load_output(Seq_T stream);

extern void build_output_unit_test(Seq_T stream);
extern void build_input_test(Seq_T stream);

extern void build_cmove_unit(Seq_T stream);
extern void build_add_unit(Seq_T stream);
extern void build_multiply_unit(Seq_T stream);
extern void build_divide_unit(Seq_T stream);
extern void build_nand_unit(Seq_T stream);

extern void build_segstore_unit_test(Seq_T stream);
extern void build_segStoreLoad_test(Seq_T stream);
extern void build_map_unit_test(Seq_T stream);
extern void build_map_unmap_test(Seq_T stream);
extern void build_loadp_unit_test(Seq_T stream);

extern void build_ummapSeg0_test(Seq_T stream);
extern void build_badummap_test(Seq_T stream);
extern void build_badsegstore_test(Seq_T stream);
extern void build_badsegload_test(Seq_T stream);
extern void build_badsegstore_bound_test(Seq_T stream);
extern void build_badsegload_bound_test(Seq_T stream);
extern void build_badloadprogram_test(Seq_T stream);
extern void build_nohalt_test(Seq_T stream);


extern void build_eLargeMap_test(Seq_T stream);



/* The array `tests` contains all unit tests for the lab. */

static struct test_info {
        const char *name;
        const char *test_input;          /* NULL means no input needed */
        const char *expected_output;
        /* writes instructions into sequence */
        void (*build_test)(Seq_T stream);
} tests[] = {
        { "halt-unit-test",         NULL, "", build_halt_test },
        { "output-unit-test", NULL, "", build_output_unit_test},
        { "input-unit-test", NULL, "", build_input_test},
        // { "halt-verbose", NULL, "", build_verbose_halt_test },
        // { "add", NULL, "" , build_add_test},
        // { "print-six", NULL, "", build_output_test},
        { "loadv-unit-test", NULL, "", build_load_output},
        { "cmove-unit-test", NULL, "", build_cmove_unit},
        { "add-unit-test", NULL, "", build_add_unit},
        { "multiply-unit-test", NULL, "", build_multiply_unit},
        { "divide-unit-test", NULL, "", build_divide_unit},
        { "nand-unit-test", NULL, "", build_nand_unit},
        { "map-unit-test", NULL, "", build_map_unit_test},
        { "unmap-unit-test", NULL, "", build_map_unmap_test},
        { "segstore-unit-test", NULL, "", build_segstore_unit_test},
        { "segload-unit-test", NULL, "", build_segStoreLoad_test},
        { "loadp-unit-test", NULL, "", build_loadp_unit_test}
        
        // { "bad-unmap-seg0-test", NULL, "", build_ummapSeg0_test},
        // { "bad-unmap-test", NULL, "", build_badummap_test},
        // { "bad-segstore-test", NULL, "", build_badsegstore_test},
        // { "bad-segload-test", NULL, "", build_badsegload_test},
        // { "bad-segstore-bound-test", NULL, "", build_badsegstore_bound_test},
        // { "bad-segload-bound-test", NULL, "", build_badsegload_bound_test},
        // { "bad-loadp-test", NULL, "", build_badloadprogram_test},
        // { "bad-nohalt-test", NULL, "", build_nohalt_test}
        //{ "extreme-mapping-test", NULL, "", build_eLargeMap_test}
};

  
#define NTESTS (sizeof(tests)/sizeof(tests[0]))

/*
 * open file 'path' for writing, then free the pathname;
 * if anything fails, checked runtime error
 */
static FILE *open_and_free_pathname(char *path);

/*
 * if contents is NULL or empty, remove the given 'path', 
 * otherwise write 'contents' into 'path'.  Either way, free 'path'.
 */
static void write_or_remove_file(char *path, const char *contents);

static void write_test_files(struct test_info *test);


int main (int argc, char *argv[])
{
        bool failed = false;
        if (argc == 1)
                for (unsigned i = 0; i < NTESTS; i++) {
                        printf("***** Writing test '%s'.\n", tests[i].name);
                        write_test_files(&tests[i]);
                }
        else
                for (int j = 1; j < argc; j++) {
                        bool tested = false;
                        for (unsigned i = 0; i < NTESTS; i++)
                                if (!strcmp(tests[i].name, argv[j])) {
                                        tested = true;
                                        write_test_files(&tests[i]);
                                }
                        if (!tested) {
                                failed = true;
                                fprintf(stderr,
                                        "***** No test named %s *****\n",
                                        argv[j]);
                        }
                }
        return failed; /* failed nonzero == exit nonzero == failure */
}


static void write_test_files(struct test_info *test)
{
        FILE *binary = open_and_free_pathname(Fmt_string("../%s.um", test->name));
        Seq_T instructions = Seq_new(0);
        test->build_test(instructions);
        Um_write_sequence(binary, instructions);
        Seq_free(&instructions);
        fclose(binary);

        write_or_remove_file(Fmt_string("%s.0", test->name),
                             test->test_input);
        write_or_remove_file(Fmt_string("%s.1", test->name),
                             test->expected_output);
}


static void write_or_remove_file(char *path, const char *contents)
{
        if (contents == NULL || *contents == '\0') {
                remove(path);
        } else {
                FILE *input = fopen(path, "wb");
                assert(input != NULL);

                fputs(contents, input);
                fclose(input);
        }
        free(path);
}


static FILE *open_and_free_pathname(char *path)
{
        FILE *fp = fopen(path, "wb");
        assert(fp != NULL);

        free(path);
        return fp;
}
