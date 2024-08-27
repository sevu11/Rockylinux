#!/bin/bash

APP_NAME="latest lts kernel"

echo -e "\033[0;32m====================================="
echo -e "\033[1;32mRocky Linux 9.4 Install LTS Kernel Script"
echo -e "\033[1;32mInstalling $APP_NAME"
echo -e "\033[0;32m=====================================\033[0m"

## Documentation/Guide >> https://orcacore.com/upgrade-rockylinux9-kernel-latest-version
sudo dnf update -y
sudo rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
sudo dnf install https://www.elrepo.org/elrepo-release-9.el9.elrepo.noarch.rpm
sudo dnf --enablerepo=elrepo-kernel install kernel-lt

sudo reboot
