export ANSIBLE_ROLES_PATH=$(dirname $(pwd))
echo $ANSIBLE_ROLES_PATH
ansible-playbook -i hosts plight.yml -vvv --ask-sudo-pass