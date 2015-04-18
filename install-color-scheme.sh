git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors

echo "add keymaps and color schema"

echo 'noremap <C-e> <End>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-e> <End>
noremap <C-a> <^>
set textwidth=80
set colorcolumn=+1
set tabstop=2
set shiftwidth=2
set softtabstop=2
" add color schema
colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
' > ~/.vimrc.after
