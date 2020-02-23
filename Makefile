INC=-I/usr/local/include/CUnit
LIB=-L/usr/local/lib/

all: strformat.c testcase.c
	gcc -o test $(INC) $(LIB) $^ -lcunit -static
.PHONY: clean
clean:
	rm -rf *.o test
