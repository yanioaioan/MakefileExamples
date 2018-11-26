TARGET = prog
$(TARGET): main.o libA.a
	gcc $^ -o $@
main.o:	 main.c
	gcc -c $< -o $@
libA.a: libA.o 
	ar rcs $@ $^
libA.o: libA.c libA.h
	gcc -c -o $@ $<
clean:
	rm -f *.o *.a $(TARGET)

