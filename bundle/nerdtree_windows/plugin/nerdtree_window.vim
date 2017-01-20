" Script init stuff
"============================================================
if exists("loaded_nerd_tree_windows")
    finish
endif

" check nerdtree loaded
if !exists("loaded_nerd_tree")
    echoerr "NERDTreeWindows: this plugin requires NERDTree to be loaded!"
    finish
endif

let loaded_nerd_tree_windows = 1

" NERDTree configuration

" Windows open node
function! NERDTreeWindowsOpenNode(node)
    call system('cmd.exe /C start ' . join(split(a:node.path.str(), '\'), '/'))
endfunction

call NERDTreeAddKeyMap({
    \ 'key': '<C-o>',
    \ 'callback': 'NERDTreeWindowsOpenNode',
    \ 'quickhelpText': 'Open node with default program',
    \ 'override': 1,
    \ 'scope': 'Node' })

" Windows open cmd
function! NERDTreeWindowsCmdHere(dirnode)
    call system('cmd.exe /C start cmd /K cd /d ' . a:dirnode.path.str())
endfunction

call NERDTreeAddKeyMap({
    \ 'key': '<C-c>',
    \ 'callback': 'NERDTreeWindowsCmdHere',
    \ 'quickhelpText': 'Open a terminal in the directory',
    \ 'override': 1,
    \ 'scope': 'DirNode' })

