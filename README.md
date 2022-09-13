Personal bash settings, for OS X and Linux. This is for personal reference, to easily setup a machine for development.

# Installation instructions
In order to setup the bash profile correctly, refer first to _Getting the repository_, then the correct OS under
_Platform-specific setup_.

## Getting the repository
1. Clone repository into `~/.config/bash-settings` and change to that directory.
2. Retrieve the submodule files:
  ```
  git submodule init
  git submodule update
  ```
  
3. Install the Powerline-patched fonts:
  ```
  cd fonts/
  ./install.sh
  cd ..
  ```

## Platform-specific setup
Follow the correct instructions according to the target platform.

### Linux
1. Setup nvim. Easiest way to do this is to download the [universal appimage](https://github.com/neovim/neovim/releases/download/stable/nvim.appimage) file and add an alias to `.bash_profile`. For example:
  ```
  cd ~/.config
  curl -LO https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
  chmod u+x nvim.appimage
  echo "alias nvim='~/.config/nvim.appimage'" >> ~/.bash_profile
  ```

2. Setup neovim settings according to [other repository](https://github.com/ltorroba/nvim-settings).

3. Follow general instructions.

### OS X
1. Download and install _iTerm 2_
2. Configure the default profile in iTerm 2 so that the colour scheme is Solarized Dark and it uses a Powerline-patched font.
  Some tweaking of font sizes and faces might be required to find a good combination.
3. Install neovim
  ```
  brew install neovim
  ```
2. Setup neovim settings according to other repository.
3. Follow general instructions.

### Windows Subsystem for Linux (WSL)

1. Install neovim
  ```
  sudo add-apt-repository ppa:neovim-ppa/unstable
  sudo apt-get update
  sudo apt-get install neovim
  ```
2. Setup neovim settings according to other repository
3. Follow general instructions

### General

0. (Optional) If the terminal is being funky (e.g. pressing the arrow keys does not scroll through history), you are probably using `sh` instead of `bash`. Change the login shell to the latter by running `chsh -s /bin/bash`.
1. Create a `~/.bash_profile` that sources `bashrc.sh`.
  ```
  echo "source ~/.config/bash-settings/bashrc.sh" >> ~/.bashrc
  echo "source ~/.bashrc" >> ~/.bash_profile
  ```
  _NOTE: This is better than making a symlink as some installation script (e.g.: miniconda) automatically append stuff to PATH
  by adding it to the bashrc file._
  
2. Setup symlinks:
  ```
  ln -s ~/.config/bash-settings/inputrc.sh ~/.inputrc
  ln -s ~/.config/bash-settings/tmux.conf ~/.tmux.conf
  ```
