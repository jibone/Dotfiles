" Key Mappings

" Use jk or kj to exit insert mode and save
" the file.
imap jk <esc>:w<cr>l
imap kj <esc>:w<cr>l
imap <C-s> <esc>:w<cr>

" Move up and down by visible lines if current line is wrapped
nmap j gj
nmap k gk

" Tab shortcuts
""nmap <leader>tx :tabnew<cr>:Ex<cr>
""nmap <leader>tt :tabnew<cr>
""nmap <leader>tf :tabfirst<cr>
""nmap <leader>tn :tabnext<cr>
""nmap <leader>tp :tabprev<cr>
""nmap <leader>tc :q<cr>
nmap <tab> :tabnext<cr>
nmap <S-tab> :tabprev<cr>

" Splits shortcuts
nmap <leader>vs :vsplit<cr>
nmap <leader>ss :split<cr>

" Quicker window movement
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Make 0 to move to the first word in the begining of the line
nmap 0 0w

" Buffers shortcut
nmap <leader>] :bn<cr>
nmap <leader>[ :bp<cr>

" Moving lines and code up and down
" In visual mode, Select block, Shift-j and Shift-k will move block up and down.
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

" Shift line up and down normal mode single line
nnoremap <S-k> :m-2<CR>
nnoremap <S-j> :m+<CR>
""inoremap <S-k> <Esc>:m-2<CR>
""inoremap <S-j> <Esc>:m+<CR>

" Search word selected in visual mode
vnoremap // y/<C-R>"<CR>

" Search selected text in visual mode in code base
vnoremap <leader>ag y :Ag <C-R>"<CR>

" Search selected text in visual mode in code base and specify path
vnoremap <leader>sg y :Ag <C-R>"
