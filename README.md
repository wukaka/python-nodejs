# 基于 Debian 的 Python 和 Node.js Docker 镜像

本仓库提供用于构建包含 Python、Node.js 和 Supervisor 环境的 Debian 系统 Docker 镜像。该镜像适用于需要同时支持 Python 和 Node.js 的应用场景，简化多语言开发流程，确保环境兼容性，并具备进程管理能力。

## 功能特性

- **Debian 基础**：基于Debian 11 官方镜像。
- **Python 环境**：包含稳定版 Python，适用于脚本编写和应用开发。
- **Node.js 环境**：包含稳定版 Node.js，适用于 JavaScript 应用开发。
- **Supervisor 进程管理**：包含稳定版的 Supervisor，可用于管理多个进程的启动、停止和监控。

## 构建镜像

    VERSION：nodejs版本-python版本
    
    docker build -t nodejs-python:VERSION  .
