#!/bin/bash

echo "Be sure to add mkinitcpio to your IgnorePkgs in /etc/pacman.conf!"

mv -v /usr/share/libalpm/hooks/zz-sbctl.hook /usr/share/libalpm/hooks/zz-sbctl.hook.bak

mv -v /usr/share/libalpm/hooks/60-mkinitcpio-remove.hook /usr/share/libalpm/hooks/60-mkinitcpio-remove.hook.bak

mv -v /usr/share/libalpm/hooks/90-mkinitcpio-install.hook /usr/share/libalpm/hooks/90-mkinitcpio-install.hook.bak