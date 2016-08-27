
all: bin-weak bin-strong

bin-weak: test.c
	gcc -O0 $< -D COND_WEAK -o $@

bin-strong: test.c
	gcc -O0 $< -o $@

runafl-weak: bin-weak
	${CURDIR}/../afl-2.33b/afl-fuzz -i ${CURDIR}/input -o ${CURDIR}/output-weak -Q -- ${CURDIR}/$< @@

runafl-strong: bin-strong
	${CURDIR}/../afl-2.33b/afl-fuzz -i ${CURDIR}/input -o ${CURDIR}/output-strong -Q -- ${CURDIR}/$< @@

.phony: bin-weak bin-strong runafl-weak runafl-strong clean

clean:
	rm -rf bin-weak bin-strong output-weak output-strong
