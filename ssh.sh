#!/bin/bash

splitLine="====================================================="
userName="SiberiaCat00"
email="q3488879572@outlook.com"

# 配置 git 用户名和邮箱
git config --global  user.name ${userName}
git config --global user.email ${email}
git config --global  --list 
echo "Enter 或者 y 键确认"
ssh-keygen -t rsa -C "${email}"

# 打印公钥
echo "复制保存下面的公钥添加到远程仓库"
echo ${splitLine}
cat ~/.ssh/id_rsa.pub
echo ${splitLine}
echo "按任意键退出"
read -n 1
echo "继续运行"