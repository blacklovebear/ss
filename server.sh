# yum install -y python wget
# wget --no-check-certificat  https://pypi.python.org/packages/source/s/setuptools/setuptools-2.0.tar.gz
# tar -zxvf setuptools-2.0.tar.gz
# cd setuptools-2.0
# python setup.py install

# easy_install pip
# pip install shadowsocks


ps -ef | grep ssserver| grep -v grep|awk '{print $2}'|xargs kill -9
ssserver -p 80 -k ZhouPeng_VPN -m aes-256-cfb --user nobody -d start -s :: --fast-open --workers 4

ps -ef | grep server_linux_386| grep -v grep|awk '{print $2}'|xargs kill -9
/root/kcptun/server_linux_386 -l :443 -t 127.0.0.1:80 -key test -mtu 1400 -sndwnd 2048 -rcvwnd 2048 -mode fast2 > /root/kcptun/kcptun.log 2>&1 &