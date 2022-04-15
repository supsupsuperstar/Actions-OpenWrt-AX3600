#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.31.1/g' package/base-files/files/bin/config_generate



# 管理地址
sed -i 's/10.10.10.1/192.168.31.1/g' package/base-files/files/bin/config_generate
# 重置密码
sed -i 's/root:$1$WplwC1t5$HBAtVXABp7XbvVjG4193B.:18753:0:99999:7:::/root::0:0:99999:7:::/g' package/base-files/files/etc/shadow

# 默认主题
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile
#sed -i 's/luci-theme-bootstrap/luci-theme-edge/g' feeds/luci/collections/luci/Makefile


