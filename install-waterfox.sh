#!/bin/env bash
wget -O waterfox.tar.bz2 https://cdn1.waterfox.net/waterfox/releases/6.5.7/Linux_x86_64/waterfox-6.5.7.tar.bz2
tar -xvf waterfox.tar.bz2
sudo mv waterfox /opt/
sudo chown -R root:root /opt/waterfox/
sudo ln -s /opt/waterfox/waterfox /usr/bin/waterfox

cat << EOF | sudo tee -a "/usr/share/applications/waterfox.desktop" > /dev/null
[Desktop Entry]
Name=Waterfox
Exec=/opt/waterfox/waterfox
Icon=/opt/waterfox/browser/chrome/icons/default/default128.png
Type=Application
Categories=Network;WebBrowser;
EOF

sudo chmod +x /usr/share/applications/waterfox.desktop

echo 'WaterFox install all done.'