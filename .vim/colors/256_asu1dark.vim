" Vim color file - 256_asu1dark
" Creator:   A. Sinan Unur

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name="256_asu1dark"

" GUI Color Scheme
hi Normal       cterm=NONE      ctermfg=15      ctermbg=233
hi NonText      cterm=NONE      ctermfg=210     ctermbg=238
hi Function     cterm=NONE      ctermfg=105     ctermbg=233
hi Statement    cterm=BOLD      ctermfg=11      ctermbg=233
hi Special      cterm=NONE      ctermfg=14      ctermbg=233
hi Constant     cterm=NONE      ctermfg=208     ctermbg=233
hi Comment      cterm=NONE      ctermfg=114     ctermbg=233
hi Preproc      cterm=NONE      ctermfg=78      ctermbg=233
hi Type         cterm=NONE      ctermfg=204     ctermbg=233
hi Identifier   cterm=NONE      ctermfg=14      ctermbg=233
hi StatusLine   cterm=BOLD      ctermfg=15      ctermbg=233
hi StatusLineNC cterm=NONE      ctermfg=15      ctermbg=233
hi Visual       cterm=NONE      ctermfg=0       ctermbg=15
hi Search       cterm=BOLD      ctermfg=88      ctermbg=229
hi VertSplit    cterm=NONE      ctermfg=15      ctermbg=241
hi Directory    cterm=NONE      ctermfg=10      ctermbg=233
hi WarningMsg   cterm=BOLD      ctermfg=15      ctermbg=233
hi Error        cterm=NONE      ctermfg=1       ctermbg=15
hi Cursor                       ctermfg=15      ctermbg=47
hi LineNr       cterm=NONE      ctermfg=252     ctermbg=233
hi ModeMsg      cterm=BOLD      ctermfg=233     ctermbg=252
hi Question     cterm=NONE      ctermfg=84      ctermbg=233
hi SpellBad     cterm=BOLD      ctermfg=255     ctermbg=196
