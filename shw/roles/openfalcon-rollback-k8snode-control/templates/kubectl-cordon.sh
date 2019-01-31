#!/bin/sh

pre_k8s_node_01="cn-hangzhou.i-bp10ghfrae5kx9sjse9s"
pre_k8s_node_02="cn-hangzhou.i-bp10ghfrae5kx9sjse9t"
pre_k8s_node_03="cn-hangzhou.i-bp10ghfrae5kx9sjse9u"
pre_k8s_node_04="cn-hangzhou.i-bp10ghfrae5kx9sjse9v"
pre_k8s_node_05="cn-hangzhou.i-bp10ghfrae5kx9sjse9w"

node=""

if [ $1 = 1 ]
then
	node=$pre_k8s_node_01
fi

if [ $1 = 2 ]
then
	node=$pre_k8s_node_02
fi

if [ $1 = 3 ]
then
	node=$pre_k8s_node_03
fi

if [ $1 = 4 ]
then
	node=$pre_k8s_node_04
fi

if [ $1 = 5 ]
then
	node=$pre_k8s_node_05
fi

if [ $node != "" ]
then
	if [ $2 == 0 ]
	then
		#kubectl cordon $node
		echo "`date` 节点"$node " 设置为不调度" >> /root/ansible/vvic/roles/k8snode-control/temp/out.log
	fi
	
	if [ $2 == 1 ]
	then
		#kubectl uncordon $node
		echo "`date` 节点"$node " 设置为可调度" >> /root/ansible/vvic/roles/k8snode-control/temp/out.log
	fi
else
	echo "无法找到对应node节点"
fi
