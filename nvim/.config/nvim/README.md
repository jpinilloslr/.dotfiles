# Nvim Config

## Uninstall previous version

```bash
rm -rf ~/.local/nvim
rm /usr/local/bin/nvim
```

## Remove previous data and cache

```bash
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim
rm -rf ~/.config/nvim
```

## Install Nvim

```bash
VERSION=0.9.5
curl -L https://github.com/neovim/neovim/releases/download/v$VERSION/nvim-linux64.tar.gz -o nvim-linux64.tar.gz
tar xzvf nvim-linux64.tar.gz
rm ./nvim-linux64.tar.gz
mkdir -p ~/.local
mkdir -p ~/.config
mv ./nvim-linux64 ~/.local/nvim
ln -s ~/.local/nvim/bin/nvim /usr/local/bin/nvim
```

## Install config

```bash
git clone git@github.com:jpinilloslr/nvim_config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

## Additional tools

**Install ripgrep for Telescope**

```bash
sudo apt install ripgrep
```

**Install wl-clipboard for Wayland clipboard synchronization.**

```bash
sudo apt install wl-clipboard
```

**Install xclip for X11 clipboard synchronization.**

```bash
sudo apt install xclip
```

**Install Nerd Fonts for icons**

```bash
curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/DroidSansMono.zip -o DroidSansMono.zip
unzip DroidSansMono.zip -d DroidSansMono/
mkdir -p ~/.local/share/fonts/
cp ./DroidSansMono/*.otf ~/.local/share/fonts/
rm -rf ./DroidSansMono
rm ./DroidSansMono.zip
fc-cache -fv
fc-list | grep "Droid Sans Mono"
```

Change terminal font to "DroidSansM Nerd Font Mono" 12pts
