CC = x86_64-w64-mingw32-gcc
#CC = i686-w64-mingw32-gcc
CFLAGS = -O2
LIBS = -mwindows

mirror.exe : mirror.o
	$(CC) $(LIBS) mirror.o -o mirror.exe

mirror.o : mirror.c
	$(CC) -c $(CFLAGS) mirror.c -o mirror.o

.PHONY : clean
clean :
	rm mirror.o mirror.exe
