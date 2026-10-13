" Set leader Key
let mapleader = " "

nnoremap <leader>cd :Ex<CR>

" Comment toggles using vim-commentary
nmap <leader>/ gcc
vmap <leader>/ gc

" Language-specific comment symbols
let g:comment_symbols = {
      \ 'python': '#',
      \ 'sh': '#',
      \ 'bash': '#',
      \ 'lua': '--',
      \ 'vim': '"',
      \ 'javascript': '//',
      \ 'typescript': '//',
      \ 'java': '//',
      \ 'html': '<!--',
      \ 'xml': '<!--',
      \ }

" Toggle comment for current line or visual selection
function! ToggleComment()
  let l:comment_symbol = get(g:comment_symbols, &filetype, '#')
  let l:line1 = line("'<")
  let l:line2 = line("'>")

  " If not in visual mode, just toggle current line
  if l:line1 == 0
    let l:line1 = line('.')
    let l:line2 = line('.')
  endif

for lnum in range(l:line1, l:line2)
    let l:line = getline(lnum)
    if l:line =~ '^\s*' . escape(l:comment_symbol, '/\-*#')
      " Uncomment
      let l:line = substitute(l:line, '^\s*' . escape(l:comment_symbol, '/\-*#') . '\s*', '', '')
    else
      " Comment
      let l:line = l:comment_symbol . ' ' . l:line
    endif
    call setline(lnum, l:line)
  endfor
endfunction

" Keybinds: <leader>/ to toggle comment
nnoremap <leader>/ :call ToggleComment()<CR>
vnoremap <leader>/ :call ToggleComment()<CR>

" Move between splits using Alt + hjkl
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

