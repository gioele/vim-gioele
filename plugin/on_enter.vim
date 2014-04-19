autocmd vimenter * if !argc() | NERDTree | endif

if $DISPLAY != ''
	if !has('gui_running')
		call system('gvim ' . shellescape(@%))
		quit
	endif
endif
