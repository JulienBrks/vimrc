set number
let g:multi_cursor_next_key='<C-g>'
set foldmethod=indent

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
call vundle#end()            " require
filetype plugin indent on    " required

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

let NERDTreeShowHidden=1

let g:multi_cursor_normal_maps={'d':1}

" easymotion
nmap <Leader><Leader>s <Plug>(easymotion-sn)
xmap <Leader><Leader>s <Plug>(easymotion-sn)
omap <Leader><Leader>z <Plug>(easymotion-sn)

nmap <leader>wq :wq<cr>
nmap <leader>q :q<cr>
map <F5> :NERDTreeToggle<CR>
