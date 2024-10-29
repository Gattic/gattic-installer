set nu
" enable 256 color in vim
set t_Co=256

" Set default color scheme
colors slate

" Indentation settings
set shiftwidth=4
set softtabstop=4

" Highlights the matching bracket or paren
set showmatch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent
set backspace=indent,eol,start

" Keep the same indent, if no file-specific indent is enabled
" Auto indent after opening brackets
set autoindent
set smartindent

" Cause backspace to function like it does in other programs
set backspace=2

" Stop certain movements from always going to the first char of a line
set nostartofline

" Display cursor position on the last line of the screen
set ruler

" Highlight the current line
set cursorline

" Always display the status line
set laststatus=2

" Enable syntax highlighting
filetype plugin on
syntax on

" To avoid old school shortcuts
set nocompatible

" To paste without indentation
"set paste

" Tab completion
set wildmode=longest,list

" Highlight search results
set hlsearch

" Clear searches
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" To display if file was saved
set laststatus=2
set statusline=[%n]\ %<%f%h%m

" To search for highlighted text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Redo last macro shortcut
map , @@

" Highlight line instead of underline
hi CursorLine term=bold cterm=bold
hi Search term=bold cterm=bold ctermfg=lightyellow ctermbg=red
set cursorcolumn
