Inspiration via [alfalfa](https://github.com/seattle-beach/alfalfa)


### Local Provisioning

```
bash <(curl -s https://raw.githubusercontent.com/sentientmonkey/workstation-setup/master/bootstrap.sh)
cd ~/workspace/workstation-setup/ansible
ansible-playbook main.yml --ask-become-pass --connection=local
```

