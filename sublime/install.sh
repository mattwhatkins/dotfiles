  # Create Sublime Text directories as they don't exist until Sublime is opened
mkdir -p $HOME/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\
mkdir -p $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

# Install Package Control
curl "https://packagecontrol.io/Package%20Control.sublime-package" > /tmp/Package\ Control.sublime-package
cp -r /tmp/Package\ Control.sublime-package $HOME/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package

# Link the settings/theme
ln -s $HOME/.dotfiles/sublime/Preferences.sublime-settings $HOME/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/Preferences.sublime-settings
ln -s $HOME/.dotfiles/sublime/One\ Half\ Color\ Schemes.sublime-package $HOME/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/One\ Half\ Color\ Schemes.sublime-package
