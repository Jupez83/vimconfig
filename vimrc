" Configuration file for Vi Improved, save as ~/.vimrc to use.

" general settings
set nocompatible " disable compatible mode
set autowrite " autosave when changing buffer or making
set hidden " buffer becomes hidden when it is abandoned
set history=100 " size of command history
set wildmenu " better command-line completion

" display settings
set encoding=utf-8 " encoding used for displaying file
"set ruler " show the cursor position all the time
set linebreak " without this words are breaking halfways if wrap is on 
set list " list hidden characters
set number " show line numbers
set showcmd " show partial commands in the last line of the screen
set showmatch " highlight matching braces
set showmode " show insert/replace/visual mode
set sidescroll=5 " the minimal number of columns to scroll horizontally
set title " set screen title
set nowrap " line breaking
set t_md= " disable bold text

" write settings
set confirm " confirm :q in case of unsaved changes
"set fileencoding=utf-8 " encoding used when saving file
set nobackup " do not keep the backup~ file
set noswapfile " disable swap files

" edit settings
set autoindent " indenting source code
set backspace=indent,eol,start " backspacing over everything in insert mode "set expandtab " fill tabs with spaces
set mouse=a " enable mouse 
"set nojoinspaces " no extra space after '.' when joining lines
set notimeout ttimeout ttimeoutlen=200 " quickly time out on keycodes, but never time out on mappings
set shiftwidth=4 " set indentation depth to 4 columns
"set softtabstop=4 " backspacing over 4 spaces like over tabs
set tabstop=4 " set tabulator length to 4 columns
"set textwidth=80 " wrap lines automatically at 80th column

" search settings
set hlsearch " highlight search results
set ignorecase " do case insensitive search...
"set incsearch " do incremental search
"set smartcase " ...unless capital letters are used

" file type specific settings
filetype on " enable file type detection
filetype plugin on " load the plugins for specific file types
filetype indent on " automatically indent code

" syntax highlighting
colorscheme monokai " set color scheme, must be installed first
syntax enable " enable syntax highlighting
set background=dark " dark background for console
set cursorline " highlight current line

" characters for displaying non-printable characters
set listchars=eol:$,tab:.–,trail:.,nbsp:_,extends:+,precedes:+

" tuning for gVim only
if has('gui_running')
endif

" general key mappings
let mapleader = " "
set pastetoggle=<F2>
map <Leader>r :source ~/.vimrc<CR>
map <Leader>c :bp\|bd #<CR>
map <Leader>w :w<CR>
map <Leader>s :sh<CR>
map <C-J> :bnext<CR>
map <C-K> :bprev<CR>
map <C-L> :tabn<CR>
map <C-H> :tabp<CR>
cmap w!! w !sudo tee > /dev/null %
imap jj <Esc> 

" plugin specific settings

" Enable Pathogen
execute pathogen#infect()

" Airline statusbar
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='luna'
"let g:airline_theme='monochrome'
let g:airline_powerline_fonts = 1

" The NERD tree
map <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeChDirMode = 2

" Nerd commenter
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Show bookmarks on startup 
let g:NERDTreeShowBookmarks = 1

vmap <silent><Leader>7 <Plug>NERDCommenterToggle$

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_working_path_mode = 'rw'

" Tagbar
nmap <Leader>t :TagbarToggle<CR>=
let g:tagbar_type_php  = {
  \ 'ctagstype' : 'php',
  \ 'kinds'     : [
	  \ 'i:interfaces',
	  \ 'c:classes',
	  \ 'd:constant definitions',
	  \ 'f:functions',
	  \ 'j:javascript functions:1'
  \ ]
\ }
