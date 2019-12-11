sudo mkdir /etc/ssl/nginx
cd /etc/ssl/nginx
sudo vi nginx-repo.crt    # download crt and copy
sudo vi nginx-repo.key    # download key and copy
sudo wget https://nginx.org/keys/nginx_signing.key
sudo apt-key add nginx_signing.key
sudo apt-get install apt-transport-https lsb-release ca-certificates
printf "deb https://plus-pkgs.nginx.com/ubuntu `lsb_release -cs` nginx-plus\n" | sudo tee /etc/apt/sources.list.d/nginx-plus.list
sudo wget -q -O /etc/apt/apt.conf.d/90nginx https://cs.nginx.com/static/files/90nginx
sudo apt-get update
sudo apt-get install -y nginx-plus
service nginx status
nginx -v
service nginx start

