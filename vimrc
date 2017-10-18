set nocompatible

source $VIMRUNTIME/vimrc_example.vim

if has("win32")
    source $VIMRUNTIME/mswin.vim
    behave mswin
endif

if filereadable("vimfiles/xterm-color-table.vim")
    so vimfiles/xterm-color-table.vim
endif

if filereadable(".vim/xterm-color-table.vim")
    so .vim/xterm-color-table.vim
endif

set tabstop=4
set shiftwidth=4
set expandtab

set guioptions-=T
set guioptions+=a
set nowrap
set formatoptions-=t

set linespace=0

set statusline=\ \"%F%m%r%h%w\"\ \◆\ ft:%Y\ ff:%{&ff},fenc:%{&fenc},enc:%{&enc}\ \◆\ l:%4l\ c:%4v\ \◆\ %4l/%4L:\ %02p%%\ \◆\ a=%03.3b\ h=0x%02.2B\ 
set laststatus=2

if filereadable(expand("$VIMRUNTIME\\gvimfullscreen.dll"))
    au! GUIEnter
    au GUIEnter * map <F11> <ESC>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    au GUIEnter * map! <F11> <ESC>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    au GUIEnter * cmap <F11> <C-C>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
    au GUIEnter * simalt ~x
endif

au! InsertEnter
au! InsertLeave
au  InsertEnter * hi StatusLine guifg=#000090 guibg=#ff9000 ctermfg=208 ctermbg=18
au  InsertLeave * hi StatusLine guifg=black guibg=#997766 ctermfg=none ctermbg=none

"python stuff
set number
set cursorline
set showmatch
let python_highlight_all = 1
set noeb vb t_vb=

if has('gui_running')
    set guifont=Hack:h11:cANSI
    colorscheme phix
    " color modifications
    hi  MatchParen guibg=#00cccc guifg=black
    hi  CursorLine gui=underline guibg=NONE
    hi  CursorLineNr gui=NONE
    hi  Normal guibg=#231B16
    hi  NonText guibg=#231B16 guifg=grey50
endif

if &t_Co >= 256
    colorscheme phix
endif

hi StatusLine gui=bold term=bold guifg=black guibg=#997766
hi Cursor guibg=#ff9000 guifg=#000090 gui=bold

set wildmenu

" usability and text-handling settings
set enc=utf8
set nojs
set wrap
set linebreak
set nolist
set textwidth=0
set wrapmargin=0
if exists("&breakindent")
    set breakindent
endif

hi SpellBad term=reverse ctermbg=12 gui=undercurl guifg=lightblue guisp=orange
nnoremap <silent> <F7> :set spell!<CR>
nnoremap <silent> <C-l> :nohl<CR>:set nospell<CR><C-l>

nnoremap <C-[>OA <C-Up>
inoremap <C-[>OA <C-Up>
nnoremap <C-[>OB <C-Down>
inoremap <C-[>OB <C-Down>
inoremap <C-[>OC <C-Right>
nnoremap <C-[>OC <C-Right>
inoremap <C-[>OD <C-Left>
nnoremap <C-[>OD <C-Left>

if has("win32")
    set directory=C:\temp\\\\
    set backupdir=C:\temp\\\\
    set undodir=C:\temp\\\\
else
    set directory=/tmp//
    set backupdir=/tmp//
    set undodir=/tmp//
endif

execute pathogen#infect()

if has("win32")
    let g:Perl_Perl='C:\Strawberry\perl\bin\perl.exe'
endif
