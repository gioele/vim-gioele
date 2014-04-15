" Make Vim paths compatible with XDG Base Directory spec

if isdirectory($HOME . '/.cache/vim/swap') == 0
	silent !mkdir -p ~/.cache/vim/swap >/dev/null 2>&1
endif
set directory=~/.cache/vim/swap//

if isdirectory($HOME . '/.cache/vim/backup') == 0
	silent !mkdir -p ~/.cache/vim/backup >/dev/null 2>&1
endif
set backupdir=~/.cache/vim/backup//

" viminfo stores the the state of your previous editing session
set viminfo+=n~/.cache/vim/info

if exists("+undofile")
	if isdirectory($HOME . '/.cache/vim/undo') == 0
		silent !mkdir -p ~/.cache/vim/undo > /dev/null 2>&1
	endif
	set undodir=~/.cache/vim/undo//
	set undofile
	set undolevels=1000
	set undoreload=10000
endif
