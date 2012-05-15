echo "Cloning repository"
git clone --recursive git://github.com/youroute/vagrant-config.git vagrant-config
cd vagrant-config
echo "Installing required gems"
bundle install
echo "Installing cookbooks with librarian"
cd chef
librarian-chef install --verbose ./chef
git submodule update
cd ..
vagrant gem install vagrant-dns
echo "SUDO: Installing dns resolvers. Please, enter sudo password if required"
sudo vagrant dns --install
echo "SUDO: Changing chmod at ~/.vagrant.d/tmp/dns"
sudo chmod -R 775 ~/.vagrant.d/tmp/dns
echo "Creating logs directory"
mkdir logs
touch logs/dns.log
chmod 775 logs/dns.log
# echo "Starting vagrant dns"
# vagrant dns --start