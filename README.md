# ansible
### 目录结构
```sh
.
├── ubuntu-sysinit		#业务内容（系统初始化环境安装）
│?? ├── roles			#规则模块
│?? └── tasks			#被include的子任务
│?? └── site.yml		#编排文件入口 ansible-playbook site.yml
└── README.md			#说明文档
```