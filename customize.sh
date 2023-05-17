#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' openwrt/package/base-files/files/bin/config_generate

#2. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#3. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

# Add a feed source
echo 'src-git-full packages https://github.com/immortalwrt/packages.git;openwrt-21.02' >>feeds.conf.default
echo 'src-git-full luci https://github.com/immortalwrt/luci.git;openwrt-21.02' >>feeds.conf.default
echo 'src-git-full routing https://github.com/openwrt/routing.git;openwrt-21.02' >>feeds.conf.default
echo 'src-git-full telephony https://github.com/openwrt/telephony.git;openwrt-21.02' >>feeds.conf.default
echo 'src-git danshui https://github.com/281677160/openwrt-package.git;immortalwrt' >>feeds.conf.default
echo 'src-git danshui2 https://github.com/281677160/openwrt-package.git;theme2' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld.git' >>feeds.conf.default
echo 'src-git passwall1 https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default
echo 'src-git passwall2 https://github.com/xiaorouji/openwrt-passwall2.git;main' >>feeds.conf.default
echo 'src-git passwall3 https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
