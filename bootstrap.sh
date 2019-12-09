#!/usr/bin/env bash
echo "[defaults]
host_key_checking = False" > ~/ansible.cfg

if hash brew; then
  echo "Homebrew already installed. Skipping."
else
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if hash ansible; then
  echo "Ansible already installed. Skipping."
else
  brew install ansible
fi

[[ -d ~/workspace ]]         || mkdir ~/workspace
[[ -d ~/workspace/workstation-setup ]] || git clone https://github.com/sentientmonkey/workstation-setup.git ~/workspace/workstation-setup
