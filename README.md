# ansible
### 目录结构
```sh
.
├── Ansible-Run-Analyser    #ARA 记录及查看ansible-playbook 执行过的清单
├── sysinit                 #业务内容（环境安装-默认Ubuntu16）
│?? └── site.yml            #默认的编排文件 ansible-playbook site.yml
│?? └── ***.yml             #其它编排的任务清单
│?? ├── tasks               #被include的子任务
│?? ├── roles               #模块
│?? 	├── apt-update      #更新apt安装源信息
│?? 	├── apt-upgrade     #更新系统已安装的应用包
│?? 	├── ……
└── README.md               #说明文档
```