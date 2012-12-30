" ============================================================================
" File:        supertagger.vim
" Description: adds coffeescript and javascript tags support to vim
"              (also for the CtrlP and TagBar plugins)
" Maintainer:  David Elentok <3david at gmail dot com>
" ============================================================================

" Vars and commands {{{1
let s:supertagger_root=expand("<sfile>:h") . "/../"
let g:supertagger_bin=s:supertagger_root . "bin/supertagger"
let g:dtags_bin=s:supertagger_root . "bin/dtags"

command! SuperTagger :exec "!" . g:supertagger_bin

" CtrlP Settings {{{1

let g:ctrlp_buftag_ctags_bin = g:dtags_bin
let g:ctrlp_buftag_types = {
  \ 'coffee': '',
  \ 'javascript': '',
  \ }


" TagBar Settings {{{1

let g:tagbar_ctags_bin = g:dtags_bin
let g:tagbar_type_coffee = {
      \   'ctagstype': 'coffee',
      \   'kinds' : [
      \     'c:classes',
      \     'm:methods',
      \     'o:object',
      \   ],
      \ }

let g:tagbar_type_javascript = {
      \   'ctagsbin': g:dtags_bin,
      \   'kinds' : [
      \     'c:classes',
      \     'm:methods',
      \     'o:object',
      \   ],
      \ }

" vim: set foldmethod=marker :
