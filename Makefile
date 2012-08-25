CC=g++

CFLAGS=-g -Wall -pedantic
    #-ansi -pedantic -Wall -W -Wconversion -Wshadow -Wcast-qual -Wwrite-strings
LDFLAGS= 
LIBS= -lpcap -levent -lpthread

SOURCES=conmon.cc

HEADERS=$(wildcard *.h)

OBJECTS=$(SOURCES:.c=.o)

TARGET=conmon

all: $(SOURCES) $(TARGET) $(HEADERS)

$(TARGET): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@ $(LIBS)

%.o:%.cpp
	$(CC) $(CFLAGS) $(X) -c $< -o $@

clean:
	@rm -rf *.o
	@rm -rf *~
