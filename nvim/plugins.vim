" let s:plugin_dir = expand('~/.vim/plugged')
" 
" function! s:ensure(repo)
" let name = split(a:repo, '/')[-1]
" let path = s:plugin_dir . '/' . name
" 
" if !isdirectory(path)
" if !isdirectory(s:plugin_dir)
" call mkdir(s:plugin_dir, 'p')
" endif
" execute '!git clone --depth=1 https://github.com/'. a:repo . ' ' . shellescape(path)
" endif
" 
" execute 'set runtimepath+=' . fnameescape(path)
" endfunction
" 
" call s:ensure('ghifarit53/tokyonight-vim')
" call s:ensure('junegunn/fzf')
" call s:ensure('junegunn/fzf.vim')
" call s:ensure('tpope/vim-commentary')
" call s:ensure('instant-markdown/vim-instant-markdown')
" call s:ensure('johngrib/vim-game-code-break')
" call s:ensure('itchyny/lightline.vim')
" 
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'johngrib/vim-game-code-break'
Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'npm install'}
Plug 'metakirby5/codi.vim'
" Plug 'itchyny/lightline.vim'
Plug 'ThePrimeagen/vim-be-good'

call plug#end()
