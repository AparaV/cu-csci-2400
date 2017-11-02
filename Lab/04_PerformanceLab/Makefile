# Student's Makefile for the CS:APP Performance Lab
CC = gcc
CFLAGS = -Wall -O1 -m64
LIBS = -lm

OBJS = driver.o kernels.o fcyc.o clock.o

all: driver

driver: $(OBJS) fcyc.h clock.h defs.h
	$(CC) $(CFLAGS) $(OBJS) $(LIBS) -o driver

clean: 
	-rm -f $(OBJS) driver core *~ *.o


