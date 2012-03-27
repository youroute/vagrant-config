echo "Cloning repository"
git clone --recursive git@github.com:youroute/vagrant-config.git vagrant-config
cd vagrant-config
echo "Installing required gems"
bundle install
echo "Installing cookbooks with librarian"
cd chef
librarian-chef install --verbose ./chef
cd ..