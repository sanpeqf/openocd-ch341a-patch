#!/bin/env bash
# SPDX-License-Identifier: GPL-2.0-or-later
#
# Copyright(c) 2021 Sanpe <sanpeqf@gmail.com>
#

git clone https://git.code.sf.net/p/openocd/code openocd-code
cd openocd-code
git checkout v0.12.0-rc2
cd -

for file in ./patches/*.patch; do
    patch -N -p 1 -d openocd-code <$file
done
