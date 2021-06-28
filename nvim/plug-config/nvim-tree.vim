set termguicolors

let g:nvim_tree_side = "left"
let g:nvim_tree_width = 25
"let g:nvim_tree_ignore = {".git", 'node_modules', '.cache'}
let g:nvim_tree_auto_open = 0
let g:nvim_tree_auto_close = 1
let g:nvim_tree_quit_on_open = 1
let g:nvim_tree_follow = 1
let g:nvim_tree_indent_markers = 0
let g:nvim_tree_hide_dotfiles = 1
let g:nvim_tree_git_hl = 1
let g:nvim_tree_root_folder_modifier = ":t"
let g:nvim_tree_tab_open = 0
let g:nvim_tree_allow_resize = 1
let g:nvim_tree_show_icons = {
        \ 'git': 0,
        \ 'folders': 1,
        \ 'files': 1,
        \}

let g:nvim_tree_icons = {
        \ 'default': '',
        \ 'symlink': '',
            \ 'folder' : {
            \   'open': "",
            \   'empty': "",
            \   'empty_open': "",
            \   'symlink': ""
            \}
            \}
