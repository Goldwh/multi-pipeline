IINC=-I/usr/local/include/CUnit
LIB=-L/usr/local/lib/

all:  strformat.c testcase.c
    cc -o test $(INC) $(LIB)  $^ -lcunit -static
.PHONY:clean
clean:
	-rm main
