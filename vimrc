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
set autoindent
set history=500
set smartindent

" first, enable status line always
set laststatus=2

" now set it up to change the status line based on mode
if version >= 700
  au InsertEnter * hi StatusLine term=reverse ctermbg=1 ctermfg=0 gui=undercurl guisp=Red
  au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse
endif

" default the statusline to green when entering Vim
hi statusline guibg=green


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

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.

set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%c\",getftime(expand(\"%:p\")))}%=\ lin:%l\,%L\ col:%c%V\ pos:%o\ ascii:%b\ %P

"circulacion de tabs
nnoremap <silent> <F5> :tabn<CR> 
"circulacion de bugers
nnoremap <F6> :buffers<CR>:buffer<Space>

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

abbr fn function ()\n{\n}
abbr ccom <!-- ====\n==== -->
abbr IF <!-- _IF_ @ () @ -->xxx<!-- _ENDIF_ -->
abbr IFE <!-- _IF_ @ () @ -->xxx<!-- _ELSE_ -->yyy<!-- _ENDIF_ -->
abbr IFC <!-- _IF_ @ () @ -->xxx<!-- _ELSEIF_ @ () @ -->yyy<!-- _ELSE_ -->zzz<!-- _ENDIF_ -->
