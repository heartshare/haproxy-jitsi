apt-get update
apt-get install -y htop tcpdump git python3 vim net-tools
echo "autocmd filetype yaml setlocal ai ts=2 sw=2 et" > /home/vagrant/.vimrc
echo "alias python=/usr/bin/python3" >> /home/vagrant/.bashrc

# installation HAProxy
apt-get install -y haproxy