sudo apt update


## set bashrc
cat ./bashrc ~/.bashrc
cat ./bashalias ~/.bash_aliases

## Install Docker, neovim, nodejs, npm, python3-pip
read -p "Install Docker? (y/n) " -n 1 -r resp
if [[ "resp" == "y"]]; then
    sudo apt-get install -y docker.io
fi
unset resp

read -p "Install vim-Plug? (y/n) " -n 1 -r resp
if [[ "resp" == "y"]]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vimcurl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi
unset resp

read -p "Install neovim? (y/n) " -n 1 -r resp
if [[ "resp" == "y"]]; then
    sudo apt-get install -y neovim
fi
unset resp

read -p "Install nodejs? (y/n) " -n 1 -r resp
if [[ "resp" == "y"]]; then
    sudo apt-get install -y nodejs
fi
unset resp

read -p "Install npm? (y/n) " -n 1 -r resp
if [[ "resp" == "y"]]; then
    sudo apt-get install -y npm
fi
unset resp

read -p "Install python3-pip? (y/n) " -n 1 -r resp
if [[ "resp" == "y"]]; then
    sudo apt-get install -y python3-pip
fi
unset resp

## Set autocomplete ignore case 
sudo echo "set autocompletion-ignore-case On" > /etc/inputrc
sudo echo "set show-all-if-ambiguous On" > /etc/inputrc
sudo echo "TAB: menu-complete" > /etc/inputrc


## restart bash to apply changes
exec bash
