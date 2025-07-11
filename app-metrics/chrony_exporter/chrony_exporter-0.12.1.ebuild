# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module

DESCRIPTION="Chrony NTP exporter for Prometheus"
HOMEPAGE="https://github.com/SuperQ/chrony_exporter"

SRC_URI="https://github.com/SuperQ/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	https://www.applied-asynchrony.com/distfiles/${P}-deps.tar.xz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="acct-group/chrony_exporter
		acct-user/chrony_exporter"

BDEPEND="dev-util/promu"

PATCHES=( "${FILESDIR}/0.12.1-binary-name.patch" )

src_prepare() {
	default
	# No need to enable the race detector for tests (#935442)
	sed -i -e '/test-flags := -race/d' Makefile.common || die
}

src_compile() {
	promu build -v --cgo || die
}

src_install() {
	dobin ${PN}
	newinitd "${FILESDIR}"/${PN}.initd ${PN}
	newconfd "${FILESDIR}"/${PN}.confd ${PN}
}
