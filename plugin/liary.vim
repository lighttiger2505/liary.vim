if exists('g:loaded_liary')
  finish
endif
let g:loaded_liary = 1

let s:save_cpo = &cpoptions
set cpoptions&vim

command! -bar Liary call liary#open_edit()
command! -bar LiarySplit call liary#open_split()
command! -bar LiaryVSplit call liary#open_vsplit()
command! -bar LiaryTab call liary#open_tab()

let &cpoptions = s:save_cpo
unlet s:save_cpo
