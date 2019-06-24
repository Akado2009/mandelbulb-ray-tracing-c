CC=gcc
CFLAGS=-lm -fopenmp
BULB=mandelbulb
BOX=mandelbox
LIBS=qdbmp/qdbmp.h qdbmp/qdbmp.c
RM=rm -rf

bulb:
	$(CC) -o $(BULB) bulb.c $(LIBS) $(CFLAGS)

box:
	$(CC) -o $(BOX) box.c $(LIBS) $(CFLAGS)
	
clean:
	$(RM) $(BULB) $(BOX)