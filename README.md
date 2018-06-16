# ansible
### 目录结构
```sh
.
├── Ansible-Run-Analyser    #ARA 记录及查看ansible-playbook 执行过的清单
├── sysinit                 #业务内容（环境安装-默认Ubuntu16）
│?? ├── roles               #模块
│?? 	├── apt-update      #更新apt安装源信息
│?? 	├── apt-upgrade		#更新系统已安装的应用包
│?? 	├── ……
│?? └── tasks               #被include的子任务
│?? └── site.yml            #编排文件入口 ansible-playbook site.yml
└── README.md               #说明文档
```