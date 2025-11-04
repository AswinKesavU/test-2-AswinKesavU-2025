main.o: main.c student.h menu.h grade.h utils.h student.c menu.c utils.c grade.c
	gcc -c main.c student.h menu.h grade.h utils.h student.c menu.c utils.c grade.c

menu.o: menu.c menu.h grade.h utils.h utils.c grade.c
	gcc -c menu.c menu.h grade.h utils.h utils.c grade.c

student.o: student.c student.h
	gcc -c student.c student.h


utils.o: utils.c utils.h
	gcc -c utils.c utils.h
	

grade.o:grade.c grade.h
	gcc -c grade.c grade.h
	
makeapp: main.o student.o grade.o utils.o menu.o
	gcc main.o student.o utils.o menu.o grade.o -o main_app
clean:
	rm main.o student.o utils.o menu.o grade.o

run:
	./main_app

