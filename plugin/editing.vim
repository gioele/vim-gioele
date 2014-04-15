" encoding
set encoding=utf8
set fileencodings=
set display+=uhex

" visual style
set nowrap
"set number

" search behaviour
set scrolloff=4
set ignorecase
set smartcase

" tab-key behaviour
set tabstop=8
set noexpandtab

" use X11 system clipboard to copy/paste
" see http://vim.wikia.com/wiki/Accessing_the_system_clipboard
if has('xterm_clipboard')
	set clipboard=unnamedplus
endif
