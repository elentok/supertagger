" ============================================================================
" File:        supertagger.vim
" Description: adds coffeescript and javascript tags support to vim
"              (also for the CtrlP and TagBar plugins)
" Maintainer:  David Elentok <3david at gmail dot com>
" ============================================================================

" Vars and commands {{{1
let s:supertagger_root=expand("<sfile>:h") . "/../"
let g:supertagger_bin=s:supertagger_root . "bin/supertagger"

command! SuperTagger :exec "!" . g:supertagger_bin

" CtrlP Settings {{{1

let g:ctrlp_buftag_types = {
  \ 'coffee': '',
  \ 'javascript': '',
  \ 'markdown': '',
  \ 'ghmarkdown': ''
  \ }


" vim: set foldmethod=marker :
