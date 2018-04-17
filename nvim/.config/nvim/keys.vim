" change leader to space
let mapleader="\<Space>"
let g:mapleader="\<Space>"

" retain cursor position after exiting insert mode
inoremap <silent> <Esc> <Esc>`^
inoremap <silent> <i> <i>`^

" escape neovim terminals!
tnoremap <Esc> <C-\><C-n>

" tab/shift-tab to indent/outdent
nnoremap <silent><S-Tab> <<
nnoremap <silent><Tab> >>

" use pipe to run shell commands
vmap <Bar> :!
vmap <Leader><Bar> :w !

" use arrow keys to adjust numbers
nnoremap <Up> <C-A>
nnoremap <Right> <C-A>
nnoremap <Down> <C-X>
nnoremap <Left> <C-X>

" evenly space splits
nnoremap <Leader>= <C-W>=
" use leader + hjkl to switch active split
nnoremap <Leader>h <C-W>h
nnoremap <Leader>j <C-W>j
nnoremap <Leader>k <C-W>k
nnoremap <Leader>l <C-W>l
" use leader + w instead of ctrl+w for splits
nnoremap <Leader>w <C-W>

" leader + r to toggle relative numbers
nnoremap <Leader>r :set relativenumber!<CR>

" close file
nnoremap <Leader>x :x<CR>
" save file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>W :w!<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>S :w!<CR>

" open new tab
nnoremap <Leader>t :tabnew<CR>

" kakoune-style piping
vmap <Bar> :!
vmap <Leader><Bar> :w !
