####################################################
# Students' Makefile for the 18-600 Architecture Lab
####################################################

CC = gcc
CFLAGS = -Wall -Werror -Wno-unused-parameter -O1 -std=gnu99
CPPFLAGS = -I/afs/cs.cmu.edu/academic/class/18600-f18/gem5/include/

GEM5 = /afs/cs.cmu.edu/academic/class/18600-f18/gem5/

M5OPS_S = $(GEM5)/util/m5/m5op_x86.S
M5OPS_O = m5ops.o

MMOBJ = mm.o
DAXOBJ = daxpy.o
MODEXPOBJ = modexp.o
TREEOBJ = tree.o avl.o
SIMPLEOBJ = simple.o

all: simple mm daxpy tree modexp sim

$(M5OPS_O): $(M5OPS_S)
	$(CC) $(CFLAGS) $(CPPFLAGS) -c -o $(M5OPS_O) $(M5OPS_S)

mm: $(MMOBJ) $(M5OPS_O)
	$(CC) $(CFLAGS) -o mm $(MMOBJ) $(M5OPS_O)

daxpy: $(DAXOBJ) $(M5OPS_O)
	$(CC) $(CFLAGS) -o daxpy $(DAXOBJ) $(M5OPS_O)

modexp: $(MODEXPOBJ) $(M5OPS_O)
	$(CC) $(CFLAGS) -o modexp $(MODEXPOBJ) $(M5OPS_O)

tree: $(TREEOBJ) $(M5OPS_O)
	$(CC) $(CFLAGS) -o tree $(TREEOBJ) $(M5OPS_O)

simple: $(SIMPLEOBJ) $(M5OPS_O)
	$(CC) $(CFLAGS) -o simple $(SIMPLEOBJ) $(M5OPS_O)

sim:
	(test -d sim || tar xf sim.tar; cd sim; make)

# Use this rule to hand in the lab ("make handin")
handin:
	rm -rf arclab-handin
	rm -rf arclab-handin.tar
	mkdir arclab-handin
	cp -p sim/misc/sum.ys arclab-handin
	cp -p sim/misc/rsum.ys arclab-handin
	cp -p sim/misc/copy.ys arclab-handin
	cp -p sim/pipe/ncopy.ys arclab-handin
	cp -p o3_configs.py arclab-handin
	cp -p simple.c arclab-handin
	#cp -p gem5/mm.c arclab-handin
	#cp -p gem5/daxpy.c arclab-handin
	#cp -p o3_mm.py arclab-handin
	#cp -p o3_daxpy.py arclab-handin
	#cp -p o3_star.py arclab-handin
	tar -czvf arclab-handin.tar arclab-handin

clean:
	rm -rf *~ *.o arclab-handin arclab-handin.tar mm daxpy simple \
		tree modexp

rmgem:
	rm -rf out
	rm -rf m5out

avl.o: avl.c avl.h

%.o: %.c
	$(CC) $(CFLAGS) $(CPPFLAGS) -c $< -o $@

