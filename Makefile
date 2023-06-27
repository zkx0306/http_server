http-server: main.o server.o
	gcc -Wall -o http-server main.o server.o -lm

main.o: main.c server.h
	gcc -Wall -o main.o main.c -c -g

server.o: server.c server.h
	gcc -Wall -o server.o server.c -c -g

clean:
	rm -f http-server