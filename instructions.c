#include "instructions.h"

void i_cmove(uint32_t *ra, uint32_t *rb, uint32_t *rc)
{
    if (*rc != 0) {
        *ra = *rb;
    }
}


uint32_t i_add(uint32_t rb, uint32_t rc)
{
    return (rb + rc);
}



uint32_t i_multiply(uint32_t rb, uint32_t rc)
{
    return (rb * rc);
}


uint32_t i_divide(uint32_t rb, uint32_t rc)
{
    return (rb/rc);
}


uint32_t i_nand(uint32_t rb, uint32_t rc)
{
    return ~(rb & rc);
}


uint32_t i_input()
{
    return (uint32_t) fgetc(stdin);
}


void i_output(uint32_t rc)
{
    assert(rc <= 255);
    fputc(rc, stdout);
}