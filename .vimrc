

execute pathogen#infect()


syntax enable
syntax on
filetype plugin indent on
set hidden
set ruler
set fileformats=unix
set nosmarttab
set nocompatible
set nohlsearch
set incsearch
set tabstop=2
set shiftwidth=2
set completeopt-=preview

set encoding=utf8
set fileencodings=utf8
set termencoding=utf8
set enc=utf-8
set ffs=unix,dos
set re=2

set t_Co=256

set background=dark
let g:solarized_termcolors=256
let g:solarized_visibility="high"
let g:solarized_contrast="high"
let g:solarized_bold=0
let g:solarized_termtrans=1

colorscheme solarized

" minibufexpl.vim
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg


noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l

noremap <C-TAB>   :MBEbn<CR>
noremap <C-S-TAB> :MBEbp<CR>


noremap <silent> \M :cal VimCommanderToggle()<CR>

set nobackup

" remove ^M
fun RmCr()
    let oldLine=line('.')
    exe ":%s/\r//g"
    exe ':' . oldLine
endfun

" Remove trailing spaces
fun Rw()
    %s/\s*$//
    ''
endfun

" Show extra spaces
let c_space_errors=1
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
