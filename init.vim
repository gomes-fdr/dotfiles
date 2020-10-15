call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}
Plug 'bling/vim-airline'
Plug 'junegunn/goyo.vim'
Plug 'liuchengxu/vim-which-key'
Plug 'chrisbra/Colorizer'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'gabrielelana/vim-markdown'
Plug 'Yggdroot/indentLine'
Plug 'frazrepo/vim-rainbow'
Plug 'Raimondi/delimitMate'
Plug 'ryanoasis/vim-devicons'

call plug#end()

syntax enable
set encoding=UTF-8
set number
set relativenumber
set background=dark
set mouse=a
set spell spelllang=pt_br,en_us

colorscheme gruvbox

nnoremap <C-o> :NERDTreeToggle <cr>
nnoremap <C-s> :w! <cr>
nnoremap <C-q> :q! <cr>
nnoremap <C-G> :Goyo <cr>
map <F7> :SpellCheck<CR>
map <F8> :SpellProposeAlternatives<CR>

" TODO: Corretor ortagráfico pt_BR e en_US
" TODO: Auto completar <C-space) usando tabnine
