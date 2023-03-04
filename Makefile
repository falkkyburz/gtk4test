all: run

gtk4test: gtk4test.c
	gcc `pkg-config --cflags gtk4` -o gtk4test gtk4test.c `pkg-config --libs gtk4`

run: gtk4test
	./gtk4test

clean:
	rm -f gtk4test.exe
