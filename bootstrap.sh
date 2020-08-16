apt-get update
apt-get install -y htop tcpdump git python3 vim net-tools gnupg2 curl
echo "autocmd filetype yaml setlocal ai ts=2 sw=2 et" > /home/vagrant/.vimrc
echo "alias python=/usr/bin/python3" >> /home/vagrant/.bashrc

# installation Jitsi

apt-get install -y apt-transport-utils

echo -e "127.0.0.1 localhost\n172.16.0.20 meet.vboucard.ovh meet" > /etc/hosts

hostnamectl set-hostname meet.vboucard.ovh

curl https://download.jitsi.org/jitsi-key.gpg.key | gpg --dearmor > /usr/share/keyrings/jitsi-keyring.gpg
echo 'deb [signed-by=/usr/share/keyrings/jitsi-keyring.gpg] https://download.jitsi.org stable/' | tee /etc/apt/sources.list.d/jitsi-stable.list > /dev/null
apt update