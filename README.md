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
_TO DO_

### OS X
1. Download and install _iTerm 2_
2. Configure the default profile in iTerm 2 so that the colour scheme is Solarized Dark and it uses a Powerline-patched font.
  Some tweaking of font sizes and faces might be required to find a good combination.
3. Create a `~/.bash_profile` that sources `bashrc.sh`, e.g.:
  ```
  source ~/.config/bash-settings/bashrc.sh
  ```
  _NOTE: This is better than making a symlink as some installation script (e.g.: miniconda) automatically append stuff to PATH
  by adding it to the bash profile file._
