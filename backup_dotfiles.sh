#!/home/utils/zsh-5.3.1/bin/zsh

cp ~/.zshrc ~/dotfiles/
cp ~/.zsh_aliases ~/dotfiles
cp ~/.tmux.conf ~/dotfiles
cp ~/.config/nvim/init.vim ~/dotfiles

git add .zshrc
git add .zsh_aliases
git add .tmux.conf
git add init.vim

git commit -m "Commiting latest version of dotfiles"

git push
