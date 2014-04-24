autocmd vimenter * if !argc() | NERDTree | endif

" Use gvim instead of vim if possible

let in_x11 = !empty($DISPLAY)
let is_text_vim = !has('gui_running')

if in_x11 && is_text_vim
	let ppid = system('ps -p ' . getpid() . ' -o ppid=')[:-2]
	let parent = system('ps -p ' . ppid . ' -o comm=')[:-2]

	let opts = ''
	if parent != 'bash'
		let opts = '--nofork'
	end

	call system('gvim ' . opts . ' ' . shellescape(@%))

	quit
endif
