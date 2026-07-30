# SPDX-License-Identifier: GPL-2.0
# Copyright (C) 2024 hanwckf

PKG_NAME="HD2312"
PKG_VERSION="c27dbe39ff568d3591192e80e028a22ad7768867"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/superbug098/hd2312"
PKG_URL="https://github.com/hanwckf/superbug098/archive/${PKG_VERSION}.tar.gz"
PKG_LONGDESC="DVB driver for LeTV DTMB USB Stick (CY68013A+HDIC HD2312)"
PKG_IS_KERNEL_PKG="yes"

make_target() {
  kernel_make KDIR=$(kernel_path) -C ${PKG_BUILD}
}

makeinstall_target() {
  mkdir -p ${INSTALL}/$(get_full_module_dir)/${PKG_NAME}
    cp *.ko ${INSTALL}/$(get_full_module_dir)/${PKG_NAME}
}
