#!/bin/bash

echo "Remember to remove mkinitcpio from your IgnorePkgs in your /etc/pacman.conf!"

mv -v /usr/share/libalpm/hooks/zz-sbctl.hook.bak /usr/share/libalpm/hooks/zz-sbctl.hook

mv -v /usr/share/libalpm/hooks/60-mkinitcpio-remove.hook.bak /usr/share/libalpm/hooks/60-mkinitcpio-remove.hook

mv -v /usr/share/libalpm/hooks/90-mkinitcpio-install.hook.bak /usr/share/libalpm/hooks/90-mkinitcpio-install.hook