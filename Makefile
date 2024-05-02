compile:
	chi compile.chi

run:
	tmux send-keys -t1 chi ' ' main.chi Enter

