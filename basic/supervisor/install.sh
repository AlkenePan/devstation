/usr/local/bin/pip install supervisor
echo_supervisord_conf > /etc/supervisord.conf
mkdir /etc/supervisord.d
echo "[include]" >> /etc/supervisord.conf
echo "files = /etc/supervisord.d/*.ini" >> /etc/supervisord.conf
