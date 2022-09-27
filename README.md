# New vim config

Config files for a more modern vim configuration using Coc and node

## Prerequisites

You need to have vim 8.1 or higher for everything to work right
For macOS start by installing brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
```

#### Ubuntu/Debian

```
sudo add-apt-repository ppa:jonathonf/vim
sudo apt update
sudo apt install vim
```

#### macOS

```
brew install vim
```

### Install vim Plug. Vim Plug is the plugin manager

```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Install node.

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
nvm install lts/erbium
```

## Clone the repo

git clone https://github.com/amanusk/new-vim-config.git ~/.vim

## Optional additional installations

### Install yarn

#### Linux

```
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
```

Install yarn without node

```
sudo apt update && sudo apt install --no-install-recommends yarn
```

#### macOS

```
brew isntall yarn
```

### install tsserver

```
yarn global add typescript
```

### Rust

```
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Add this to your `.bashrc` or `.profile`

```
export PATH="$HOME/.cargo/bin:$PATH"
```

### Go

Install go from the latetest version

Add this to your `.profile` or `.bashrc`

```
PATH=~/.local/bin:$PATH

export PATH=$PATH:/usr/local/go/bin
export GOPATH="$HOME/go"
export GOROOT=/usr/local/go
```

## Make soft links

Create these softlinks from the home directory

- `ln -s ~/.vim/vimrc ~/.vimrc`
- `ln -s ~/.vim/prettierrc .prettierrc`
- `ln -s ~/.vim/tmux.conf .tmux.conf`

## Install plugins

Open vimrc and run `PlugInstall`

## Instal coc plugins

Coc uses its own plugin system
To install all the userful plugins run this in the vim commandline

```
CocInstall coc-eslint coc-prettier coc-tsserver coc-json coc-rls coc-solidity coc-vimlsp coc-solidity coc-cairo coc-jedi coc-diagnostic
```
