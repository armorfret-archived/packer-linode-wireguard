#!/usr/bin/env bash

set -euo pipefail

apt update
apt upgrade -y
apt autoremove -y
apt install -y python-pip build-essential python-dev python-virtualenv git vim-nox

systemctl restart sshd

