AFL_FUZZ=${CURDIR}/../afl-2.33b/afl-fuzz
AFL_QEMU=${CURDIR}/../afl-2.33b/afl-qemu-trace

all: bin-weak bin-strong

bin-weak: test.c
	gcc -O0 $< -D COND_WEAK -o $@

bin-strong: test.c
	gcc -O0 $< -o $@

qemu:
	(cd ${CURDIR}/../afl-2.33b/qemu_mode/qemu-2.3.0 && make)

runafl-weak: bin-weak
	${AFL_QEMU} -d op $< ./input/input.txt 2>$<.tc
	${AFL_FUZZ} -i ${CURDIR}/input -o ${CURDIR}/output-weak -Q -- ${CURDIR}/$< @@

runafl-strong: bin-strong
	${AFL_QEMU} -d op $< ./input/input.txt 2>$<.tc
	${AFL_FUZZ} -i ${CURDIR}/input -o ${CURDIR}/output-strong -Q -- ${CURDIR}/$< @@

.phony: bin-weak bin-strong runafl-weak runafl-strong clean

clean:
	rm -rf bin-weak bin-strong output-weak output-strong
