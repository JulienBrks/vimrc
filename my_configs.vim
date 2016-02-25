set number
let g:multi_cursor_next_key='<C-g>'

set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'ap/vim-css-color'
Plugin 'sheerun/vim-polyglot'
Plugin 'editorconfig/editorconfig-vim'
call vundle#end()            " require
filetype on    " required

filetype plugin on

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

" set foldmethod=syntax

" remove trailing whitespace when save
autocmd BufWritePre * :%s/\s\+$//e

let g:multi_cursor_exit_from_insert_mode=0

" CTRLSF map
nmap     <C-A>f <Plug>CtrlSFPrompt
vmap     <C-A>f <Plug>CtrlSFVwordPath
vmap     <C-A>F <Plug>CtrlSFVwordExec
nmap     <C-A>n <Plug>CtrlSFCwordPath
nmap     <C-A>p <Plug>CtrlSFPwordPath
nnoremap <C-A>o :CtrlSFOpen<CR>
nnoremap <C-A>t :CtrlSFToggle<CR>
inoremap <C-A>t <Esc>:CtrlSFToggle<CR>

" toggle paste mode
nmap <leader>p :set paste<cr>
vmap <leader>p :set paste<cr>
nmap <leader>np :set nopaste<cr>
vmap <leader>np :set nopaste<cr>

" vim-css-color
" let g:cssColorVimDoNotMessMyUpdatetime = 1
