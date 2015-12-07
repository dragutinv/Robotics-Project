
# Set correct variables and paths
CC      = g++
X11PATH = /usr/X11R6
CFLAGS  =  -O2  -Wall -ansi -pedantic -ffast-math -I$(X11PATH)/include
LDFLAGS=   -lpthread -lX11 -L$(X11PATH)/lib
LD = $(CC)
COMPILE = $(CC) $(CFLAGS) -c

# Compilation rules

all: initTracker  meanshift seqcons seqdes

#initTracker: initTracker.cpp
#	$(CC) -o $* $< $(CFLAGS) $(LDFLAGS)

backup:
	tar -czf backup.tgz meanshift.cpp colourModel.cpp colourModel.h initTracker.cpp CImg.h seqcons.cpp seqdes.cpp *.sh Makefile

seqcons: seqcons.o
	$(LD) $(LDFLAGS) $^ -o $@

seqcons.o: seqcons.cpp
	$(COMPILE) $< -o $@
	
seqdes: seqdes.o
	$(LD) $(LDFLAGS) $^ -o $@

seqdes.o: seqdes.cpp
	$(COMPILE) $< -o $@

meanshift: colourModel.o  meanshift.o
	$(LD) $(LDFLAGS) $^ -o $@

meanshift.o: meanshift.cpp
	$(COMPILE) $< -o $@

initTracker : initTracker.o
	$(LD) $(LDFLAGS) $^  -o $@

initTracker.o : initTracker.cpp
	$(COMPILE) $< -o $@


colourModel.o:  colourModel.cpp colourModel.h
	$(COMPILE) $< -o $@


clean:
	rm *.o initTracker meanshift seqcons seqdes
