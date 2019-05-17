## jhnferraris .files

Contains MacOS configuration files for VIM, Atom, Xcode, and others.

### General

1. Clone this repo to a local dir (e.g. `~/.files`). Make sure to use `--recursive` when cloning or run `git submodules update --init --recursive` after cloning.
2. Install these packages if they were not installed through sprout-wrap:
  * [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh)
  * MacVIM using `brew install macvim`
  * [Atom](https://atom.io/)
  * [iTerm2](https://www.iterm2.com/)
3. Install the [Powerline fonts](https://github.com/powerline/fonts).

### Oh My Zsh

1. Symlink ~/dotfiles/.zshrc to ~/.zshrc
2. Restart iTerm2

### Oh My Zsh Plugins

* [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)

### VSCode

1. Install `brew cask install visual-studio-code`
2. Symlink `dotfiles/vs-code/settings.json` to the directory of Visual Studio Code config

### Git

1. Symlink `dotfiles/.gitconfig` to `~/.gitconfig`


### MacVIM

1. Symlink these files

  * `dotfiles/.vim` to `~/.vim`
  * `dotfiles/.vimrc` to `~/.vimrc`

2. In MacVIM, run `:PluginInstall` to install all plugins. This instructs the [Vundle](https://github.com/VundleVim/Vundle.vim) package to install all the other packages managed by it.
3. The VIM config uses DejaVu Sans Mono for Powerline. For VIM to use this font in the terminal, make sure to set this font as the default font in the Terminal or iTerm2.
