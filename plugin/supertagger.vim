" supertagger.vim - Adds supertagger as a vim plugin
"Maintainer: David Elentok

let s:supertagger_root=expand("<sfile>:h") . "/../"
let g:supertagger_bin=s:supertagger_root . "bin/supertagger"
let g:dtags_bin=s:supertagger_root . "bin/dtags"

"let g:ctrlp_buftag_ctags_bin = g:supertagger_bin
let g:ctrlp_buftag_ctags_bin = g:dtags_bin

let g:ctrlp_buftag_types = {
  \ 'coffee': '',
  \ 'javascript': '',
  \ }

command! SuperTagger :exec "!" . g:supertagger_bin
