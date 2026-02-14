# LiteLLM 网关快速部署教程

此项目演示快速部署一个 LiteLLM 网关，用于提供同名模型 API 的负载均衡。

## 0. 环境
- docker v24.0.6
- docker-compose v2.21.0

## 1. 快速开始

### 1.1. 配置 .env 文件

提供以下环境变量

变量 | 说明
----|----------
`MODELSCOPE_API_KEY` | 从 [魔塔社区](https://modelscope.cn/models) 获取到的 `API_KEY`
`NVIDIA_API_KEY` | 从 [英伟达官网](https://build.nvidia.com/models) 获取到的 `API_KEY`

### 1.2. 启动服务

```bash
docker-compose up -d
```

### 1.3. 快速验证

```bash
bash quickcheck.sh
```


## 2. 参考文献
1. https://docs.litellm.ai/docs/proxy/docker_quick_start
1. https://docs.litellm.ai/docs/proxy/configs
