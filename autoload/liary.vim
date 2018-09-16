let s:save_cpo = &cpoptions
set cpoptions&vim

function! s:GetLiaryPath() abort
    let cmd = 'liary -p '
    let result = system(cmd)
    return result
endfunction

function! liary#edit() abort
    exe 'edit ' . s:GetLiaryPath()
endfunction

function! liary#split() abort
    exe 'split ' . s:GetLiaryPath()
endfunction

function! liary#vsplit() abort
    exe 'vsplit ' . s:GetLiaryPath()
endfunction

function! liary#tab() abort
    exe 'tabedit ' . s:GetLiaryPath()
endfunction

let &cpoptions = s:save_cpo
unlet s:save_cpo
