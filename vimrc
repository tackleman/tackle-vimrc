source ~/.vim/bundle.vim

syntax on
set number
colorscheme molokai
" NERDTree
" map <C-n> :NERDTreeToggle<CR>
" auto open nerdtree when there is no file opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" auto close nerdtre when quit vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" NERDTree tab
map <C-n> :NERDTreeTabsToggle<CR>
