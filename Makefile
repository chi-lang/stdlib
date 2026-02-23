compile:
	chi compile.chi

install: compile
	mkdir -p $(CHI_HOME)/lib
	cp std.chim $(CHI_HOME)/lib/std.chim

run:
	tmux send-keys -t1 chi ' ' main.chi Enter

