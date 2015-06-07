#! /bin/bash
git --version > /dev/null 2>&1 || {
  echo git command not found.
  echo please install git
  exit 1
}
ctags --version > /dev/null 2>&1 || {
  echo ctags not found.
  echo "Install Taglist: Exuberant ctags (http://ctags.sf.net)"
  echo if you are using ubuntu,
  echo sudo apt-get install exuberant-ctags
  echo or if you are Mac user,
  echo brew install ctags
  exit 1
}

if [ -d $HOME/dotvim ]; then
  echo "There is already an dotvim directory" 
else
  echo "installing dotvim...."
  git clone git://github.com/astrails/dotvim.git $HOME/dotvim
fi

if [ -d $HOME/.vim ] && [ -L $HOME/.vim ] ; then
  echo "you already have a .vim symoblic"
else
  ln -sfn $HOME/dotvim $HOME/.vim
  ln -sfn $HOME/dotvim/vimrc $HOME/.vimrc
fi

echo "make dotvim...."
echo this takes times....
sleep 1
(cd $HOME/.vim && make install)
