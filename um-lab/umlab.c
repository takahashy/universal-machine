/*
 * umlab.c
 *
 * Functions to generate UM unit tests. Once complete, this module
 * should be augmented and then linked against umlabwrite.c to produce
 * a unit test writing program.
 *  
 * A unit test is a stream of UM instructions, represented as a Hanson
 * Seq_T of 32-bit words adhering to the UM's instruction format.  
 * 
 * Any additional functions and unit tests written for the lab go
 * here. 
 *  
 */


#include <stdint.h>
#include <stdio.h>
#include <assert.h>
#include <seq.h>
#include <bitpack.h>


typedef uint32_t Um_instruction;
typedef enum Um_opcode {
        CMOV = 0, SLOAD, SSTORE, ADD, MUL, DIV,
        NAND, HALT, ACTIVATE, INACTIVATE, OUT, IN, LOADP, LV
} Um_opcode;


/* Functions that return the two instruction types */

Um_instruction three_register(Um_opcode op, int ra, int rb, int rc);
Um_instruction loadval(unsigned ra, unsigned val);



/* Wrapper functions for each of the instructions */

static inline Um_instruction halt(void) 
{
        return three_register(HALT, 0, 0, 0);
}

typedef enum Um_register { r0 = 0, r1, r2, r3, r4, r5, r6, r7 } Um_register;

static inline Um_instruction add(Um_register a, Um_register b, Um_register c) 
{
        return three_register(ADD, a, b, c);
}

Um_instruction output(Um_register c);

/* Functions for working with streams */

static inline void append(Seq_T stream, Um_instruction inst)
{
        assert(sizeof(inst) <= sizeof(uintptr_t));
        Seq_addhi(stream, (void *)(uintptr_t)inst);
}

const uint32_t Um_word_width = 32;

void Um_write_sequence(FILE *output, Seq_T stream)
{
        assert(output != NULL && stream != NULL);
        int stream_length = Seq_length(stream);
        for (int i = 0; i < stream_length; i++) {
                Um_instruction inst = (uintptr_t)Seq_remlo(stream);
                for (int lsb = Um_word_width - 8; lsb >= 0; lsb -= 8) {
                        fputc(Bitpack_getu(inst, 8, lsb), output);
                }
        }
      
}


/* Unit tests for the UM */

void build_halt_test(Seq_T stream)
{
        append(stream, halt());
}

void build_verbose_halt_test(Seq_T stream)
{
        append(stream, halt());
        append(stream, loadval(r1, 'B'));
        append(stream, output(r1));
        append(stream, loadval(r1, 'a'));
        append(stream, output(r1));
        append(stream, loadval(r1, 'd'));
        append(stream, output(r1));
        append(stream, loadval(r1, '!'));
        append(stream, output(r1));
        append(stream, loadval(r1, '\n'));
        append(stream, output(r1));
}

void build_add_test(Seq_T stream)
{
        append(stream, add(r1, r2, r3));
        append(stream, halt());
}

void build_output_test(Seq_T stream)
{

        append(stream, loadval(r1, 48));
        append(stream, loadval(r2, 6));
        append(stream, add(r3, r1, r2));
        append(stream, output(r3));
        append(stream, halt());
}

void build_load_output(Seq_T stream)
{
        for (uint32_t i = 0; i < 256; i++) {
                append(stream, loadval(r1, i));
                append(stream, output(r1));
        }
        append(stream, halt()); 
}

void build_cmove_unit(Seq_T stream)
{
        append(stream, loadval(r1, 23));
        append(stream, loadval(r2, 6));
        append(stream, loadval(r3, 1));
        append(stream, three_register(CMOV, r1, r2, r3));
        append(stream, output(r1));
        append(stream, loadval(r2, 6));
        append(stream, loadval(r3, 0));
        append(stream, three_register(CMOV, r1, r2, r3));
        append(stream, output(r1));
        append(stream, halt()); 
}



void build_add_unit(Seq_T stream)
{       
        append(stream, loadval(r1, 23));
        append(stream, loadval(r2, 6));
        append(stream, three_register(ADD, r3, r1, r2));
        append(stream, output(r3));
        append(stream, loadval(r1, 45));
        append(stream, loadval(r2, 345));
        append(stream, three_register(ADD, r3, r1, r2));
        append(stream, output(r3));
        append(stream, halt()); 
}

void build_multiply_unit(Seq_T stream)
{       
        append(stream, loadval(r1, 0));
        append(stream, loadval(r2, 6));
        append(stream, three_register(MUL, r3, r1, r2));
        append(stream, output(r3));
        append(stream, loadval(r1, 27));
        append(stream, loadval(r2, 3));
        append(stream, three_register(MUL, r3, r1, r2));
        append(stream, output(r3));
        append(stream, halt()); 
}

void build_nand_unit(Seq_T stream)
{       
        // append(stream, loadval(r1, 0x1ffffff));
        // append(stream, loadval(r2, 0x1ffffff));
        // append(stream, three_register(NAND, r3, r1, r2));
        // append(stream, output(r3));
        
        append(stream, halt());
}


void build_divide_unit(Seq_T stream)
{       
        append(stream, loadval(r1, 48));
        append(stream, loadval(r2, 6));
        append(stream, three_register(DIV, r3, r1, r2));
        append(stream, output(r3));
        append(stream, loadval(r1, 45));
        append(stream, loadval(r2, 2));
        append(stream, three_register(DIV, r3, r1, r2));
        append(stream, output(r3));
        // append(stream, loadval(r1, 48));
        // append(stream, loadval(r2, 0));
        // append(stream, three_register(DIV, r3, r1, r2));
        // append(stream, output(r3));
        append(stream, halt()); 
}

void build_eLargeMap_test(Seq_T stream)
{
        append(stream, loadval(r2, 10));
        for (uint32_t i = 0; i < (uint32_t) 1 << 26; i++)
        {
               append(stream, three_register(ACTIVATE, r0, r1, r2));
        }
        
        append(stream, halt()); 
}


void build_segStoreLoad_test(Seq_T stream)
{       

        append(stream, loadval(r2, 10));

        append(stream, three_register(ACTIVATE, r0, r1, r2));

        append(stream, loadval(r1, 1));
        append(stream, loadval(r2, 5));
        append(stream, loadval(r3, 6));
        append(stream, three_register(SSTORE, r1, r2, r3));
        append(stream, output(r3));

        append(stream, three_register(SLOAD, r5, r1, r2));
        append(stream, output(r5));
        append(stream, loadval(r2, 6));
        append(stream, three_register(SLOAD, r6, r1, r2));
        append(stream, output(r6));



        append(stream, halt()); 
}

void build_map_unmap_test(Seq_T stream)
{       

        append(stream, loadval(r7, 10));

        append(stream, three_register(ACTIVATE, r0, r1, r7));
        append(stream, output(r1));
        append(stream, three_register(ACTIVATE, r0, r2, r7));
        append(stream, output(r2));

        append(stream, three_register(INACTIVATE, r0, r0, r1));

        append(stream, three_register(ACTIVATE, r0, r2, r7));
        append(stream, output(r2));


        append(stream, halt()); 
}

// void build_map_unmap_test(Seq_T stream)
// {       

//         append(stream, loadval(r7, 10));

//         append(stream, three_register(ACTIVATE, r0, r1, r7));
//         append(stream, output(r1));
//         append(stream, three_register(ACTIVATE, r0, r2, r7));
//         append(stream, output(r2));

//         append(stream, three_register(INACTIVATE, r0, r0, r1));

//         append(stream, three_register(ACTIVATE, r0, r2, r7));
//         append(stream, output(r2));


//         append(stream, halt()); 
// }

// void build_x(Seq_T stream)
// {
//         append(stream, halt()); 
// }














Um_instruction three_register(Um_opcode op, int ra, int rb, int rc)
{
        uint64_t theWord = 0;

        theWord = Bitpack_newu(theWord, 4, 28, op);
        theWord = Bitpack_newu(theWord, 3, 0, rc);
        theWord = Bitpack_newu(theWord, 3, 3, rb);
        theWord = Bitpack_newu(theWord, 3, 6, ra);

        return (Um_instruction) theWord;
}

Um_instruction loadval(unsigned ra, unsigned val)
{
        uint64_t theWord = 0;

        theWord = Bitpack_newu(theWord, 4, 28, LV);
        theWord = Bitpack_newu(theWord, 3, 25, ra);
        theWord = Bitpack_newu(theWord, 25, 0, val);

        return (Um_instruction) theWord;
}

Um_instruction output(Um_register c)
{
        return three_register(OUT, 0, 0, c);
}