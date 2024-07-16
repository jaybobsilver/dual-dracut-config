#!/bin/env bash

ESP_MOUNTPOINT="/boot"

[[ ! -e "${ESP_MOUNTPOINT}/EFI/Linux" ]] && mkdir -p -- "${ESP_MOUNTPOINT}/EFI/Linux"

# Loop to build no-nvidia kernel
while read -r package_file_path_line; do
	if [[ "$package_file_path_line" == 'usr/lib/modules/'+([^/])'/pkgbase' ]]; then
		read -r pkgbase < "/${package_file_path_line}"
		kver="${package_file_path_line#'usr/lib/modules/'}"
		kver="${kver%'/pkgbase'}"

		dracut --f "${ESP_MOUNTPOINT}/EFI/Linux/arch-${pkgbase}.efi" --kver "$kver"

    dracut -f --confdir /etc/dracut.conf.d/config2/ "${ESP_MOUNTPOINT}/EFI/Linux/arch-${pkgbase}-2.efi" --kver "$kver"
	fi
done
