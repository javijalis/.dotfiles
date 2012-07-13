set number
set hls
set ft=php
set syntax=php
set smarttab
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set nobk
set cursorline
set wrap
set hlsearch        " hilight searches by default
set ttyscroll=3     " improves redraw performance when scroll
set nocompatible   " don't be compatible with legacy vi


let g:NERDTreeDirArrows=0

if v:version >= 703
  set colorcolumn=+1 " mark the ideal max text width (vim 7.3 or greater)
endif

" basic ui options

set showmode
set mouse=a

set t_Co=256
set background=dark    " your eyes will thank you
colorscheme wombat256

command! W :w " for mistyping :w as :W

" spelling options
set spelllang=es_es,en_us


" Marcar la columna 80
set colorcolumn=80
" Modificar el color del ColorColumn
highlight ColorColumn ctermbg=0


let html_templates_imasd = 1

map <F4> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

abbr fn function ()\n{\n}
abbr ccom <!-- ====\n==== -->
abbr IF <!-- _IF_ @ () @ -->xxx<!-- _ENDIF_ -->
abbr IFE <!-- _IF_ @ () @ -->xxx<!-- _ELSE_ -->yyy<!-- _ENDIF_ -->
abbr IFC <!-- _IF_ @ () @ -->xxx<!-- _ELSEIF_ @ () @ -->yyy<!-- _ELSE_ -->zzz<!-- _ENDIF_ -->
