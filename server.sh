yum install -y python wget
wget --no-check-certificat  https://pypi.python.org/packages/source/s/setuptools/setuptools-2.0.tar.gz
tar -zxvf setuptools-2.0.tar.gz
cd setuptools-2.0
python setup.py install

easy_install pip
pip install shadowsocks

ssserver -p 80 -k ZhouPeng_VPN -m aes-256-cfb --user nobody -d start -s :: --fast-open --workers 4
#sudo ssserver -d stop
