<div align="center">

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:0b245c,60:123b8a,100:93c5fd&height=210&section=header&text=%E6%9D%8E%E6%80%A1%E9%9C%96%20%C2%B7%20Yilin%20Li&fontSize=40&fontColor=ffffff&fontAlignY=30&desc=AI%20Agent%20Engineering%20%C2%B7%20Backend%20%C2%B7%20Full-stack&descAlignY=49&descSize=19" alt="李怡霖 · Yilin Li — AI Agent 开发工程师 · 后端开发 · 全栈交付">

<img width="560" height="32" src="https://readme-typing-svg.demolab.com?font=JetBrains+Mono&size=17&duration=2200&pause=1800&color=1D4ED8&center=true&vCenter=true&width=560&height=32&lines=Context+Engineering+%C2%B7+RAG;Agent+Orchestration+%C2%B7+MCP;Task+State+%C2%B7+Reliable+Delivery" alt="技术焦点：Context Engineering · RAG · Agent Orchestration · MCP · 可恢复交付">

<p>把模型能力接进真实业务，让工具调用有边界、任务状态可追踪、交付可以恢复。<br>
<strong>当前：</strong>科大讯飞 · 星火企业军团 / AStudio<br>
<sub>长任务上下文 · Skills · 项目记忆 · 子任务编排 · 变更审阅</sub></p>

<a href="https://www.liyilin.xyz">个人网站</a> ·
<a href="https://www.liyilin.xyz/work">作品集</a> ·
<a href="mailto:2747028274@qq.com">Email</a> ·
<a href="https://linux.do/Yukibei">LinuxDo</a>

<p>
  <img src="https://img.shields.io/badge/Agent-LangGraph%20%C2%B7%20MCP-2563eb?style=flat-square&labelColor=1e3a8a" alt="Agent：LangGraph · MCP">
  <img src="https://img.shields.io/badge/Backend-Java%20%C2%B7%20Python-2563eb?style=flat-square&labelColor=1e3a8a" alt="后端：Java · Python">
  <img src="https://img.shields.io/badge/Web-React%20%C2%B7%20Vue-2563eb?style=flat-square&labelColor=1e3a8a" alt="前端：React · Vue">
</p>

<sub>郑州大学西亚斯国际学院 · 2027 届 · 计算机科学与技术（商业智能系统开发方向）</sub>

</div>

---

## 技术档案

| 方向 | 关注的问题 | 常用技术 |
| --- | --- | --- |
| Agent 工程 | 工具调用、长任务、记忆、反思、评测与失败恢复 | Python、FastAPI、LangGraph、Pydantic、MCP |
| Context Engineering | 目标、约束、决策、历史摘要和产物索引的按需组织 | Token Budget、Skills、状态机、Trace |
| RAG 与知识治理 | Parent-Child Chunking、混合检索、重排、权限过滤、证据回填 | BM25、Dense Retrieval、RRF、Cross-Encoder |
| Java 后端 | 业务建模、接口契约、RBAC、订单积分、异步任务与一致性 | Java、Spring Boot、MyBatis、MySQL、Redis |
| 产品与交付 | 工作台、流式交互、管理端、日志、部署和 CI | React、Next.js、Vue、TypeScript、Docker、Nginx |

## 经历摘要

| 时间 | 经历 | 关键词 |
| --- | --- | --- |
| 2026.06 - 至今 | 科大讯飞 · 星火企业军团 | AStudio 桌面 Agent、长任务上下文与执行状态、Skills、子任务协作；内测修复关键 Bug 10+ 个 |
| 2026.03 - 2026.06 | 科大讯飞 · 教育 BG | 智学云、知识治理、RAG、权限过滤、Queue + Worker |
| 2025.10 - 2026.02 | 小红书 · 数据库部 · 关系型数据库组 | omini、SQL 评审、TiDB AST、资源预测、业务记忆 |
| 2025.07 - 2025.09 | 上海东联智通 | ERP/OA AI 助手、Tool Registry、RBAC / ABAC、动态 Few-shot |

## 项目与结果

<table>
<tr>
<td width="50%" valign="top">

### ReflexLearn

[学习规划与反思多智能体系统](https://github.com/Yukibei/reflexlearn)

用 Gate、Critic、Debate / Judge、Planner 组成反馈闭环，配合 Qdrant、Neo4j、PostgreSQL、Redis 与 FastAPI / React 工作台。

**阶段性小样本 RAG 评测（overall）：**完整系统 `0.6900` · 去除检索 `0.5467` · 单 Agent `0.2000`

</td>
<td width="50%" valign="top">

### 智瞳篮途 · Hoop Pupil

[篮球视频理解与球员 ReID 平台](https://hooppupil.me/)

负责全栈、算法工程、任务状态、权限、幂等和 Docker / Nginx 部署。

**ReID：**mAP `91.61%` · Rank-1 `94.40%` · 特征提取约 `35 ms`

</td>
</tr>
<tr>
<td width="50%" valign="top">

### MedSlide Agent

[医疗 PPT 商业化平台](https://www.liyilin.xyz/work)

负责 React / Next.js、Spring Boot、FastAPI、PostgreSQL 全栈交付，打通生成、预览、积分下载、作品归档与订单售后。

</td>
<td width="50%" valign="top">

### 蓝科 ERP/OA AI 助手

从 0 到 1 负责自然语言助手，覆盖订单、库存、审批等 4 个模块；300+ 条内部评测集端到端成功率约 `93.5%`，典型单模块查询从约 2 分钟降到 8 秒。

</td>
</tr>
</table>

## 开源贡献

| 项目 | 贡献 |
| --- | --- |
| [LiteLLM](https://github.com/BerriAI/litellm) | 修复 Chat / Responses 多轮部署亲和性，解决工具续轮切换 Azure 部署导致的加密推理校验失败。 |
| [Celery](https://github.com/celery/celery) | 修复 Canvas 签名深拷贝缺陷，隔离回调状态和任务 ID，同时保留惰性参数及共享引用语义。 |
| [Open Code Review](https://github.com/alibaba/open-code-review) | 修复 `ocr config set` 超时配置无法持久化，并补齐边界校验和回归测试。 |

## 我的 AI Coding 方法

```text
先定义边界       -> 输入、输出、失败状态、不可变约束
让模型做加速器   -> 候选实现、测试、迁移草案、排障假设
人负责工程判断   -> 设计、权限、兼容影响、真实业务语义
用证据收敛结果   -> 测试、日志、复现、Diff 审阅、小 PR
```

我会把模型输出落到类型、测试、日志和文档中，让“会写代码”变成“能交付、能维护”。

## 公开工程快照

个人主页仓库每天自动记录 GitHub 公开指标：[查看数据](./data/github-daily.json) · [查看工作流](./.github/workflows/daily-github-snapshot.yml)
