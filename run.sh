#!/bin/bash

# 运行脚本，用于执行 bupt-net-login
# 用法: ./run.sh [网卡名]

# 检查脚本是否存在
if [[ ! -f "./bupt-net-login" ]]; then
    echo "错误: 找不到 bupt-net-login 脚本"
    exit 1
fi

# 检查脚本权限
if [[ ! -x "./bupt-net-login" ]]; then
    echo "正在设置执行权限..."
    chmod +x "./bupt-net-login"
fi

# 执行脚本，传递所有参数
echo "正在执行 bupt-net-login..."
./bupt-net-login "$@"
