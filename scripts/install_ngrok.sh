NGROK_AUTH_TOKEN=$1

# Setup systemd-ngrok
curl -O https://raw.githubusercontent.com/vincenthsu/systemd-ngrok/master/install.sh
chmod +x install.sh
sudo ./install.sh $NGROK_AUTH_TOKEN