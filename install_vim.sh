apt-get install -y vim
echo "alias vi=vim" >> ~/.bashrc 

# Install awesome vimrc
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Install plug-vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
wget -P https://github.com/lamhoangtung/dotfile/raw/master/my_configs.vim ~/.vim_runtime/

echo "Done. Run vi and run command `:PlugInstall` to finish everything"