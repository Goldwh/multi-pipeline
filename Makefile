INC=-I/usr/local/include/CUnit

LIB=-L/usr/local/lib/

CFLAGS=-g

LDLIBS=`pkg-config --cflags --libs cunit`

SOURCE_FILE=func.c test_func.c run_test.c

TARGET=test


all: 
	gcc $(SOURCE_FILE) -o $(TARGET) $(INC) $(LIB) -lcunit
#	gcc $(SOURCE_FILE) -o $(TARGET) $(CFLAGS) $(LDLIBS)  

clean:
	rm -rf *.o test
