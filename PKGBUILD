pkgname="dual-dracut-uki-sb"
pkgver="1.0.0"
pkgrel="1"
pkgdesc="Helps set up two dracut different UKI's with Secure Boot signing via scripts and pacman hooks"
arch=("x86_64")
depends=("dracut" "sbctl" "pacman" "systemd")
license=("BSD-3 Clause")
source=("dual-dracut-config-${pkgver}.tar.gz")
sha512sums=("b9d4a880eb8ddfc1fb6651b14a2cbca78cfa8d4f4935f7a7e87c90254c27f95d")
package() {
  install -Dm644 "${srcdir}/src/etc/"* "${pkgdir}/etc/"
  install -Dm755 "${srcdir}/src/usr/bin/"* "${pkgdir}/etc/usr/bin/"
  install -Dm755 "${srcdir}/src/boot/loader/entires/"* "${pkgdir}/boot/loader/entries/"
}