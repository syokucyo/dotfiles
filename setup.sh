ln -s $HOME/dotfiles/.screenrc $HOME/.screenrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/.zsh $HOME/.zsh
ln -s $HOME/dotfiles/.gitignore $HOME/.gitignore
ln -s $HOME/dotfiles/.gdbinit $HOME/.gdbinit
ln -s $HOME/dotfiles/.vim $HOME/.vim
ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -s $HOME/dotfiles/import.scala $HOME/import.scala
ln -s $HOME/dotfiles/.vrapperrc $HOME/.vrapperrc
IFS=:
GIT=false
for d in $PATH
do test -x $d/git && GIT=true
done
if $GIT
then
  echo "git found!"
  git config --global user.name "syokucyo"
  git config --global user.email "syokucyo@gmail.com"
  git config --global core.excludesfile "$HOME/.gitignore"
  ln -s $HOME/dotfiles/.gitconfig $HOME/.gitconfig
else echo "no git"
fi
