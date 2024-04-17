" set header title for journal & enter writing mode
function! JournalMode()
	execute 'normal gg'
	let filename = '#' . ' ' . expand('%:r')
	call setline(1, filename)
endfunction

augroup journal
	autocmd!
	" populate journal template
	autocmd VimEnter */journal/** 0r ~/.config/nvim/journal.skeleton
	" set header for the particular journal
	autocmd VimEnter */journal/** :call JournalMode()

augroup END

