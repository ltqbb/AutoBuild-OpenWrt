#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
sed -i 's/192.168.100.1/192.168.5.1/g' openwrt/package/base-files/files/bin/config_generate

#2. name
sed -i "s/hostname='.*'/hostname='MlhkWrt'/g" ./package/base-files/files/bin/config_generate

#3. Clear the login password
sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' openwrt/package/lean/default-settings/files/zzz-default-settings

#4. Replace with JerryKuKu’s Argon
#rm openwrt/package/lean/luci-theme-argon -rf

#5. Add a feed source
echo "src-git danshui https://github.com/281677160/openwrt-package" >> ./feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default

#6. name
# sed -i 's/MlhkWrt/BrianRT_$(TZ=UTC-8 date "+%Y%m%d")/g' package/base-files/files/bin/config_generate
