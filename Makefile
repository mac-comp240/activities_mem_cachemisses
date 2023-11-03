CC = gcc
ICS = ..
CFLAGS =  -Og  

PROGS = sumvec \
    sumarrayrows\
	sumarraycols\
	sumarray3d\
	classexample

all: $(PROGS) timing.h

sumvec: sumvec.c
	$(CC) $(CFLAGS) $^ -o $@

sumarrayrows: sumarrayrows.c
	$(CC) $(CFLAGS) $^ -o $@

sumarrayrcols: sumarraycols.c
	$(CC) $(CFLAGS) $^ -o $@

sumarray3d: sumarray3d.c
	$(CC) $(CFLAGS) $^ -o $@

classexample: classexample.c
	$(CC) $(CFLAGS) $^ -o $@

clean:
	rm -f $(PROGS) *.o *~ 
	rm -f -r *.dSYM
	rm -f cache*


