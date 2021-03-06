" Basic settings

set backspace=2 " Make backspace work like most other programs

" Remove the need for a swap file, (.swp)
set noswapfile
set nobackup
set nowritebackup

set history=50
set ruler           " Show the cursor positon all the time
set showcmd         " Show incomplete commands
set incsearch       " Do incremental searching
set hlsearch        " Highlight search result
" clear the highlighted search result
nmap <leader>h :nohlsearch<cr>
set ignorecase      " Set search to ignore case
set smartcase       " Overrides ignore case if pattern has case
set laststatus=2    " Always display the status line
set autowrite       " Automatically :write before running commands
set nowrap
set autoindent
set smartindent
set number
set numberwidth=5
set relativenumber
set mouse=a

" Switch syntax highlighting on.
" Also switch on highlightinh the last used search pattern.
if (&t_Co > 2 || has("gui_running")) && !exists("syntax_on")
  syntax on
endif

" Turn on file type detection
filetype on
filetype indent on
filetype plugin on

" Softtabs, 2 spaces
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

" Folding settings
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=1
set foldcolumn=0

" Textmate like set invisibles.
" ctrl-v u25b8 for ▸ and ctrl-v u00ac for ¬
set listchars=tab:·\ ,eol:¬
set list

" make sure editing like is always in the middle
set scrolloff=999

" Set the colorscheme
" set background=dark
set termguicolors
colorscheme base16-tomorrow-night
" highlight NonText guibg=#060606
" highlight Folded  guibg=#0A0A0A guifg=#9090D0
" set background transperent
hi Normal guibg=NONE ctermbg=NONE

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" Special markdown syntax
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'

" Set spell checker to .txt and .md files
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_us
autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_us

" Syntax highlighting for specific file types
autocmd BufRead, BufNewFile *.md set filetype=markdown
autocmd BufNewFile, BufRead *.ejs set filetype=html
autocmd BufNewFile, bufRead *.jsx set filetype=javascript

" Auto-pair
inoremap ( ()<Left>
inoremap (<cr> (<cr>)<Esc>O
inoremap () ()

inoremap [ []<Left>
inoremap [<cr> [<cr>]<Esc>O
inoremap [] []

inoremap { {}<Left>
inoremap {<cr> {<cr>}<Esc>O
inoremap {} {}

inoremap "  ""<Left>
inoremap "- "
inoremap '  ''<Left>
inoremap '- '

autocmd Syntax html,vim inoremap < <lt>><Left>

" Turn on limelight when in Goyo mode
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
