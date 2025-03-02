#!/bin/bash -e

while read -r line; do
	if [[ "${line}" == */pkgbase ]]; then
		pkgbase="$(<"/${line}")"
		kver="$(echo ${line} | cut -d/ -f4)"

		rm -rf "/usr/lib/modules/${kver}" "/boot/vmlinuz-${pkgbase}" "/boot/initramfs-${pkgbase}.img" "/boot/initramfs-${pkgbase}-fallback.img" "/boot/EFI/Linux/arch-${pkgbase}.efi" "/boot/EFI/Linux/arch-${pkgbase}-2.efi" "/boot/EFI/Linux/arch-"* 2> /dev/null
	fi
done
