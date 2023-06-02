#!/bin/sh

rm ../*.um
make clean
make all
./writetests