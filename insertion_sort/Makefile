all: insertion_sort erl_insertion_sort

SRC = insertion_sort.c main.c
OBJ = $(addsuffix .o, $(basename $(SRC)))

CC = gcc
FLAGS = -Wall

# clear out all suffiex
.SUFFIXES:
.SUFFIXES: .o .c

.c.o :
	$(CC) $(FLAGS) -c $<

insertion_sort: $(OBJ)
	$(CC) $(FLAGS) -o ./bin/$@ $(OBJ)

erl_insertion_sort:
	erlc -o ./bin/ insertion_sort.erl

