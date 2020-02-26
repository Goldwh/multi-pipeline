INC=-I/usr/local/include/CUnit
LIB=-L/usr/local/lib/

all: 
	gcc strformat.c testcase.c -o test $(INC) $(LIB) -lcunit
.PHONY: clean
clean:
	rm -rf *.o test
