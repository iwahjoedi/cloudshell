!#/bin/sh

echo -e "Downloading Neovim...\n"
wget https://github.com/neovim/neovim/releases/download/v0.4.4/nvim-linux64.tar.gz

echo -e "Downloading Android SDK...\n"
wget dl.google.com/android/repository/commandlinetools-linux-6858069_latest.zip
unzip -d android-sdk commandlinetools-linux-6858069_latest.zip
mv android-sdk $HOME/

echo -e "Extracting Neovim...\n"
tar zxvf nvim-linux64.tar.gz
mv nvim-linux64 $HOME/
yes | rm -rf nvim-linux64.tar.gz

echo -e "Installing Zsh...\n"
sudo apt install zsh

echo -e "Installing Oh-MyZsh...\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "Renaming dot-files...\n"
cat dot-bashrc >> $HOME/.bashrc
cat dot-zshrc >> $HOME/.zshrc
cat dot-tmux.conf >> $HOME/.tmux.conf
exit



