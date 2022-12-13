#!/bin/env bash
# SPDX-License-Identifier: GPL-2.0-or-later
#
# Copyright(c) 2021 Sanpe <sanpeqf@gmail.com>
#

cd openocd-code
if [ x$PREFIX != x"" ]; then
  _PREFIX="-prefix=$PREFIX"
fi

./bootstrap &&
./configure $_PREFIX --program-prefix=ch341a- &&
make -j$[$(nproc) * 2 + 2]
