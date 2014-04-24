" key bindings

" swap v and CTRL-V, because Block mode is more useful that Visual mode
nnoremap    v   <S-V>
nnoremap <S-V>     v

vnoremap    v   <S-V>
vnoremap <S-V>     v

" open a new terminal on Ctrl-Shift-N
map  <C-S-N>      :call system('x-terminal-emulator')<CR>
imap <C-S-N> <C-O>:call system('x-terminal-emulator')<CR>
