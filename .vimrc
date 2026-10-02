
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'NLKNguyen/papercolor-theme'

Plugin 'fatih/vim-go'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'scrooloose/syntastic'

Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'Valloric/YouCompleteMe'

Plugin '907th/vim-auto-save'

call vundle#end()
filetype plugin indent on  

set backspace=2

set t_Co=256
set background=light
colorscheme papercolor
syntax on

" Keyboard shortcuts:
" * Toggle line numbers *
set invnumber
nmap <C-N> :set invnumber<CR> 

" * NERDTree *
nmap <C-L> :NERDTreeToggle<CR>
 
" Close completion scratch buffers automatically
let Tlist_Exit_OnlyWindow = 1
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_go_checkers = ['go']

" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'
" 
" let g:UltiSnipsExpandTrigger = "<tab>"
" let g:UltiSnipsJumpForwardTrigger = "<tab>"
" let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

inoremap <C-c> <ESC>
let g:auto_save=1
let g:auto_save_events = ["InsertLeave", "TextChanged"]

let g:go_fmt_autosave=0

let g:jsx_ext_required = 0
