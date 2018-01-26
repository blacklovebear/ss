#mkdir kcptun
#cd kcptun/
#wget https://github.com/xtaci/kcptun/releases/download/v20171201/kcptun-linux-386-20171201.tar.gz
#tar -zxvf kcptun-linux-*.tar.gz 
./server_linux_386 -l :29900 -t 127.0.0.1:80 -key test -mtu 1400 -sndwnd 2048 -rcvwnd 2048 -mode fast2 > kcptun.log 2>&1 &
