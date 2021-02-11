CC=gcc

CFLAGS=-Wall -pedantic -O2
CINC=-I../../libs -I../..

LINC=-L../../
LIB=-lsqz -lz -lm

.PHONY:all clean seqstats

seqstats:seqstats.c
	$(CC) $(CFLAGS) $(CINC) $(LINC) $< -Wall -O3 -lz -lm -o $@ $(LIB)

clean:
	rm -rf seqstats
