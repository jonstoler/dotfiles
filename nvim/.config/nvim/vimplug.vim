call plug#begin()

" FUNCTIONALITY {{{
" all-in-one fuzzy finder
Plug 'Shougo/denite.nvim'

" automatically match quotes, braces, parens, etc
Plug 'Raimondi/delimitMate'

" expand and shrink visual selection
Plug 'terryma/vim-expand-region', {'on': ['<Plug>(expand_region_expand)', '<Plug>(expand-region_shrink)']}

" distraction-free writing
Plug 'junegunn/goyo.vim', {'on': 'Goyo'}
" line focus
Plug 'junegunn/limelight.vim', {'on': 'Limelight'}

" align your code!
Plug 'junegunn/vim-easy-align', {'on': ['EasyAlign', '<Plug>(EasyAlign)']}

" autocomplete
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}

" code snippets
Plug 'sirver/UltiSnips'

" easily comment and uncomment
Plug 'scrooloose/nerdcommenter'

" directory browser
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'} | Plug 'Xuyuanp/nerdtree-git-plugin'

" linting
Plug 'scrooloose/syntastic'

" show ctags
Plug 'majutsushi/tagbar', {'on': 'TagbarToggle'}

" statusline
Plug 'itchyny/lightline.vim'

" show git line status in gutter
Plug 'mhinz/vim-signify'

" add closing keywords to blocks
Plug 'tpope/vim-endwise'

" git plugin
Plug 'tpope/vim-fugitive'

" change grouping symbols
Plug 'tpope/vim-surround'

" show matching parentheses
Plug 'chreekat/vim-paren-crosshairs'

" show marks in gutter
Plug 'kshenoy/vim-signature'

" unix plugin
Plug 'tpope/vim-eunuch'

" show matches for movements
Plug 'deris/vim-shot-f'

" quick preview for pasting and macros
Plug 'junegunn/vim-peekaboo'

" interactively browse undo tree
Plug 'mbbill/undotree', {'on': 'UndoTreeToggle'}

" pretty file icons
Plug 'ryanoasis/vim-devicons'

" taken from http://vim.wikia.com/wiki/Learn_to_use_help
Plug '$HOME/.config/nvim/my-plug/help-navigation'

" }}}

" COLORSCHEMES {{{
Plug '$HOME/.config/nvim/my-plug/base16-cadet'
Plug '$HOME/.config/nvim/my-plug/lightline-themes'
" }}}

" LANGUAGES {{{
Plug 'arrufat/vala.vim', {'for': 'vala'}
Plug 'lluchs/vim-wren', {'for': 'wren'}
Plug 'rhysd/vim-crystal', {'for': 'cr'}
Plug 'jonstoler/vim-undoc', {'for': 'undoc'}
Plug 'ledger/vim-ledger', {'for': ['journal', 'ledger', 'j']}
" }}}

call plug#end()
