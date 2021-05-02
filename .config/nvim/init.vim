" Plugins will be downloaded under the specified directory.
call plug#begin()

"-------------------------- Plugins (Vim-Plug) ---------------------------
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()


" ------------------------- General Settings -----------------------------
set relativenumber
set number
set cursorline


" ------------------------- Color Settings -------------------------------
syntax on
colorscheme gruvbox 


"" File search config
set path+=**
set wildmenu

"" Fuzzy Find config

" Always show preview
let g:fzf_files_options = '--preview "bat --theme="OneHalfDark" --style=numbers,changes --color always {2..-1} | head -'.&lines.'"'
