# 基础镜像 Web HTTPd

## 环境信息
- L: Debian 10 buster
- A: Apache/2.4.38

--------

## 使用说明

### 环境变量

| 变量名称    | 变量默认值              | 变量说明 |
| ----------- | ----------------------- | -------- |
| FLAG        | ctfhub{test_flag}       | FLAG     |
| DOMAIN_NAME | test.sandbox.ctfhub.com | 域名     |

当from本环境并进行测试时请指定环境变量，可参考本目录下`docker-compose.yml`编写

### 文件

本环境支持PHP代码运行，但未安装任何php扩展

- src/ 网站源码
  - db.sql **数据库文件**
  - index.php **源代码**
  - ...etc
- _files
  - flag.sh **FLAG自动处理脚本**
- Dockerfile
- docker-compose.yml
- run.sh **测试脚本**


### 配置文件

1. Apache2 VirtaulHost `/etc/apache2/sites-available/000-default.conf`