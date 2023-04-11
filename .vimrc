set nocompatible
filetype plugin indent on
syntax on

" Miscellaneous settings
set number
set mouse=a
set encoding=utf-8
set autoread
set hidden
set laststatus=2
set autochdir
set noswapfile

" Indent stuff
set shiftwidth=4
set tabstop=4
set expandtab
set shiftround
set autoindent

" Colorscheme
colorscheme nord
set termguicolors
set background=dark

" Wild menu
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.xlsx,**/.git/**,**/__pycache__/**,**/node_modules/**,**/dist/**,**/build/**

" Basic mappings
inoremap jj <esc>
nnoremap <C-x> :bd<CR>
nnoremap <C-l> :bn<CR>
nnoremap <C-h> :bp<CR>

" Keybindings for NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" VimTeX
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
let g:vimtex_fold_enabled=1
let g:tex_conceal='abdmg'
set conceallevel=1

" Keybindings for common VimTeX commands
autocmd FileType tex nnoremap <C-k> :VimtexCompile<CR>
autocmd FileType tex nnoremap <C-t> :VimtexTocOpen<CR>

" RMarkdown
let g:pandoc#modules#disabled = ["folding", "spell"]
let g:pandoc#syntax#conceal#use = 0
autocmd FileType Rmd nnoremap <C-k> :RMarkdown<CR>

" Lightline config
let g:lightline = {
	\ 'colorscheme': 'nord',
	\ 'component': {
	\		'lineinfo': '%3l:%-2v', 
	\ },
	\ 'component_function': {
	\	 'gitbranch': 'FugitiveHead',
	\	 'readonly': 'LightlineReadonly'
	\ },
	\ 'separator': {
	\	'right': "\uE0BE",
	\	'left': "\uE0B8"
	\ },
	\ 'subseparator': {
	\	'right': '\uE0BF',
	\	'left': '\uE0BF'
	\ },
	\ 'component_type': {
    \   'buffers': 'tabsel'
	\ },
    \ 'tabline': {
    \   'left': [ ['buffers'] ],
    \   'right': [ [] ],
    \ },
    \ 'component_expand': {
    \  'buffers': 'lightline#bufferline#buffers'
    \ }
	\ }

" Show bufferline when there's 2+ buffers open
let g:lightline#bufferline#min_buffer_count = 2

" Goyo and Limelight
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_bop = '\(^\s*$\n\|^\s*%$\n\)\zs'
let g:limelight_eop = '\ze\(^$\|^\s*%$\)'
let g:limelight_priority = -1
let g:goyo_width = 68

" Automatically enter/leave limelight based on goyo
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

nnoremap <C-g> :Goyo<CR>

