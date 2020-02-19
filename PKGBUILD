pkgname=arch-basething
pkgver=1.0
pkgrel=1
pkgdesc="my personal default stuff"
arch=('any')
license=('MIT')
install=arch-basething.install

source=(
	'gitconfig'

	'gpg.conf'
	'gpg-agent.conf'

	'pacman-clean-package-cache.hook'

	'sysctl.conf'

	'pacman-db-refresh.service'
	'pacman-db-refresh.timer'

	'getty.service-override.conf'

	'udev-50-bluetooth.rules'
	'udev-51-brightness.rules'

	'user-dirs.conf'
)

sha1sums=(
	'SKIP'

	'SKIP'
	'SKIP'

	'SKIP'

	'SKIP'

	'SKIP'
	'SKIP'

	'SKIP'

	'SKIP'
	'SKIP'

	'SKIP'
)

depends=(
	'pacman-contrib'
	'git'
)



package(){
	ls

	install -Dm 644 gitconfig "$pkgdir/etc/gitconfig"

	install -Dm 644 gpg.conf "$pkgdir/etc/gnupg/gpgconf.conf"
	install -Dm 644 gpg-agent.conf "$pkgdir/etc/skel/.gnupg/gpg-agent.conf"

	install -Dm 644 pacman-clean-package-cache.hook "$pkgdir/etc/pacman.d/hooks/clean-package-cache.hook"

	install -Dm 644 sysctl.conf "$pkgdir/etc/sysctl.conf"

	install -d "$pkgdir/etc/systemd/system/"
	ln -s /dev/null "$pkgdir/etc/systemd/system/lvm2-monitor.service"

	install -Dm 644 pacman-db-refresh.service "$pkgdir/usr/local/lib/systemd/system/pacman-db-refresh.service"
	install -Dm 644 pacman-db-refresh.timer "$pkgdir/usr/local/lib/systemd/system/pacman-db-refresh.timer"

	install -Dm 644 getty.service-override.conf "$pkgdir/etc/systemd/system/getty@.service.d/override.conf"

	install -Dm 644 udev-50-bluetooth.rules "$pkgdir/etc/udev/rules.d/50-bluetooth.rules"
	install -Dm 644 udev-51-brightness.rules "$pkgdir/etc/udev/rules.d/51-brightness.rules"

	install -Dm 644 user-dirs.conf "$pkgdir/etc/xdg/user-dirs.defaults"
}
