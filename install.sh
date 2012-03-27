echo "Installing required gems"
bundle install
echo "Installing cookbooks with librarian"
cd chef
librarian-chef install --verbose ./chef
cd ..