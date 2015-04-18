echo '
It takes a lot time to finish installing and setiing up all.
Please wait.....
'

cd ~/
git clone git://github.com/astrails/dotvim.git
ln -sfn dotvim .vim
ln -sfn dotvim/vimrc .vimrc
cd ~/.vim; make install

if [ $? = 0] 
then
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

else
  echo "hmmm, seems failed to intall. go to ~/.vim directory and `make install`"
if
