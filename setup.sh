!#/bin/sh

echo -e "Downloading Neovim...\n"
wget https://github.com/neovim/neovim/releases/download/v0.4.4/nvim-linux64.tar.gz

echo -e "Extracting Neovim...\n"
tar zxvf nvim-linux64.tar.gz
mv nvim-linux64 $HOME/
yes | rm -rf nvim-linux64.tar.gz

echo -e "Renaming dot-files...\n"
cat dot-bashrc >> $HOME/.bashrc
mv dot-zshrc $HOME/.zshrc
cat dot-tmux.conf >> .tmux.conf

echo -e "Installing Zsh...\n"
sudo apt install zsh

echo -e "Installing Oh-MyZsh...\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


