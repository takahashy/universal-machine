#ifndef INSTRUCTIONS_H
#define INSTRUCTIONS_H

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdint.h>

void i_cmove(uint32_t *ra, uint32_t *rb, uint32_t *rc);
uint32_t i_add(uint32_t rb, uint32_t rc);
uint32_t i_multiply(uint32_t rb, uint32_t rc);
uint32_t i_divide(uint32_t rb, uint32_t rc);
uint32_t i_nand(uint32_t rb, uint32_t rc);
uint32_t i_input();
void i_output(uint32_t rc);


#endif