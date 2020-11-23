CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=power.o
OBJECTS_BA=basicMath.o
FLAGS= -Wall -g

all:      libmyMath.so libmyMath.a mymaths mymathd

mymaths: $(OBJECTS_MAIN) libmyMath.a
	$(CC) $(FLAGS) -o mymaths $(OBJECTS_MAIN) libmyMath.a
mymathd: $(OBJECTS_MAIN) libmyMath.so
	$(CC) $(FLAGS) -o mymathd $(OBJECTS_MAIN) ./libmyMath.so
libmyMath.so: $(OBJECTS_LIB) $(OBJECTS_BA)
	$(CC) -shared -o libmyMath.so $(OBJECTS_LIB) $(OBJECTS_BA)
libmyMath.a: $(OBJECTS_LIB) $(OBJECTS_BA)
	$(AR) -rcs libmyMath.a $(OBJECTS_LIB) $(OBJECTS_BA)
basicMath.o: basicMath.c myMath.h  
	$(CC) $(FLAGS) -c basicMath.c
mains: libmyMath.a main.o  
	$(CC) $(FLAGS) -c main.c 
maind: libmyMath.so main.o  
	$(CC) $(FLAGS) -c main.c 
power.o: power.c myMath.h
	$(CC) $(FLAGS) -c power.c
main.o: main.c myMath.h  
	$(CC) $(FLAGS) -c main.c 
 

.PHONY: clean all

clean:
	rm -f mains maind libmyMath.so libmyMath.a 
	
	
