# Makefile for Student Management System

objs = main.o menu.o grade.o student.o utils.o

manage: $(objs)
	cc -o manage $(objs)

%.o: %.c
	cc -c $< -o $@

run: manage
	./manage

clean:
	rm -f *.o manage

.PHONY: clean run

