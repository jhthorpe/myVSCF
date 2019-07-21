buildir = ..
include $(buildir)/make.config

objects = xvho input.o gauss.o H.o V.o fname.o

all : $(objects)
	cp xvho $(bindir)/xvho

clean : 
	rm *.o *.mod

input.o : input.f90
	$(FC) $(FFLAGS) -c input.f90

gauss.o : gauss.f90
	$(FC) $(FFLAGS) -c gauss.f90

fname.o : fname.f90
	$(FC) $(FFLAGS) -c fname.f90

V.o : V.f90 fname.o input.o
	$(FC) $(FFLAGS) -c V.f90 fname.o input.o

H.o : H.f90 V.o
	$(FC) $(FFLAGS) -c H.f90 V.o

xvho : vho.f90 input.o gauss.o H.o V.o fname.o
	$(FC) $(FFLAGS) -o xvho vho.f90 input.o gauss.o H.o V.o fname.o
	