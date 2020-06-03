"" general setting
let mapleader=" "
syntax on
set number
set norelativenumber
set cursorline
set cursorcolumn
set wrap
set showcmd
set wildmenu

set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

""  general setting
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
"" let &t_SI = \<Esc>]50;CursorShape=1\x7"
"" let &t_SR = \<Esc>]50;CursorShape=2\x7"
"" let &t_EI = \<Esc>]50;CursorShape=0\x7"
set laststatus=2
set autochdir
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

"" shotcut function
noremap <LEADER><CR> :nohlsearch<CR>
map s <nop>
map Q :wq<CR>
map S :w<CR>
map R :source /home/leo/.config/nvim/init.vim<CR>
map ; :

"" key noremap
noremap h i
noremap i k
noremap k j
noremap j h
noremap I 5k
noremap K 5j
noremap J 7h
noremap L 7l

"" split setting
map si :set nosplitbelow<CR>:split<CR>
map sk :set splitbelow<CR>:split<CR>
map sj :set nosplitright<CR>:vsplit<CR>
map sl :set splitright<CR>:vsplit<CR>
"" split screen moving
map <LEADER>l <C-w>l
map <LEADER>i <C-w>k
map <LEADER>j <C-w>h
map <LEADER>k <C-w>j
"" split sreen resize
map <up>    :res +5<CR>
map <down>  :res -5<CR>
map <left>  :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
"" split screen layout
map sv  <C-w>t<C-w>H
map sh  <C-w>t<C-w>K
"" tabe setiing
map tu  :tabe<CR>
map tl  :+tabnext<CR>
map tj  :-tabnext<CR>

"" complie function
noremap r :call CompileCurrentFile()<CR>
func! CompileCurrentFile()
        exec "w"
""        exec "MarkdownPreview"
        if &filetype == 'vimwiki'
          exec "MarkdownPreview"
        endif
endfunc

"" vim-plug
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'

"" youComplete me
Plug 'ycm-core/YouCompleteMe'

"" nerdTree
Plug 'preservim/nerdtree'

"" MarkDown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle'}
"" Vim Wiki
Plug 'vimwiki/vimwiki'

call plug#end()

"" ===
"" === snazzy
"" ===
let g:SnazzyTransparent=1
color snazzy

"" ===
"" === youCompleteMe
"" ===
""let g:ycm_autoclose_preview_window_after_completion=0
""let g:ycm_autoclose_preview_window_after_insertion=1
""let g:ycm_use_clangd = 0
""let g:ycm_python_interpreter_path = /bin/python3"
""let g:ycm_python_binary_path = /bin/python3"


"" ===
"" === nerdTreek
"" ===


"" ===
"" === markdown-preview
"" ===
""let g:mkdp_auto_start = 0
""let g:mkdp_auto_close = 1
""let g:mkdp_refresh_slow = 0
""let g:mkdp_command_for_global = 0
""let g:mkdp_open_to_the_world = 0
""let g:mkdp_open_ip = ''
""let g:mkdp_browser = ''
""let g:mkdp_echo_preview_url = 0
""let g:mkdp_browserfunc = ''
""let g:mkdp_preview_options = {
""    \ 'mkit': {},
""    \ 'katex': {},
""    \ 'uml': {},
""    \ 'maid': {},
""    \ 'disable_sync_scroll': 0,
""    \ 'sync_scroll_type': 'middle',
""    \ 'hide_yaml_meta': 1
""    \ }
""let g:mkdp_markdown_css = ''
""let g:mkdp_highlight_css = ''
""let g:mkdp_port = ''
""let g:mkdp_page_title = '「${name}」'
source  ~/.config/nvim/md-snippets.vim
