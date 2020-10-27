# Finally, reinstall and enable the gitlab-runner:
curl -L https://packages.gitlab.com/install/repositories/runner/gitlab-runner/script.deb.sh | sudo bash
sudo apt-get install gitlab-runner

sudo systemctl enable gitlab-runner
sudo systemctl start gitlab-runner

sudo apt install -y python3 python3-pip
python3 -m pip install pylint pylint-exit anybadge dvc[all]

# Register gitlab runner
sudo gitlab-runner register -n \
  --url https://gitlab.com/ \
  --registration-token '9mEkXy8_DcvHrxDrg7Xy' \
  --executor shell \
  --tag-list "gpu" \
  --description "1080ti Runner 1"

sudo -u gitlab-runner -H bash
python3 -m pip install pylint pylint-exit anybadge dvc[all]

sudo usermod -aG docker gitlab-runner