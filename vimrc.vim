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

" Search results centered please
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz

nnoremap <C-q> <Esc>
inoremap <C-q> <Esc>
vnoremap <C-q> <Esc>
snoremap <C-q> <Esc>
xnoremap <C-q> <Esc>
cnoremap <C-q> <C-c>
onoremap <C-q> <Esc>
lnoremap <C-q> <Esc>
tnoremap <C-q> <Esc>

