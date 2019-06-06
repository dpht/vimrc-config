set nu
set nocompatible              " required
set encoding=utf-8
set clipboard=unnamed
filetype off                  " required

set rtp+=/usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Syntax helper
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'

" Powerline
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Super Search Ctrl+P
Plugin 'kien/ctrlp.vim'

" Git Integration
Plugin 'tpope/vim-fugitive'

" NERDTREE TAB
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

"Bundle 'Valloric/YouCompleteMe'

" ...


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let python_highlight_all=1
syntax on

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

cd ~/Documents/Projects
map <F2> :NERDTreeToggle<CR>
" open Nerd Tree in folder of file in active buffer
map <Leader>nt :NERDTree %:p:h<CR>
