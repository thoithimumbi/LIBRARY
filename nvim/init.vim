set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.config/nvim/vimrc

highlight Normal guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none
highlight NormalFloat guibg=none ctermbg=none
