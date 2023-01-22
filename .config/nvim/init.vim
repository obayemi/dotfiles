let mapleader = " "
call plug#begin()

" plug
Plug 'junegunn/vim-plug'  " plugin manager

" git
Plug 'tpope/vim-fugitive'  " git integration
Plug 'junegunn/gv.vim'  " visual git integration (on top of fugitive)
Plug 'airblade/vim-gitgutter'  " git integration in gutter

" vim enhancements
Plug 'tpope/vim-repeat'  " better .
Plug 'tpope/vim-surround'  " wrapping magic
Plug 'vim-scripts/matchit.zip'  " more inclusive '%' match (e.g. xml tags)
Plug 'nelstrom/vim-visual-star-search'  " star search from visual selection
Plug 'vim-scripts/closetag.vim'  " autoclose xml tags with <C-_>
Plug 'scrooloose/nerdcommenter'  " comment stuff
Plug 'unblevable/quick-scope'  " highlights first available letters of a word to use f/t movement
Plug 'itchyny/vim-cursorword'  " underlines word under cursor

" fuzzy find
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dyng/ctrlsf.vim'
Plug 'ctrlpvim/ctrlp.vim'

" lsp / lint
Plug 'dense-analysis/ale'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" misc
Plug 'metakirby5/codi.vim', {'on': ['Codi']}

" beautify
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim'
Plug 'vim-scripts/colorizer' " highlight colors codes in code, like #FF0

call plug#end()


set number
colorscheme dracula



" lint/fix/completion
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'rust': ['rustfmt',]
\}
let g:ale_completion_enabled = 1
set omnifunc=ale#completion#OmniFunc
let g:ale_fix_on_save = 1
" cycle throug ale errors/warnings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" fuzzy finding
nnoremap <Leader>a :Ag<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>s :CtrlSF<CR>
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -c --exclude-standard --recurse-submodules | grep -x -v "$( git ls-files -d --exclude-standard )" ; git ls-files -o --exclude-standard', 'find %s -type f' ]

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

nmap <space> i
inoremap <S-CR> <Esc>
imap jj <Esc>
imap jk <Esc>

set cursorline " highlight cursor line-
highlight CursorLine cterm=bold ctermbg=NONE

hi Normal guibg=NONE ctermbg=NONE

set autoread
set noswapfile
set splitright
set splitbelow
set autoindent
set expandtab
setlocal shiftwidth=2
setlocal tabstop=2
set backspace=indent,eol,start
set scrolloff=3

set hlsearch
set incsearch
set smartcase
nnoremap <silent> <CR> :nohlsearch<CR><CR>
