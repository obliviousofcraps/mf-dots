"                 __    __     _                          
"   _____  ___   / /_  / /_   (_)   ____    ____ _   _____
"  / ___/ / _ \ / __/ / __/  / /   / __ \  / __ `/  / ___/
" (__  ) /  __// /_  / /_   / /   / / / / / /_/ /  (__  ) 
"/____/  \___/ \__/  \__/  /_/   /_/ /_/  \__, /  /____/  
"                                        /____/ 

" Set line number
set number
"set signcolumn=no
"highlight clear SignColumn

" enable mouse
set mouse=a

" Autocomment new line
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Set encoding for icons
set encoding=UTF-8


" Split
set splitbelow
set splitright
hi VertSplit cterm=NONE ctermfg=8 ctermbg=NONE guibg=NONE guifg=#3c414c

set laststatus=2
" Hide mode
set noshowmode

" Folding
set foldmethod=indent
set foldnestmax=10
set foldlevel=2
set nofoldenable

" Spaces & Tabs {{{
set smartindent
function! UseTabs()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set noexpandtab   " Always uses tabs instead of space characters (noet).
  set autoindent    " Copy indent from current line when starting a new line (ai).
endfunction

function! UseSpaces()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction

call UseSpaces()

" Sessions
"autocmd VimLeave * NERDTreeClose
" autocmd VimLeave * mks! ~/.config/nvim/.sessions/last.vim
autocmd vimenter * silent! lcd %:p:h
autocmd BufEnter NvimTree set cursorline

" Settings for ctrl-space
set nocompatible
set hidden

" Keep 3 lines below and above the cursor
set scrolloff=3 

" Colors
highlight StartifyHeader  ctermfg=2 guifg=#59B7BB
highlight StartifySection  ctermfg=1 guifg=#59B7BB
highlight StartifyFile ctermfg=5 guifg=#447CA7

set shortmess-=S

"Colors"
set termguicolors
"set t_Co=256
syntax enable

"Goyo & Limelight
let g:goyo_width=130
"autocmd! User GoyoEnter Limelight
"autocmd! User GoyoLeave Limelight!
function! s:goyo_enter()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status off
    silent !tmux list-panes -F '\#F' | grep -q Z || tmux resize-pane -Z
  endif
  set noshowmode
  set noshowcmd
  "set scrolloff=999
  "Limelight
  " ...
endfunction

function! s:goyo_leave()
  if executable('tmux') && strlen($TMUX)
    silent !tmux set status on
    silent !tmux list-panes -F '\#F' | grep -q Z && tmux resize-pane -Z
  endif
  set showmode
  set showcmd
  "set scrolloff=5
  "Limelight!
  " ...
endfunction

autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()

let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_default_coefficient = 0.7

let g:material_terminal_italics = 1
colorscheme oblivion-dark 

"save all buffers when vim loses focus
au FocusLost * silent! wa

"autosave all files when a buffer is closed
set autowriteall

"set title to file being edited
set title titlestring=\ nvim\ -\ %t\ %M
