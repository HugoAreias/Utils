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
nnoremap , :

" Color/Highlighting options
colorscheme molokai             " set molokai as the default color scheme
set cursorline                  " highlight current line
" highlight bg color of current line
hi cursorline guibg=#333333
" highlight cursor
hi CursorColumn guibg=#333333

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
" Linebreak on 80 characters
set lbr
set tw=80

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
set lazyredraw                  " Don't redraw while executing macros (good performance config)

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
