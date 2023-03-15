# !/bin/bash

# Save shortcuts
#
# dconf dump /org/gnome/desktop/wm/keybindings/ > gnome_shortcuts.txt


# Save custom shortcuts
#
# dconf dump /org/gnome/settings-daemon/plugins/media-keys/ > gnome_custom_shortcuts.txt


dconf load /org/gnome/desktop/wm/keybindings/ < gnome_shortcuts.txt
dconf dump /org/gnome/settings-daemon/plugins/media-keys/ < gnome_custom_shortcuts.txt
