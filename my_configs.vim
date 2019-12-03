call plug#begin('~/.vim/plugged')
Plug 'drewtempelmeyer/palenight.vim'
Plug 'NLKNguyen/papercolor-theme'
call plug#end()

"let g:solarized_termcolors=256
if strftime("%H") < 16
     "set t_Co=256
     set background=light
     colorscheme PaperColor
     set number
     set laststatus=2
else
     set background=dark
     colorscheme palenight
endif
set relativenumber
set timeoutlen=1000 ttimeoutlen=0
let g:kite_tab_complete = 1
let g:gitgutter_enabled = 1
let g:gitgutter_highlight_linenrs = 1