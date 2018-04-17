" LIGHTLINE {{{
let g:lightline = {
	\ 'colorscheme': 'cadet',
	\ 'tabline': {
	\   'left': [ [ 'tabs' ] ],
	\   'right': [ [ ] ],
	\ },
	\ 'active': {
	\	'left': [ ['mode'],
	\             ['filename', 'readonly', 'modified', 'fugitive']
	\   ],
	\	'right': [ ['lines'],
	\              ['syntax', 'time'] 
	\   ],
	\ },
	\ 'component': {
	\	'mode': '%{LightlineMode()}',
	\   'filename': '%{LightlineFilename()}',
	\   'readonly': '%{&readonly?"\ue0a2":""}',
	\   'lines': '%l/%L',
	\   'syntax': '%{LightlineSyntax()}',
	\   'fugitive': '%{LightlineFugitive()}'
	\ },
	\ 'component_visible_condition': {
	\   'filename': 'LightlineFilename()!=""',
	\   'fugitive': '(exists("*fugitive#head()") && ""!=fugitive#head())',
	\   'syntax': 'LightlineSyntax()!=""'
	\ },
	\ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
	\ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
	\ }

function! LightlineFugitive()
	if exists("*fugitive#head()")
		let fh = fugitive#head()
		return strlen(fh) ? "\ue0a0 ".fh : ""
	endif
	return ""
endfunction

function! LightlineMode()
	let fname = expand("%:t")
	return fname == "NERD_tree" ? "NT" :
				\ lightline#mode() == "NORMAL" ? "N" :
				\ lightline#mode() == "INSERT" ? "I" :
				\ lightline#mode() == "VISUAL" ? "V" :
				\ lightline#mode() == "V-LINE" ? "V" :
				\ lightline#mode() == "V-BLOCK" ? "V" :
				\ lightline#mode() == "REPLACE" ? "R" :
				\ lightline#mode()
endfunction

function! LightlineSyntax()
	if &syntax ==# ""
		return "txt"
	endif
	return &syntax
endfunction

function! LightlineFilename()
	let p = expand("%:p")
	return p
	if p == $HOME
		return "~"
	endif
	if p != ""
		p = substitute(p, "^".$HOME, "~", "g")
	else
		p = expand("%:p:h")
	endif
	return substitute(p, "^".$HOME, "~", "g")
endfunction

" don't need to see the mode anymore, it's in our status bar!
set noshowmode
" }}}

" NERDTREE {{{
" manually open all directories, even ones that only contain a single directory
let NERDTreeCascadeSingleChildDir=0
let NERDTreeCascadeOpenSingleChildDir=0

" change current directory to whatever you select in NERDTree
let NERDTreeChDirMode=2

" automatically open when loading a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

nnoremap <Leader>nt :NERDTreeToggle<CR>
" }}}

" DEOPLETE {{{
" tab completion
inoremap <silent><expr> <TAB>
\ pumvisible() ? "\<C-n>" :
\ <SID>check_back_space() ? "\<TAB>" :
\ deoplete#mappings#manual_complete()
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" activate deoplete
call deoplete#enable()
" }}}

" DENITE {{{
nnoremap <Leader>o :Denite file_rec<CR>
nnoremap <Leader>O :vs <Bar> Denite file_rec<CR>

call denite#custom#map(
	\ 'insert',
	\ '<C-J>',
	\ '<denite:move_to_next_line>',
	\ 'noremap'
	\)
call denite#custom#map(
	\ 'insert',
	\ '<C-K>',
	\ '<denite:move_to_previous_line>',
	\ 'noremap'
	\)
"" }}}

" EASYALIGN {{{
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)
" }}}

" LEDGER {{{
let g:ledger_bin="/usr/bin/hledger"
" }}}

" FILETYPES {{{
au BufNewFile,BufRead *.ledger setf ledger | comp ledger
" }}}
