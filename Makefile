CC = x86_64-w64-mingw32-gcc
CFLAGS = -O2 -mwindows

mirror.exe : mirror.c
	$(CC) $(CFLAGS) mirror.c -o mirror.exe

.PHONY : clean
clean :
	rm mirror.exe
