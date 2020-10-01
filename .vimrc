" Crafted with love by obayemi
" require a powerline font and a few other stuff


" be iMproved, required by Vundle
set nocompatible
filetype off " required by Vundle

set rtp+=~/.vim/plugged/vim-plug
call plug#begin('~/.vim/plugged')
" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

Plug 'junegunn/vim-plug'
Plug 'tpope/vim-fugitive' " git integration
Plug 'junegunn/gv.vim' " visual git integration (on top of fugitive)
Plug 'tpope/vim-repeat' " better .
Plug 'tpope/vim-abolish' " hard to explain...
Plug 'tpope/vim-surround' " magicaly change surrounding chars (i.e. [ to {
" plugin from http://vim-scripts.org/vim/scripts.html
Plug 'vim-scripts/L9' " library to do stuff, needed by a bunch of other stuff
Plug 'vim-scripts/ingo-library' " other lib to 'do stuff'

" Linters
"Plug 'scrooloose/syntastic.git' " syntax check, now ale is much better
Plug 'w0rp/ale' " magic fluid linter

" magic awesome completion, a pain in the ass to install (compilation and
" stuff)
"Plug 'valloric/youcompleteme', {'do': 'python install.py --ts-completer --go-completer --clang-completer --ninja'}
if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'zchee/deoplete-jedi'
Plug 'davidhalter/jedi-vim'
let g:jedi#completions_enabled = 0
Plug 'sebastianmarkow/deoplete-rust'
Plug 'pbogut/deoplete-elm'
Plug 'Shougo/deoplete-clangx'
"Plug 'pbogut/deoplete-elm'
Plug 'zchee/deoplete-go', { 'do': 'make'}
Plug 'eagletmt/neco-ghc'
Plug 'ternjs/tern_for_vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }


" Plug 'Vimjas/vim-python-pep8-indent' " neet indentation for python

Plug 'leafgarland/typescript-vim' " typescript syntax

" better status line + use powerline
" Plug 'vim-airline'
Plug 'itchyny/lightline.vim'

"Plug 'scrooloose/nerdtree.git' " File / folder tree (projecdt explorer sort of)
" Plug 'tpope/vim-vinegar' " file explorer 'kinda'
Plug 'scrooloose/nerdcommenter' " comment stuff

" use tab freneticaly when you feel you might have to and now it usually
" magically do what you want it to
" Plug 'ervandew/supertab'

"Plug 'altercation/vim-colors-solarized.git' " do I even...
"Plug 'google/vim-colorscheme-primary' " pls tell me I don't...
"Plug 'kien/ctrlp.vim.git' " ctrl + p to find any file
" current file tag bar 
Plug 'majutsushi/tagbar', {'on': ['TagbarToggle',]}
Plug 'jmcantrell/vim-virtualenv' " pretty self explanatory too
Plug 'PieterjanMontens/vim-pipenv'
" TODO: find sensible bindings before use
" Plug 'terryma/vim-multiple-cursors' " why would I even need that?

" latex compile, syntax, commands, stuff, also features vundle errors
"Plug 'LaTeX-Suite-aka-Vim-LaTeX'
" make % match most of the matching chars/strings syntaxes (<div>, {%, [, ...)
Plug 'vim-scripts/matchit.zip'
" use * to search for visually selected text
Plug 'nelstrom/vim-visual-star-search'

"Plug 'SearchComplete' " completion in '/' search
"Plug 'delimitMate.vim' " auto close braquets/quotes and stuff
Plug 'vim-scripts/closetag.vim' " autoclose xml tags with <C-_>

" snippets for vim, do not work so well with current config (and ycm)
Plug 'SirVer/ultisnips' " engine
Plug 'honza/vim-snippets' " actual snippets

" move in scm conflicts painful to use, check doc
"Plug 'ConflictMotions'
"Plug 'CountJump' " don't know what that does exactly, but well... ¯\_(ツ)_/¯
"Plug 'mileszs/ack.vim' " leader a to ack find strings in files
" git information in vim gutter (newlines, deleted, updated)
Plug 'airblade/vim-gitgutter'
" isolate regions of code leader nr to narrow visual selection
Plug 'chrisbra/NrrwRgn'

" because I'm a frigging masoshist
Plug 'wikitopian/hardmode', {'on': ['ToggleHardMode']}

" since vim is life now, why wasn't vim manpager yet?
Plug 'lambdalisue/vim-manpager'
"Plug 'nhooyr/neoman.vim' "vim-plug

" Plug 'dylanaraps/wal'

"Plug 'dbsr/vimpy'
Plug 'metakirby5/codi.vim', {'on': ['Codi']}
" Plug 'ramele/agrep' " replaced by ag and ctrsf
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'dracula/vim'

Plug 'vim-scripts/colorizer' " highlight colors codes in code, like #FF0

" Plug 'mattn/emmet-vim' " do some magic with html
" Plug 'rename.vim' " explici enough

Plug 'posva/vim-vue' " enable syntax in vue
Plug 'evanleck/vim-svelte' " enable syntax in svelte
Plug 'elmcast/elm-vim' " enable syntax in elm

" Plug 'yuttie/comfortable-motion.vim' " self explanatory yet ?
" Plug 'godlygeek/tabular' " tabularize tabs (or maybe align content?)
" Plug 'mhinz/vim-startify' " start screen
Plug 'unblevable/quick-scope'     " highlights first available letters of aword to use f/t movement
"Plug 'roman/golden-ratio'
Plug 'AndrewRadev/splitjoin.vim'  " split / join long statements in multiple lines (gS / gJ)
" Plug 'junegunn/limelight.vim'
" Plug 'junegunn/goyo.vim'

Plug 'dyng/ctrlsf.vim'
"Plug 'wincent/command-t'


Plug 'itchyny/vim-cursorword'
Plug 'hotwatermorning/auto-git-diff'
"Plug 'itchyny/calendar.vim'
"Plug 'janko-m/vim-test'
"Plug 'skywind3000/asyncrun.vim'

Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

Plug 'ianks/vim-tsx'

Plug 'markonm/traces.vim'
Plug 'Lenovsky/nuake'


Plug 'dag/vim-fish'

"TODO
"https://github.com/majutsushi/tagbar


" All of your Plugins must be added before the following line
"call vundle#end()            " required
Plug 'dracula/vim'
call plug#end()

nnoremap <F4> :Nuake<CR>
inoremap <F4> <C-\><C-n>:Nuake<CR>
tnoremap <F4> <C-\><C-n>:Nuake<CR>

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" make YCM compatible with UltiSnips (using supertab)
" map ycm complete with/by ^n ^p, supertab magic binding do the rest
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:ycm_semantic_triggers = {
     \ 'elm' : ['.'],
     \}

let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" let g:SuperTabDefaultCompletionType = '<C-n>'
" " " (could have been) better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>" " figure someday how to make this work
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>" " ^
" UltiSnips triggering
let g:UltiSnipsExpandTrigger = '<C-j>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'


autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


" replaced
" if I decide to use jedi-vim again someday
"let g:jedi#show_call_signatures = "1"
"let g:jedi#use_splits_not_buffers = "left"
"let g:jedi#completions_enabled = 0
"autocmd FileType python setlocal completeopt-=preview

"let g:SuperTabDefaultCompletionType = "context"

set t_Co=256
" solarized theme with transparent background
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" let g:solarized_visibility='high'
" let g:solarized_contrast='high'
" set background=dark
" colorscheme solarized
"colorscheme primary
colorscheme dracula

" dynamic changing colorscheme
" colorscheme wal

" set completeopt=menuone,longest,preview
set omnifunc=syntaxcomplete#Complete

" use powerline fonts in vim arline
" set to 0 if not powerline symbols installed
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1
" lighline conf
set noshowmode
silent! set updatetime=300 timeout timeoutlen=500 ttimeout ttimeoutlen=50 ttyfast lazyredraw
let test#strategy = "asyncrun"
command! -bang -nargs=* -complete=file Make AsyncRun -program=make @ <args>
let test#python#djangotest#options = '-n'
augroup vimrc
    autocmd QuickFixCmdPost * botright copen 8
augroup END

"nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" cycle throug ale errors/warnings
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_linters = {
\   'typescript': ['tslint', 'tsserver'],
\}

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier']
let g:ale_fixers['typescript'] = ['prettier']
let g:ale_fixers['python'] = ['isort', 'black', ]
let g:ale_fixers['go'] = ['gofmt', ]
let g:ale_fixers['rust'] = ['rustfmt', ]
let g:ale_javascript_prettier_use_local_config = 1
let g:ale_fix_on_save = 1
let g:ale_rust_cargo_use_clippy = 1

let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#rust#racer_binary='/home/obayemi/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/obayemi/dev/rust/src'
let g:deoplete#sources#ternjs#types = 1
let g:deoplete#sources#ternjs#docs = 1
let g:deoplete#sources#ternjs#depths = 1
let g:deoplete#sources#ternjs#case_insensitive = 1
let g:deoplete#sources#ternjs#guess = 1


let g:tern#command = ["tern"]
let g:tern#arguments = ["—-persistent"]




let g:prettier#config#print_width = 99
let g:prettier#config#bracket_spacing = 'false'
let g:prettier#config#trailing_comma = 'es5'
let g:prettier#config#tabWidth = 4

" nnoremap <Leader>a :Ag<Space>
nnoremap <Leader>a :Ag<CR>

" now, that's a challenge !
"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" like challenge, but still a weak youg padawan
nnoremap <Leader>h :call ToggleHardMode()<CR>

nnoremap <leader>s :CtrlSF<CR>

" ignore node_modules in e.g. angular apps, django migrations
set wildignore+=node_modules,migrations

" set nocompatible
set relativenumber  " ruler line numbers relative to current line
set number " current line absolute line number in ruler

set cursorline " highlight cursor line 
highlight CursorLine cterm=bold ctermbg=NONE

set showcmd
set showmatch
set ruler
set visualbell
set scrolloff=3
set lazyredraw
set title

set ts=4 sw=4
autocmd FileType vue set shiftwidth=2

" better searchs
" highlight every occurences, enter to remove hl
" strict case if case present
set hlsearch
set incsearch
set smartcase
nnoremap <silent> <CR> :nohlsearch<CR><CR>

" set wildmenu

set autoindent
set expandtab
setlocal shiftwidth=2
setlocal tabstop=2
set backspace=indent,eol,start

" split with expected behaviour
set splitright
set splitbelow

set encoding=utf-8
set fileencoding=utf-8

set autoread


" no dirty swap files/backup files/ other stuf in the current folder
"set undodir=~/.vim/tmp/undo//     " undo files
"set backupdir=~/.vim/tmp/backup// " backups
"set directory=~/.vim/tmp/swap//   " swap files
"set backup                        " enable backups
set noswapfile                    " It's 2017, Vim.

set updatetime=1000


if has('mouse')
    set mouse="" " let me do my copy pasting please, mouse in vim is anoying anyway
endif

"
" use Q to reformat code
map Q gq
nmap <F8> :TagbarToggle<CR>
nmap <Leader>t :TagbarToggle<CR>

nmap <space> i
inoremap <S-CR> <Esc>
imap jj <Esc>
imap jk <Esc>


" shake things up, break bad habits, replaced by hardmode
" (not anymore)
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" set history=1000


" set hidden


" highlight text over 80th column
" set columns=80 " why ? why did I ever put something like that here ?

" augroup vimrc_autocmds
"     autocmd BufEnter * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"     autocmd BufEnter * match OverLength /\%80v.\+/
"     autocmd BufEnter * set modeline
" augroup END

" autocmd BufRead,BufNewFile *.js setlocal columns=99
" autocmd BufRead,BufNewFile *.js augroup vimrc_autocmds
"     autocmd BufEnter * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"     autocmd BufEnter * match OverLength /\%99v.\+/
"     autocmd BufEnter * set modeline
"e augroup END

" highlight trailing \s and stuff
set list


" why would I even need to set gvim's font oO
" set gfn=Consolas


" if &t_Co == 8 && $TERM !~# '^linux'
"     B
"     set t_Co=16
" endif
" 

" and to finish, of course
syn on

nmap <leader>f :Files<CR>
nmap <D-f> :Files<CR>

" Mapping selecting mappings
nmap <leader><tab> <plug>(fzf-maps-n)
xmap <leader><tab> <plug>(fzf-maps-x)
omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
imap <c-x><c-k> <plug>(fzf-complete-word)
imap <c-x><c-f> <plug>(fzf-complete-path)
imap <c-x><c-j> <plug>(fzf-complete-file-ag)
imap <c-x><c-l> <plug>(fzf-complete-line)

nnoremap <leader>jd :YcmCompleter GoTo<CR>

hi Normal guibg=NONE ctermbg=NONE
