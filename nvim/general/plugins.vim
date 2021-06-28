"              __                    (_)                
"     ____    / /   ____ _  __  __   __    ____    _____
"    / __ \  / /   / __ `/ / / / /  / /   / __ \  / ___/
"   / /_/ / / /   / /_/ / / /_/ /  / /   / / / / (__  ) 
"  / .___/ /_/    \__, /  \__,_/  /_/   /_/ /_/ /____/  
" /_/            /____/   

 "auto-install vim-plug
"if empty(glob('~/.config/nvim/autoload/plug.vim'))
  "silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
 "   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
"endif

call plug#begin('~/.config/nvim/plugged')

"------UI------"

" Vim Tips
Plug 'michaelb/vim-tips'

" Nerdtree
"Plug 'preservim/nerdtree'

"nvim-tree
Plug 'kyazdani42/nvim-web-devicons' 
Plug 'kyazdani42/nvim-tree.lua'

" Icons
Plug 'ryanoasis/vim-devicons'

" Start Page
Plug 'mhinz/vim-startify'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Syntax Highlighting
Plug 'sheerun/vim-polyglot'

"----Editor-----"

" Selection
"Plug 'gcmt/wildfire.vim'
"Plug 'kana/vim-textobj-line'
"Plug 'kana/vim-textobj-user'

" Better f/F(without ,)
"Plug 'rhysd/clever-f.vim'

" Colorizer
"Plug 'norcalli/nvim-colorizer.lua'
"Plug 'chrisbra/Colorizer'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Commenter
Plug 'preservim/nerdcommenter'
" Plug 'tpope/vim-commentary'

" Detect Indentation
Plug 'tpope/vim-sleuth'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Aligning
Plug 'junegunn/vim-easy-align'

" Surround
Plug 'tpope/vim-surround'

" auto-close brackets
Plug 'jiangmiao/auto-pairs'

" Indentation guide
Plug 'Yggdroot/indentLine'

" Move between tags
"Plug 'adelarsq/vim-matchit'

"---Utilities---"

"FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Snippet
Plug 'honza/vim-snippets'

" COC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Git
Plug 'tpope/vim-fugitive'

" Git Commit viewer
"Plug 'junegunn/gv.vim'

" Terminal
Plug 'voldikss/vim-floaterm'

" Goyo (Zen Mode)
Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'

" Display Shortcuts
Plug 'liuchengxu/vim-which-key'

" Smooth scroll
"Plug 'psliwka/vim-smoothie'

"Git Show
Plug 'mhinz/vim-signify'


Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'

Plug 'tweekmonster/startuptime.vim'


call plug#end()
