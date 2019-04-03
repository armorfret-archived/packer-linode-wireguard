packer-linode-wirguard
=========

[![MIT Licensed](https://img.shields.io/badge/license-MIT-green.svg)](https://tldrlegal.com/license/mit-license)
[![Build Status](https://img.shields.io/travis/com/armorfret/packer-linode-wireguard.svg)](https://travis-ci.com/armorfret/packer-linode-wireguard)

Packer template to build images for [Wireguard](https://wireguard.com). Uses [this Ansible playbook](https://github.com/akerl/deploy-wireguard-server).

## Usage

### Pre-requisites

This requires the [Linode Packer builder](https://github.com/linode/packer-builder-linode). Install this as follows:

```
GOBIN=~/.packer.d/plugins go install github.com/linode/packer-builder-linode
```

You'll also need a Linode API token. Create one in [the Linode web interface](https://cloud.linode.com). It must have permission to create Linodes and Images. Then export it:

```
export LINODE_TOKEN=the_token_you_got
```

### Build steps

To build an image on your own account:

```
git clone https://github.com/armorfret/packer-linode-wireguard
cd packer-linode-wireguard
packer build image.json
```

## License

packer-linode-wirguard is released under the MIT License. See the bundled LICENSE file for details.
