syntax on
filetype on
filetype plugin on
filetype indent on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set bs=2

set autoindent
set smartindent

set nohlsearch
set incsearch
set ignorecase
set smartcase

if has("gui_running")
	set transparency=5
	set guioptions-=T
else
	set t_Co=256
endif

" set shortmess=atI
set ruler
set scrolloff=3
set wildmenu
set wildmode=list:longest
set hidden
set pastetoggle=<F2>
set mouse=a

nnoremap ' `
nnoremap ` '
map <F1> <esc>
nnoremap <Tab> w

" taglist plugin settings
nnoremap <silent> <F5> :TlistToggle<CR>
let tlist_php_settings = 'php;c:class;f:function;c:constant'
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
"
" :autocmd BufRead *.php set tags=$HOME/ivacy-tags
autocmd BufRead,BufNewFile *.tpl source $VIMRUNTIME/ftplugin/html.vim
autocmd FileType html,php,smarty,eruby source ~/.vim/scripts/closetag.vim
autocmd FileType smarty source $VIMRUNTIME/macros/matchit.vim
autocmd BufRead,BufNewFile *.rb set filetype=ruby
"
autocmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

if strlen ( finddir ('~/.vim-tmp' )  ) == 0
	silent execute '!mkdir ~/.vim-tmp'
endif

set directory=~/.vim-tmp
"

" colorscheme desert256
" colorscheme railscasts
colorscheme xoria256

