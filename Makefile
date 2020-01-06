c_jenkins_test:c_jenkins_test.c
	cc -o c_jenkins_test c_jenkins_test.c
.PHONY:clean
clean:
	-rm c_jenkins_test
