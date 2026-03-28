COMPILER_RESOURCES := ../compiler/src/main/resources

compile:
	chi compile.chi

install: compile install-runtime

install-runtime:
	mkdir -p $(CHI_HOME)/lib
	cp std.chim $(CHI_HOME)/lib/std.chim
	cp $(COMPILER_RESOURCES)/utf8.lua $(CHI_HOME)/lib/utf8.lua
	cp $(COMPILER_RESOURCES)/chistr.lua $(CHI_HOME)/lib/chistr.lua
	cp $(COMPILER_RESOURCES)/chi_runtime.lua $(CHI_HOME)/lib/chi_runtime.lua

run:
	tmux send-keys -t1 chi ' ' main.chi Enter
