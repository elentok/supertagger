" supertagger.vim - Adds supertagger as a vim plugin
"Maintainer: David Elentok

let s:supertagger_root=expand("<sfile>:h")
let g:supertagger_bin=s:supertagger_root . "/../bin/supertagger"

command! SuperTagger :exec "!" . g:supertagger_bin
