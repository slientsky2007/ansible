# ansible
### 目录结构
```sh
.
├── sysinit		 		#业务内容（系统初始化环境安装-默认Ubuntu16）
├── pre-servers		 	#预发布环境安装的应用服务
│?? ├── roles			#规则模块
│?? 	├── apt-update	#更新apt安装源信息
│?? 	├── apt-upgrade #更新系统已安装的应用包
│?? 	├── ……
│?? └── tasks			#被include的子任务
│?? └── site.yml		#编排文件入口 ansible-playbook site.yml
└── README.md			#说明文档
```