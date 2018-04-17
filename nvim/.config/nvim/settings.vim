colorscheme base16-cadet

" by default, base16 gives line numbers a background. let's get rid of that.
autocmd BufNewFile,BufRead * :hi LineNr guibg=#
autocmd BufNewFile,BufRead * :hi LineNr ctermbg=none

" use terminal colors
set t_Co=16

" show line numbers
set number
" but hide line numbers in terminal
autocmd TermOpen * setlocal nonumber norelativenumber
" highlight current line
set cursorline

" use mouse
set mouse=a

" scroll the screen a little before the bottom
set scrolloff=1

" smaller tabs
set tabstop=4
set shiftwidth=4
" automatically indent newlines
set smartindent
" align indentations
set shiftround

" don't refresh the screen when executing macros
set lazyredraw

" word wrap
set linebreak
" match indent level when wrapping
set breakindent
" show 80th column (80 + 3 for line numbers)
set colorcolumn=83

" case-insensitive, global search by default
set ignorecase gdefault
" hide searches after a simple move (or Space)
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
nnoremap <silent>h :nohlsearch<Bar>:echo<CR>h
nnoremap <silent>j :nohlsearch<Bar>:echo<CR>j
nnoremap <silent>k :nohlsearch<Bar>:echo<CR>k
nnoremap <silent>l :nohlsearch<Bar>:echo<CR>l

" persistent undo
set undofile

" automatically backup files
set backup
" centralize backups, swapfiles, and undo history
set backupdir=$HOME/var/nvim/backup
set directory=$HOME/var/nvim/swap
if exists("&undodir")
	set undodir=$HOME/var/nvim/undo
endif

" snappier key combos
set timeoutlen=500

" shorten status messages
set shortmess=aI

" only insert one space after punctuation when joined
set nojoinspaces

" always show completion popup and show extra information about completion items
set completeopt=menuone,preview
