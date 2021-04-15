FUNCS_DIR=${PWD}
INC_DIR=${PROJ_DIR}/include
BIN_DIR=${PROJ_DIR}/bin
BUILD_DIR=${PROJ_DIR}/build

OBJS= ${BUILD_DIR}/foo.o ${BUILD_DIR}/goo.o ${BUILD_DIR}/myapp.o

.SUFFIXES: .o .c

all: ${BIN_DIR}

${BIN_DIR}/myapp: ${OBJS}
        gcc -o ${BIN_DIR}/myapp ${OBJS}

${BUILD_DIR}/%.o: ${SRC_DIR}/%.c
	gcc -c $< -I${INC_DIR} -o $@

#
#./build/foo.o: ./src/foo.c
#        gcc -c ./src/foo.c -I./include -o ./build/foo.o
#
#./build/goo.o: ./src/goo.c
#        gcc -c ./src/goo.c -I./include -o ./build/goo.o
#
#./build/myapp.o: ./src/myapp.c
#        gcc -c ./src/myapp.c -I./include -o ./build/myapp.o

clean:
	rm ${BUILD_DIR}/*.o
	rm ${BIN_DIR}/*
