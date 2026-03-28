compile:
	chi compile.chi

install: compile
	@test -n "$(CHI_HOME)" || { echo "Error: CHI_HOME not set"; exit 1; }
	mkdir -p $(CHI_HOME)/lib
	cp std.chim $(CHI_HOME)/lib/std.chim

run:
	tmux send-keys -t1 chi ' ' main.chi Enter
