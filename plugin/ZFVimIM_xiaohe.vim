let s:repoPath=expand('<sfile>:p:h:h')
function! s:dbInit()
    let repoPath = s:repoPath
    let dbFile = 'xhup.txt'

    let db = ZFVimIM_dbInit({
                \   'name' : 'xhup',
                \ })
    call ZFVimIM_cloudRegister({
                \   'mode' : 'local',
                \   'repoPath' : repoPath,
                \   'dbFile' : dbFile,
                \   'dbId' : db['dbId'],
                \ })
endfunction

augroup ZFVimIM_xiaohe_augroup
    autocmd!
    autocmd User ZFVimIM_event_OnDbInit call s:dbInit()
augroup END
