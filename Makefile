c_jenkins_test:main.c
	cc -o main main.c
.PHONY:clean
clean:
	-rm main
