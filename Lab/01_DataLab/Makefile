# Student's Makefile for the CS:APP Data Lab
##
## This version forces compilaion on 32-bit architecture
##
CC = gcc
CFLAGS = -O -Wall -m32

btest: btest.c bits.c decl.c tests.c btest.h bits.h
	$(CC) $(CFLAGS) -o btest bits.c btest.c decl.c tests.c

test:
	./dlc bits.c

clean:
	rm -f *.o btest

