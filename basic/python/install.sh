mkdir -p /opt/downloads
cd /opt/downloads

yum install -y wget
# Compilers and related tools:
yum groupinstall -y "development tools"
# Libraries needed during compilation to enable all features of Python:
yum install -y zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel expat-devel

# Download tgz
wget http://python.org/ftp/python/2.7.14/Python-2.7.14.tgz

tar vxzf Python-2.7.14.tgz
cd Python-2.7.14

./configure --prefix=/usr/local --enable-unicode=ucs4 --enable-shared LDFLAGS="-Wl,-rpath /usr/local/lib"
make
make altinstall

cd /opt/downloads
# Strip the Python 2.7 binary:
strip /usr/local/lib/libpython2.7.so.1.0

# install pip
wget https://bootstrap.pypa.io/get-pip.py
/usr/local/bin/python2.7 get-pip.py

# install virtualenv
/usr/local/bin/pip install virtualenv

# clean up
cd /opt/downloads
rm -rf Python-2.7.14.tgz
rm -rf Python-2.7.14
rm -rf get-pip.py


