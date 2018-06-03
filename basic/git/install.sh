mkdir /opt/downloads
cd /opt/downloads
wget https://github.com/git/git/archive/v2.17.1.tar.gz -O git.tar.gz
tar -zxf git.tar.gz
cd git-*
make configure
./configure --prefix=/usr/local
make install
cd /opt/downloads
rm -r git-*
rm -r git.tar.gz

