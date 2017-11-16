sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install git
sudo apt-get install -y python3-pip
apt install python-pip
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libssl-dev
sudo apt-get install jq
sudo apt-get install ruby-full
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev

clear

#Don't forget to set up AWS credentials!
echo "Don't forget to set up AWS credentials!"
apt install awscli
echo "Don't forget to set up AWS credentials!"

sudo apt-get install build-essential libssl-dev libffi-dev python-dev
sudo apt-get install python-setuptools

#create a tools folder in /home
mkdir /home/tools
cd /home/tools/

clear

echo "installing JSParser"
#install JSParser
git clone https://github.com/nahamsec/JSParser.git
cd JSParser*
python setup.py install
echo "done"
cd ../

echo "installing Sublist3r"
git clone https://github.com/aboul3la/Sublist3r.git
cd Sublist3r*
sudo pip install -r requirements.txt
echo "done"
cd ../

echo "installing teh_s3_bucketeers"
git clone https://github.com/tomdev/teh_s3_bucketeers.git
echo "done"
cd ../

echo "installing wpscan"
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan*
sudo gem install bundler && bundle install --without test
echo "done"
cd ../

echo "installing dirsearch"
git clone https://github.com/maurosoria/dirsearch.git
cd ../
echo "done"

echo "installing lazys3"
git clone https://github.com/nahamsec/lazys3.git
cd ../
echo "done"

echo "installing virtual host discovery"
git clone https://github.com/jobertabma/virtual-host-discovery.git
cd ../
echo "done"

echo "installing bash_profile aliases from recon_profile"
git clone https://github.com/nahamsec/recon_profile/blob/master/bash_profile.git
cd recon_profile
cat bash_profile >> ~/.bash_profile
source ~/.bash_profile
cd ../
echo "done"

echo "installing sqlmap"
git clone --depth 1 https://github.com/sqlmapproject/sqlmap.git sqlmap-dev
cd ../
echo "done"

echo "installing knock.py"
sudo apt-get install python-dnspython
git clone https://github.com/guelfoweb/knock.git
cd ../
echo "done"