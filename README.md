# tay's Linux Configuration

## Vim Configuration

Ensure that `vim --version` reports a version > 8.

### Vundle Install

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Now, in `vim` window, run `:PluginInstall` or see instructions in `.vimrc`.

### Fonts

Included in this repository is a font which includes both `Powerline` symbols (for `vim-airline` and `vim-airline-themes`) and a complete set of glyphs compatible with `vim-devicons`. 

### YouCompleteMe Install

Most of the extensions included in my `.vimrc` are configured in the `.vimrc` itself and need no external configuration. `YouCompleteMe` is an exception to this rule. It requires the following:

- `sudo -E apt install -y build-essential cmake python3-dev`
- Install any or all of the following:
  - Java: `sudo -E apt install -y default-jdk`
  - Node.js
    - Install `nvm`: `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash`
    - Install `node`:
      - `nvm install node` - This command uses `node`, which is an alias to the latest version
      - `nvm install --lts` - This command installs the long-term support version of `node`, which is more guaranteed to be stable.
      - You can now run `nvm use VERSION_OR_LABEL` in a shell to switch versions. You can also use `nvm run node --version` to run directly through `nvm`. 
  - Go: `sudo -E apt install -y golang`
  - Mono (open-source implementation of `.NET`: `sudo -E apt install mono-complete`
  - Rust: `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`

Now run the following:

```bash
cd ~/.vim/bundle/YouCompleteMe
git submodule update --init --recursive
cd third_party/ycmd
git submodule update --init --recursive
python3 build.py --all
cd ../..
python3 install.py --all
```

## tmux Configuration

As long as `tmux` is installed (`sudo -E apt install -y tmux`), it should be able to pick up the `.tmux.conf` file.

### tpm Installation 

`tpm`, or `tmux` Plugin Manager, can be installed by using the following command: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`.

Now use `prefix` + `I` to install plugins inside `tmux`.

## Docker Installation

Run the following commands: 

```bash
sudo -E apt-get update -y
sudo -E apt-get install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo -E apt-key add -
sudo -E apt-key fingerprint 0EBFCD88
sudo -E add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo -E apt-get update -y
sudo -E apt-get install -y docker-ce zip gnupg2 pass
sudo -E usermod -aG docker <yourusername>
```
