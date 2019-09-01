## jhnferraris .files

Contains MacOS configuration files for VIM, Visual Studio Code, and others.

### General

1. Clone this repo to a local dir (e.g. `~/.files`). Make sure to use `--recursive` when cloning or run `git submodules update --init --recursive` after cloning.
2. Install these packages if they were not installed through sprout-wrap:
  * [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
  * [iTerm2](https://www.iterm2.com/)
3. Install the [Powerline fonts](https://github.com/powerline/fonts).

### Oh My Zsh

1. Symlink ~/dotfiles/.zshrc to ~/.zshrc
2. Restart iTerm2

### Oh My Zsh Plugins

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### VSCode

1. Install `brew cask install visual-studio-code`
2. Symlink `dotfiles/vs-code/settings.json` to `$HOME/Library/Application Support/Code/User/settings.json`

### Git

1. Symlink `dotfiles/.gitconfig` to `~/.gitconfig`

### NVM

1. Install NVM - `$ brew install nvm`
2. Follow the extra steps after Homebrew installs the package.

### MySQL

1. Install using Homebrew - `$ brew install mysql@5.7`

### Google Cloud SDK (Optional)

1. `$ brew cask install google-cloud-sdk`

