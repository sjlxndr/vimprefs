" Vim color file
" Maintainer:   Bohdan Vlasyuk <bohdan@vstu.edu.ua>
" Last Change:  2008 Jul 18

" black -- for those who prefer dark background
" [note: looks bit uglier with come terminal palettes,
" but is fine on default linux console palette.]

set bg=dark

hi clear
if exists("syntax_on")
        syntax reset
endif

let colors_name = "sjalexander"

hi Normal       guifg=#ebebdc guibg=#231B16       ctermfg=none ctermbg=none
hi ErrorMsg     guifg=#ffffff guibg=#287eff                                             ctermfg=none ctermbg=161
hi Visual       guifg=#8080ff guibg=NONE        gui=reverse             ctermfg=lightblue ctermbg=none cterm=reverse
hi VisualNOS    guifg=#8080ff guibg=NONE        gui=reverse,underline   ctermfg=lightblue ctermbg=none cterm=reverse,underline
hi Todo         guifg=#d14a14 guibg=#1248d1                                             ctermfg=red     ctermbg=yellow
hi Search       guifg=#90fff0 guibg=#2050d0                                             ctermfg=lightblue ctermbg=202
hi IncSearch    guifg=#b0ffff guibg=#2050d0                                                     ctermfg=black ctermbg=gray

hi SpecialKey   guifg=cyan                      ctermfg=cyan
hi Directory    guifg=cyan                      ctermfg=cyan

hi Title        guifg=magenta gui=NONE ctermfg=magenta cterm=bold
hi WarningMsg   guifg=red                       ctermfg=red
hi WildMenu     guifg=yellow guibg=black ctermfg=yellow ctermbg=black cterm=none term=none
hi ModeMsg      guifg=#22cce2           ctermfg=lightblue
hi MoreMsg      ctermfg=darkgreen       ctermfg=darkgreen
hi Question     guifg=green gui=NONE ctermfg=green cterm=none
hi NonText      guifg=#0030ff           ctermfg=darkgreen

au! InsertEnter InsertLeave
au InsertEnter * hi StatusLine guibg=darkyellow guifg=none cterm=reverse,bold ctermfg=202 ctermbg=none
au InsertLeave * hi StatusLine   gui=bold   guifg=black   guibg=#ebebdc   cterm=bold   ctermfg=black   ctermbg=gray   term=none

hi StatusLine   gui=bold    guifg=black     guibg=#ebebdc   cterm=bold  ctermfg=black       ctermbg=gray    term=none
hi StatusLineNC gui=NONE    guifg=black     guibg=darkgray  cterm=bold  ctermfg=darkgray    ctermbg=gray    term=none

hi VertSplit    guifg=black guibg=darkgray gui=NONE             ctermfg=black ctermbg=gray term=none cterm=none

hi Folded       guifg=#808080 guibg=black                       ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi FoldColumn   guifg=#808080 guibg=black                       ctermfg=darkgrey ctermbg=black cterm=bold term=bold
hi LineNr       guifg=#90f020                   ctermfg=green cterm=none

hi DiffAdd      guibg=black     ctermbg=black term=none cterm=none
hi DiffChange   guibg=darkmagenta ctermbg=magenta cterm=none
hi DiffDelete   ctermfg=blue ctermbg=161 gui=bold guifg=Blue guibg=DarkCyan
hi DiffText     cterm=bold ctermbg=red gui=bold guibg=#bb0000

hi Cursor       guifg=black guibg=yellow ctermfg=black ctermbg=yellow
hi lCursor      guifg=black guibg=NONE ctermfg=black ctermbg=none


hi Comment      guifg=#ff3030 ctermfg=darkred
hi Constant     ctermfg=magenta guifg=#ff70ff cterm=none
hi Special      ctermfg=brown guifg=Orange cterm=none gui=none
hi Identifier   ctermfg=161 guifg=#40ffff cterm=none
hi Statement    ctermfg=yellow cterm=none guifg=#ffff60 gui=NONE
hi PreProc      ctermfg=magenta guifg=#ff80ff gui=NONE cterm=none
hi type         ctermfg=green guifg=#40ff40 gui=NONE cterm=none
hi Underlined   cterm=underline term=underline
hi Ignore       guifg=bg ctermfg=none

" suggested by tigmoid, 2008 Jul 18
hi Pmenu guifg=#c0c0c0 guibg=#404080
hi PmenuSel guifg=#c0c0c0 guibg=#2050d0
hi PmenuSbar guifg=blue guibg=darkgray
hi PmenuThumb guifg=#c0c0c0
