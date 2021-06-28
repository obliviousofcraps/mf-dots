"           __                    __     _     ____         
"   _____  / /_  ____ _   _____  / /_   (_)   / __/   __  __
"  / ___/ / __/ / __ `/  / ___/ / __/  / /   / /_    / / / /
" (__  ) / /_  / /_/ /  / /    / /_   / /   / __/   / /_/ / 
"/____/  \__/  \__,_/  /_/     \__/  /_/   /_/      \__, /  
"                                                  /____/  

let g:startify_lists = [
    \ { 'type': 'sessions',  'header': ['    Sessions']       },
    \ { 'type': 'files',     'header': ['    Recent Files']            },
    \ { 'type': 'dir',       'header': ['    Recent Files from directory '. getcwd()] },
    \ ]

let g:startify_session_dir= '~/.config/nvim/.sessions'
let g:startify_session_persistence = 1

let g:startify_session_before_save = [
    \ 'echo "Cleaning up before saving.."',
    \ 'silent! NERDTreeTabsClose'
    \ ]

let g:startify_fortune_use_unicode = 1
let g:startify_enable_special = 0
set sessionoptions+=tabpages,globals
let g:startify_custom_header = [
    \'  ##############..... ############## ', 
    \'  ##############......############## ', 
    \'    ##########..........##########   ', 
    \'    ##########........##########     ', 
    \'    ##########.......##########      ', 
    \'    ##########.....##########..      ', 
    \'    ##########....##########.....    ', 
    \'  ..##########..##########.........  ', 
    \'....##########.#########.............', 
    \'  ..################JJJ............  ', 
    \'    ################.............    ', 
    \'    ##############.JJJ.JJJJJJJJJJ    ', 
    \'    ############...JJ...JJ..JJ  JJ   ', 
    \'    ##########....JJ...JJ..JJ  JJ    ', 
    \'    ########......JJJ..JJJ JJJ JJJ   ', 
    \'    ######    .........              ', 
    \]
