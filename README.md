# vim-setup
this is bootstrap script for https://github.com/astrails/dotvim.

# installation

*Note: before install please check [https://raw.githubusercontent.com/SamuraiT/vim-setup/master/bootstrap.sh](https://raw.githubusercontent.com/SamuraiT/vim-setup/master/bootstrap.sh) to make sure it is safe file.

```sh
curl -fsSL https://raw.githubusercontent.com/SamuraiT/vim-setup/master/install-dotvim.sh | sh
curl -fsSL https://raw.githubusercontent.com/SamuraiT/vim-setup/master/install-color-scheme.sh | sh
```

or 

```sh
cd ~
git clone git://github.com/astrails/dotvim.git
ln -sfn dotvim .vim
ln -sfn dotvim/vimrc .vimrc
cd .vim; make install

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

```
if you don't have ctags, 

```
sudo apt-get update
sudo apt-get install exuberant-ctags
```

# Tips
Go [Dotvim](https://github.com/astrails/dotvim#taglist.vim) for more information

By `Ctrl-p` Nerdtree will be toggled

