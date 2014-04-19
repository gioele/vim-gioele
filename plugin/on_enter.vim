autocmd vimenter * if !argc() | NERDTree | endif

if $DISPLAY != ''
	if !has('gui_running')
		let ppid = system('ps -p ' . getpid() . ' -o ppid=')[:-2]
		let parent = system('ps -p ' . ppid . ' -o comm=')[:-2]

		let opts = ''
		if parent != 'bash'
			let opts = '--nofork'
		end

		call system('gvim ' . opts . ' ' . shellescape(@%))

		quit
	endif
endif
