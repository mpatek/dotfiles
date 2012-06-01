filetype off
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

set sw=4
set ts=4
set sts=4
set et
set sta
set number
set ignorecase
colorscheme torte

set nobackup
set noswapfile

set foldmethod=indent
set foldlevel=99

map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

map <leader>td <Plug>TaskList
map <leader>g :GundoToggle<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>
map <Leader>mg :call MakeGreen()<CR>

" Execute the tests
nmap <silent><Leader>tf <Esc>:Pytest file<CR>
nmap <silent><Leader>tc <Esc>:Pytest class<CR>
nmap <silent><Leader>tm <Esc>:Pytest method<CR>
" cycle through test errors
nmap <silent><Leader>tn <Esc>:Pytest next<CR>
nmap <silent><Leader>tp <Esc>:Pytest previous<CR>
nmap <silent><Leader>te <Esc>:Pytest error<CR>

nmap <leader>a <Esc>:Ack!

syntax on
filetype on
filetype plugin indent on

let g:pyflakes_use_quickfix = 0
let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"
set completeopt=menuone,longest,preview

let g:pydoc_perform_mappings = 1
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

set statusline=%t "tail of the filename
set statusline+=%m "modified flag
set statusline+=%r "read only flag
set statusline+=%y "filetype
set statusline+=%{fugitive#statusline()} "git status
set statusline+=%= "right/left separator
set statusline+=%c, "cursor column
set statusline+="%l/%L "cursor line/total lines
set statusline+=\ %P "percent through file

autocmd FileType python compiler pylint
