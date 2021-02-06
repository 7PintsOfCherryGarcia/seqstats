CC=gcc

CFLAGS=-Wall -pedantic -O2

INC=-I../../libs -I../..
LIB=-lz -lm

.PHONY:all clean seqstats

seqstats:seqstats.c
	gcc $(CFLAGS) $(INC) $< -Wall -O3 -lz -lm -o $@ ../../libsqz.a $(LIB)
