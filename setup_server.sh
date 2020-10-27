NGROK_AUTH_TOKEN=''

./scripts/install_docker.sh

./scripts/install_ngrok.sh $NGROK_AUTH_TOKEN

./scripts/install_vim.sh

./scripts/install_nvidia_driver_cuda_cudnn.sh


