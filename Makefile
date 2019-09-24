CC = gcc
exe=reverse_test reverse_const

%.o:%.c
	$(CC) -c $^ -o $@

all: reverse.o reverse_const.o
	$(CC) -o reverse reverse.o
	$(CC) -o reverse_const reverse_const.o

reverse_test:
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 1000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 2000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 3000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 4000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 5000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 6000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 7000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 8000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 9000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse 10000

const_test:
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 1000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 2000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 3000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 4000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 5000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 6000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 7000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 8000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 9000
	sudo perf stat --repeat 5 -e instructions,cycles ./reverse_const 10000

.PHONY: clean
clean:
	@echo "Clean..."
	-rm -rf *.o $(exe)
