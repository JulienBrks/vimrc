set number
let g:multi_cursor_next_key='<C-g>'

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
call vundle#end()            " require
filetype on    " required

map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

let NERDTreeShowHidden=1

let g:multi_cursor_normal_maps={'d':1}

" easymotion
nmap <Leader><Leader>s <Plug>(easymotion-sn)
xmap <Leader><Leader>s <Plug>(easymotion-sn)
omap <Leader><Leader>s <Plug>(easymotion-sn)

nmap <leader>wq :wq<cr>
nmap <leader>q :q<cr>
map <F5> :NERDTreeToggle<CR>
nmap <leader>n :NERDTreeFind<CR>

let g:syntastic_html_tidy_exec = 'tidy5'

set foldmethod=indent
let g:multi_cursor_exit_from_insert_mode=0

" CTRLSF map
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
