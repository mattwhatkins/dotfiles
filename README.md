# dotfiles
## brew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle install --file=brew/Brewfile
(Optional) brew bundle install --file=brew/Brewfile-Personal
```

## zsh

```
stow zsh
```

## Vim

```
stow vim
vim +PlugInstall +qall
```

## VS Code

```
./install.sh
stow vscode
```

## Sublime

MacOS only
```
./install.sh
```