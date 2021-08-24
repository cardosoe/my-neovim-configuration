" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    "Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'prettier/vim-prettier'
    
    
  Plug 'liuchengxu/vim-which-key'
  Plug 'joshdick/onedark.vim' 
  Plug 'morhetz/gruvbox'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'vim-airline/vim-airline'
  
  Plug 'christianchiarulli/nvcode-color-schemes.vim'
  Plug 'nvim-treesitter/nvim-treesitter'


    "tagbar
nmap <F8> :TagbarToggle<CR>


" NERDTree, Use F3 for toggle NERDTree
nmap <silent> <F3> :NERDTreeToggle<CR>>
Plug 'ryanoasis/vim-devicons'
set encoding=utf8

Plug 'mattn/emmet-vim'

Plug 'preservim/nerdcommenter'

Plug 'tpope/vim-commentary'
"====COC.NVIN AUTOCOMPLETION===

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'yuezk/vim-js'                     " javascript support enhanced
Plug 'HerringtonDarkholme/yats.vim'     " typescript support advanced
Plug 'maxmellon/vim-jsx-pretty'         " react jsx syntax support
Plug 'posva/vim-vue'                    " vue syntax support

"==DASHBOARD===
Plug 'glepnir/dashboard-nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

let g:dashboard_default_executive ='telescope'

"==DASHBOARD===
"===ORGMODE===
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'jceb/vim-orgmode'
"===ORGMODE===

call plug#end()

set background=dark

let g:user_emmet_leader_key=','

" config for vim-prettier
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync



" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif
