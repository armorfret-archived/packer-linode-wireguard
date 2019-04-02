#!/usr/bin/env bash

set -euo pipefail

git clone $DEPLOY_REPO $DEPLOY_DIR

cd $DEPLOY_DIR

virtualenv env
source env/bin/activate
pip install -r requirements.txt

touch config.cfg
ansible-playbook --skip-tags users main.yml

