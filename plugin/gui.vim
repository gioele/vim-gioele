if has('gui_running')
	" no toolbar
	set guioptions-=T
	set guifont=Monospace\ 12

	set columns=90 lines=40

	vmap <C-c> "+yi
	vmap <C-x> "+c
	vmap <C-v> c<ESC>"+p
	imap <C-v> <C-r><C-o>+
endif
