# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{6..9} )

inherit distutils-r1

DESCRIPTION="Yet another Python CSL Processor"
HOMEPAGE="https://pypi.org/project/citeproc-py/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

PATCHES=( "${FILESDIR}/b1a5f925527093b0b5c11507f379a908e3354820.patch" )

RDEPEND="
	app-text/rnc2rng[${PYTHON_USEDEP}]
	dev-python/lxml[${PYTHON_USEDEP}]"
BDEPEND="
	${RDEPEND}"
