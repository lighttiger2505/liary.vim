if exists('g:loaded_liary')
  finish
endif
let g:loaded_liary = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

command! -bar Liary call liary#edit()
command! -bar LiarySplit call liary#split()
command! -bar LiaryVSplit call liary#vsplit()
command! -bar LiaryTab call liary#tab()

let &cpoptions = s:save_cpo
unlet s:save_cpo
