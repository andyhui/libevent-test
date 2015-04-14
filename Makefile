CC=g++
CFLAGS=
INCLUDE=
LIBS=

all: server client midserver midclient highclient highserver

server: EasyLibeventServer.o
	$(CC) -o $@ $^ -levent
client: EasyLibeventClient.o
	$(CC) -o $@ $^ -levent
midserver: MidLibeventServer.o
	$(CC) -o $@ $^ -levent
midclient: MidLibeventClient.o
	$(CC) -o $@ $^ -levent
highserver: HighLibeventServer.o
	$(CC) -o $@ $^ -levent
highclient: HighLibeventClient.o
	$(CC) -o $@ $^ -levent


clean:
	rm -f core *.o server client midclient midserver highclient highserver
wc:
	wc *.[ch]

