" holodark.vim - A dark Vim colorscheme inspired by Android's "Holo" theme.
" Maintainer:   Laurence Gonsalves <laurence@xenomachina.com>
" Last Change:  2014 March 25
" URL:          https://github.com/xenomachina/vim-holodark

set background=dark
" Vim colorscheme boilerplate {{{
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "holodark"
" }}}

" VIM stuff
hi Normal                       guifg=#dddddd   guibg=#111111
hi Cursor                       guifg=#000000   guibg=#33B5E5
hi CursorColumn                                 guibg=#101818
hi CursorLineNr gui=bold        guifg=#ffff00
hi CursorLine                                   guibg=#666666

hi LineNr                       guifg=#111111   guibg=#444444
hi VertSplit                    guifg=#000000   guibg=#626262
hi StatusLineNC gui=NONE        guifg=#000000   guibg=#626262
" StatusLine: see FocusGained/FocusLost functions

hi TabLineFill  gui=underline   guifg=#111111   guibg=#181818
hi TabLine      gui=NONE        guifg=#111111   guibg=#626262
" TabLineSel: see FocusGained/FocusLost functions

hi Visual                                       guibg=#006688
hi VisualNOS                                    guibg=#555555

hi WildMenu                     guifg=#222222   guibg=#0099cc
hi Pmenu                        guifg=#080808   guibg=#404040
hi PmenuSel                     guifg=#080808   guibg=#555555
hi PmenuSbar                                    guibg=#5c5c5c
hi PmenuThumb                                   guibg=#777777

hi ModeMsg      gui=bold
hi MoreMsg      gui=bold        guifg=#00ff88
hi Question     gui=bold        guifg=#00ff00
hi WarningMsg                   guifg=#ff0000
hi ErrorMsg                     guifg=#dddd88   guibg=#aa1100

hi Search                       guifg=#000000   guibg=#006688
hi IncSearch    gui=reverse

hi NonText      gui=bold        guifg=#660000   guibg=#040404
hi SpecialKey   gui=NONE        guifg=#444422
hi MatchParen                                   guibg=#aa6600

hi ColorColumn                                  guibg=#181818
hi Conceal                      guifg=#cccccc   guibg=#a9a9a9
hi FoldColumn                   guifg=#000088   guibg=#888888
hi Folded                       guifg=#bbbb44   guibg=#5a5a5a
hi Ignore                       guifg=#333333
hi lCursor                      guifg=#000000   guibg=#00ffff
hi SignColumn                   guifg=#00ffff   guibg=#888888
hi Title        gui=bold        guifg=#cccccc

hi SpellBad     gui=undercurl                                   guisp=#ff0000
hi SpellCap     gui=undercurl                                   guisp=#0000ff
hi SpellLocal   gui=undercurl                                   guisp=#00ffff
hi SpellRare    gui=undercurl                                   guisp=#ff00ff

" Diff
hi DiffAdd                                      guibg=#113811
hi DiffChange                                   guibg=#554411
hi DiffDelete   gui=bold        guifg=#661111   guibg=#661111
hi DiffText                                     guibg=#997722


" Language stuff
hi PreProc                      guifg=#aa66cc
hi link Include         PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link Define          PreProc

hi Function     gui=bold        guifg=#0077bb
hi Identifier   gui=bold        guifg=#4466dd
hi Label        gui=bold        guifg=#008800

hi Type         gui=bold        guifg=#669900
hi link StorageClass    Type
hi link Typedef         Type
hi link Structure       Type

hi Constant                     guifg=#ff4444
hi link Float      Number
hi link Boolean    Number
hi link confString String
hi link Character  String
hi link Number     Constant
hi link String     Constant

hi cppGenerated                 guifg=#7f7f7f
hi htmlEndTag   gui=bold        guifg=#000088
hi nasmStorage  gui=bold        guifg=#880000

" Keywords
hi Repeat       gui=bold
hi Exception    gui=bold
hi Operator     gui=bold        guifg=#33B5E5

hi Statement    gui=bold        guifg=#ffbb33
hi Conditional  gui=bold

" Comments
hi Comment      gui=bold        guifg=#225588
hi SpecialComment gui=bold      guifg=#2222bf
hi CommentTitle   gui=bold      guifg=#2222bf
hi Todo         gui=reverse     guifg=#ffbb33   guibg=#222222
hi Special                      guifg=#ff8800   guibg=#222222
hi Error        gui=undercurl                                   guisp=#aa1100

" Explorer
hi Directory                    guifg=#00ffff

hi link Tag             Special
hi link Debug           Special
hi link SpecialChar     Special
hi link Delimiter       Special

hi link Keyword         Statement

fun! s:FocusLost()
  hi StatusLine gui=none guifg=#000000 guibg=#858585
  hi TabLineSel gui=bold guifg=#000000 guibg=#888888
endfun

fun! s:FocusGained()
  hi StatusLine gui=none guifg=#000000 guibg=#33B5E5
  hi TabLineSel gui=bold guifg=#000000 guibg=#0099cc
endfun

augroup holodark_focus_colors
  autocmd!
  autocmd FocusLost   * call <SID>FocusLost()
  autocmd FocusGained   * call <SID>FocusGained()
augroup END
call s:FocusGained()

" vim: foldenable foldmethod=marker ts=16
