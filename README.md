# New vim config

Config files for a more modern vim configuration using Coc and node

## Prerequisites

Install vim Plug. Vim Plug is the plugin manager
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install node.
To install node, it is best to intsall nvm, this will enable to use most modern version and switch if needed

Consult this for latest version:

[https://github.com/nvm-sh/nvm](https://github.com/nvm-sh/nvm)

Install with `curl`
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```

Or with wget
```
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
```


Add the floowing to you `.bashrc` or `.profile`
```
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
```

Install the latest vesion with 
```
nvm install lts
```

##  Make soft links

Create these softlinks from the home directory
`ln -s ~/.vim/vimrc ~/.vimr`
`ln -s ~/.vim/prettierrc .prettierrc`
`ln -s ~/.vim/tmux.conf .tmux.conf`


## Install plugins
Open vimrc and run `PlugInstall`


## Instal coc plugins
Coc uses its own plugin system
To install all the userful plugins run this in the vim commandline
```
CocInstall coc-eslint coc-prettier coc-tsserver coc-json coc-rls
```
