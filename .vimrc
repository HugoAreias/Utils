" General options
filetype plugin indent on       " Automatically detect file types.
syntax on                       " syntax highlighting
set wildignore=*.o,*~,*.pyc     " ignore compiled files
set tabpagemax=15               " only show 15 tabs
set mouse=a                     " automatically enable mouse usage
set history=500                 " Store a ton of history (default is 20)
set encoding=utf8               " Set utf8 as standard encoding and en_US as the standard language
set autoread                    " Set to auto read when a file is changed from the outside
set laststatus=2                " Always show the status line
"let mapleader = ","             " With a map leader it's possible to do extra key combinations
"let g:mapleader = ","
" Making it so . works like : for commands. Saves typing and eliminates :W style typos due to lazy holding shift.
nnoremap . :

" Color/Highlighting options
colorscheme molokai             " set molokai as the default color scheme
set cursorline                  " highlight current line
" highlight bg color of current line
hi CursorLine guibg=#333333 ctermbg=lightred guifg=white ctermfg=white
" highlight cursor
hi CursorColumn guibg=#333333 guifg=white
hi Normal ctermfg=white ctermbg=black guifg=white
" darkening Function and Identifier background colour if any
hi Function guifg=white ctermfg=white guibg=black ctermbg=black
hi Identifier guifg=white ctermfg=white guibg=black ctermbg=black

" Ruler options
if has('cmdline_info')
    set ruler                   " show the ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " a ruler on steroids
    set showcmd                 " show partial commands in status line and
                                " selected characters/lines in visual mode
endif

" Indenting options
set nowrap                      " wrap long lines
set autoindent                  " indent at the same level of the previous line
set shiftwidth=4                " use indents of 4 spaces
set expandtab                   " tabs are spaces, not tabs
set smarttab                    " Be smart when using tabs
set tabstop=4                   " an indentation every four columns
set softtabstop=4               " let backspace delete indent
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
" Linebreak on 120 characters
set lbr
set tw=120

" Language options
set spelllang=en_gb             " setting the spell language as British
"set spell                       " spell checking on
" Pressing ,ss will toggle and untoggle spell checking
"map <leader>ss :setlocal spell!<cr>

" Search/Auto-complete/Window options
set backspace=indent,eol,start  " backspace for dummys
set linespace=0                 " No extra spaces between rows
set nu                          " Line numbers on
set showmatch                   " show matching brackets/parenthesis
set incsearch                   " find as you type search
set hlsearch                    " highlight search terms
set winminheight=0              " windows can be 0 line high 
set ignorecase                  " case insensitive search
set smartcase                   " case sensitive when uc present
set magic                       " For regular expressions turn magic on
set wildmenu                    " show list instead of just completing
set wildmode=list:longest,full  " command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " backspace and cursor keys wrap to
set scrolljump=5                " lines to scroll when cursor leaves screen
set scrolloff=3                 " minimum lines to keep above and below cursor
set foldenable                  " auto fold code
set gdefault                    " the /g flag on :s substitutions by default
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:. " Highlight problematic whitespace
set lazyredraw                  " don't redraw while executing macros (good performance config)

" Sound options
" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Tabs/Windows/Buffers options
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Select text inside a block
nnoremap % v%

" Shortcut to delete next word and trailing space
imap <C-D> jkdawi

" Auto-complete with <ESC>
inoremap <ESC> <C-N>

"Return to normal mode. If used on normal mode it will have no effect on the cursor position
inoremap jk <ESC>

" Reload Vim runtime configuration
" normal mode
nmap rel. :so $MYVIMRC<CR>
"insert mode
imap rel. jk:so $MYVIMRC<CR>

" Perl only configurations
" autocmd BufNewFile,BufRead *.pl,*.pm set filetype=perl " uncomment if filetype plugin not found
" auto-indent before saving file
" autocmd Filetype perl autocmd BufWritePre :normal! gg=G
" autocmd BufWritePre *.pl,*.pm :normal! gg=G``
imap <F3> jk:w<CR>
imap <F3> :silent !perl /usr/local/bin/perltidy -l=120 -b -bext='/' %<CR>
" Enable Perl syntax highlight for test files
autocmd BufNewFile,BufRead *.t set filetype=perl
" Hash separator helper
imap <C-L> <SPACE>=><SPACE>

" for block
"imap <buffer> ;fo <C-O>mzfor my $%%% (%%%) {<CR>%%%<CR>}<CR><C-O>;;
"imap <buffer> ;; <C-O>/%%%<CR><C-O>
"nmap <buffer> ;; /%%%<CR>

" if block
"imap <buffer> ;if <C-O>mzif (%%%) {<CR>%%%<CR>}<CR><C-O>;;

" Add custom vimfiles folder if has no permissions to edit the installation folder
"set rtpt=/Users/hugoareias/.vimrc

