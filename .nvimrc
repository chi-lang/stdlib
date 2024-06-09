nnoremap <C-f> :w<CR> :!tmux send-keys -t1 chi ' ' % Enter<CR>
inoremap <C-f> <ESC>:w<CR> :!tmux send-keys -t1 chi ' ' % Enter<CR>
nnoremap <C-g> :w<CR> :!tmux send-keys -t1 make Enter<CR>

au BufNewFile,BufRead *.chi set syntax=rust
