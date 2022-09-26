.PHONY: all clean

all: labyrinth
main.o: queue.h
	gcc -Wall -Wextra -Wno-implicit-fallthrough -std=c17 -O2 -c main.c
parser.o: parser.h
	gcc -Wall -Wextra -Wno-implicit-fallthrough -std=c17 -O2 -c parser.c
queue.o: queue.h
	gcc -Wall -Wextra -Wno-implicit-fallthrough -std=c17 -O2 -c queue.c
labyrinth: main.o parser.o queue.o
	gcc -Wall -Wextra -Wno-implicit-fallthrough -std=c17 -O2  -o labyrinth main.o parser.o queue.o
clean:
	rm -f *.o labyrinth
