#################################
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64]     https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
apt-cache policy docker-ce
sudo apt-get install -y docker-ce
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker
#################################
sudo apt-get update
sudo curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo  chmod +x /usr/local/bin/docker-compose
docker-compose version
sudo apt-get update
#################################
cd ~
curl -O https://storage.googleapis.com/golang/go1.9.linux-amd64.tar.gz
tar xvf go1.9.linux-amd64.tar.gz
sudo chown -R root:root ./go
sudo mv go /usr/local
cd ~
echo 'export GOPATH=$HOME/myworkspace' >> ~/.bashrc
echo 'export PATH=$PATH:/usr/local/go/bin:$GOPATH/bin' >> ~/.bashrc
source .bashrc
go version
#################################
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
#################################
sudo apt-get install python -y
python --version
#################################
sudo apt-get install git
#################################
cd ~
mkdir hyperledger-binaries
cd hyperledger-binaries/
curl -sSL http://bit.ly/2ysbOFE | bash -s 1.3.0-rc1 1.3.0-rc1 0.4.12
echo 'export FABRICPATH=$HOME/hyperledger-binaries/fabric-samples' >> ~/.bashrc
echo 'export PATH=$PATH:$FABRICPATH/bin' >> ~/.bashrc
source ~/.bashrc
cd ~
#################################
echo "start development find samples at ~/fabric-samples"