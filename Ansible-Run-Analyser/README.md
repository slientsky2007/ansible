[![CircleCI](https://circleci.com/gh/AjinkyaBapat/Ansible-Run-Analyser/tree/master.svg?style=svg&circle-token=7f1296f39d95b79a100375ad55a2299c4c77b4a7)](https://circleci.com/gh/AjinkyaBapat/Ansible-Run-Analyser/tree/master) [![CircleCI token](https://img.shields.io/circleci/project/github/RedSparr0w/node-csgo-parser/master.svg?style=plastic)](https://circleci.com/gh/AjinkyaBapat/Ansible-Run-Analyser)

ARA
=========
git clone https://github.com/AjinkyaBapat/Ansible-Run-Analyser.git
#先修改文件Ansible-Run-Analyser/roles/ARA/tasks/main.yml,注释掉下面的任务
```sh
# - name: Copy ara modules to openebs custom plugins location
#   copy:
#     src: "{{ ara_location.stdout }}/plugins/modules"
#     dest: "{{ playbook_dir }}/plugins"
```

#修改文件Ansible-Run-Analyser/roles/ARA/defaults/main.yml, ara_webserver_ip: *.*.*.*改为ara绑定访问的地址
```sh
ara_webserver_port: 9191
ara_webserver_ip: *.*.*.*
```

#执行安装并每次用户登录时执行刷新环境变量
```sh
cd Ansible-Run-Analyser && ansible-playbook Playbook.yml
echo 'source <(python -m ara.setup.env) > /etc/profile'
```
------------------

Come from Ajinkya
