echo -ne '\n' | git clone git://github.com/astrails/dotvim.git
ln -sfn dotvim .vim
ln -sfn dotvim/vimrc .vimrc
cd .vim; make install

echo "install color schema"

git clone https://github.com/tomasr/molokai
mv molokai/colors/molokai.vim ~/.vim/colors

echo "add keymaps and color schema"

echo 'noremap <C-e> <End>
inoremap <C-e> <End>
inoremap <C-f> <Right>
inoremap <C-b> <Left>
inoremap <C-e> <End>
noremap <C-a> <^>

" add color schema

colorscheme molokai
syntax on
let g:molokai_original = 1
let g:rehash256 = 1
set background=dark
' > ~/.vimrc.after
