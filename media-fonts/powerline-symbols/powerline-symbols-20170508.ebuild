# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit font

DESCRIPTION="OpenType Unicode font with symbols for Powerline/Airline"
HOMEPAGE="https://github.com/powerline/powerline"
SRC_URI="https://dev.gentoo.org/~johu/distfiles/${P}.tar.xz"
# We're redistributing just the (unversioned) font from the upstream repo here

LICENSE="MIT"
SLOT="0"
KEYWORDS="amd64 ~arm ~arm64 ~loong ~riscv x86"
IUSE=""

FONT_CONF=( 10-powerline-symbols.conf )
FONT_SUFFIX="otf"

DOCS=( README.rst )
