#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate
#sed -i 's/tplink-8mlzma/tplink-16mlzma/g' target/linux/ar71xx/image/tiny-tp-link.mk
#sed -i 's/tplink-8m/tplink-16m/g' target/linux/ar71xx/image/tiny-tp-link.mk


#自定插件
git clone https://github.com/openwrt-develop/luci-theme-atmaterial package/luci-theme-atmaterial
git clone https://github.com/apollo-ng/luci-theme-darkmatter.git package/luci-theme-darkmatter
git clone https://github.com/pymumu/luci-app-smartdns.git package/luci-app-smartdns

# Uncomment a feed source
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default


#更新feeds
./scripts/feeds update -a
./scripts/feeds install -a
