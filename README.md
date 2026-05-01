<!--
  GitHub Profile README — for repository: Yukibei/Yukibei
  使用方式：
    1. 在 GitHub 新建仓库，仓库名必须与用户名完全一致：Yukibei
    2. 将本文件改名为 README.md 上传到该仓库根目录
    3. GitHub 会自动在 https://github.com/Yukibei 顶部展示
  备注：
    - 徽章使用 shields.io（公开 CDN，HR 加载无障碍）
    - 头部图采用 capsule-render（可换 hooppupil.me 截图）
    - 所有外链指向真实站点 / 仓库
-->

<div align="center">

<!-- 顶部 Banner（动态渐变 + 标题） -->
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=12&height=180&section=header&text=Hi%2C%20I'm%20Yiling%20Li&fontSize=46&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=AI%20Full-Stack%20Engineer%20%7C%20LLM%20Agent%20Architect&descSize=18&descAlignY=60" />

<!-- 个人副标题 -->
<h3>
  🏀 Building <a href="https://admin.hooppupil.me">Hoop Pupil</a> —
  An AI-Native Basketball Intelligence Platform
</h3>

<!-- 关键徽章 -->
<p>
  <img src="https://img.shields.io/badge/Status-Open%20to%20Work-brightgreen?style=flat-square" />
  <img src="https://img.shields.io/badge/Class%20of-2026-blue?style=flat-square" />
  <img src="https://img.shields.io/badge/Paper-CCF--B%20In%20Progress-orange?style=flat-square" />
  <img src="https://img.shields.io/badge/Stack-Full--Stack%20%2B%20AI-purple?style=flat-square" />
</p>

<!-- 访问统计（自动更新） -->
<p>
  <img src="https://komarev.com/ghpvc/?username=Yukibei&color=blueviolet&style=flat-square&label=Profile+Views" />
  <img src="https://img.shields.io/github/followers/Yukibei?style=flat-square&label=Followers&color=blue" />
</p>

</div>

---

## 👋 About Me

我是 **李怡霖（Yiling Li）**，2026 届计算机本科生，专注 **AI 全栈** 与 **LLM Agent 架构**。
独立设计并落地了 **Manifest 自描述协议** 和 **PPSF 闭环架构**，相关研究成果正以**第一作者身份**形成 CCF-B 期刊论文。

- 🏀 **正在做**：[智瞳蓝途 / Hoop Pupil](https://admin.hooppupil.me) — 篮球智能分析平台（Web + 微信小程序 + Android）
- 📚 **正在写**：基于用户意图认知行为的前端智能体页面调度诱导系统研究（**CCF-B 在投**）
- 🔬 **正在研**：篮球场景轻量遮挡感知 ReID 算法（mAP 91.61% / Rank-1 94.40%）
- 💼 **求职意向**：AI 全栈工程师 / AI 应用开发 / LLM Agent — 可立即入职
- 📫 **联系方式**：2747028274@qq.com

> 💡 *面试官可直接访问 [admin.hooppupil.me](https://admin.hooppupil.me) 验证作品真实性*

---

## 🚀 Featured Project · Hoop Pupil

<table>
<tr>
<td width="55%">

### 智瞳蓝途篮球智能分析平台

**一个面向篮球场景的全栈 AI 平台**，集成持球人重识别、球探对标、AI 视频生成、球鞋鉴定、AI 报告等 7 大业务能力。

**核心创新 — OpenClaw AI 智能管家**
- 🎯 自研 **Manifest 架构**（前端页面级自描述 + 通用调度）
- 🔁 **PPSF 闭环** — Perception · Planning · Scheduling · Feedback
- ⚡ **Pipeline Chain** — 一句话触发跨页面流水线
- 📐 **形式化建模** — 15 元组定义 + 引理证明 + 复杂度分析

**部署规模**
- 21 个 AI Agent 页面共存于同一调度系统
- Web + 微信小程序 + Android 三端统一
- 接入 OpenAI / Qwen / DeepSeek 多模型网关

</td>
<td width="45%" align="center">

[![Hoop Pupil](https://img.shields.io/badge/Live-admin.hooppupil.me-success?style=for-the-badge&logo=safari)](https://admin.hooppupil.me)

**Tech Stack**

`Vue 3` `TypeScript` `Java 8` `Spring Boot`
`PyTorch` `TransReID` `uni-app` `MySQL`
`Redis` `LLM Gateway` `FastAPI`

**Achievements**
- 🥇 mAP **91.61%** / Rank-1 **94.40%**
- ⚡ 特征提取 **35ms** / 匹配 **11ms**
- 📄 CCF-B 论文 **5/7 章**已完成

</td>
</tr>
</table>

---

## 🏗️ Architecture Highlight · Manifest Protocol

> **核心想法**：让前端页面像 MCP 一样**自描述能力**，AI Agent 通过统一调度协议即插即用，**21 页面接入成本降低 87%**（4h → 30min）。

```
┌────────────────────────────────────────────────────────────┐
│  PageManifest (15-tuple self-description)                  │
│  ─ pageKey · route · intentTags · capabilities · scripts   │
└──────────────────────────────┬─────────────────────────────┘
                               │ register on mount
                               ▼
┌────────────────────────────────────────────────────────────┐
│  Manifest Registry  ·  Reactive · Reference-Counted        │
└──────────────────────────────┬─────────────────────────────┘
                               │ query by intent / capability
                               ▼
┌────────────────────────────────────────────────────────────┐
│  Universal Adapter  ·  9 Standard Actions                  │
│  HIGHLIGHT · UPLOAD · TRIGGER · READ_RESULT · ...          │
└──────────────────────────────┬─────────────────────────────┘
                               │ orchestrate cross-page
                               ▼
┌────────────────────────────────────────────────────────────┐
│  Pipeline Chain  ·  Multi-stage NLU-driven Workflows       │
└────────────────────────────────────────────────────────────┘
```

**与现有协议对比**

| 维度 | Manifest（自研） | OpenAI Function Calling | Anthropic MCP |
|---|---|---|---|
| 页面状态感知 | ✅ 强（Reactive） | ❌ 无 | ⚠️ 弱 |
| 跨页面流水线 | ✅ Pipeline Chain | ❌ 无 | ⚠️ 需手动 |
| 接入成本 | ✅ O(1) 单文件 | ⚠️ O(N) | ⚠️ O(N) |
| DOM 时序鲁棒 | ✅ 4 层降级链 | ❌ 无 | ❌ 无 |
| 形式化保障 | ✅ 引理证明 | ❌ 无 | ❌ 无 |

---

## 🎓 Academic Output

- **📄 项目论文（CCF-B 在投）**：《基于用户意图认知行为的前端智能体页面调度诱导系统研究》
  - 进度：5/7 章已完成正文（**7500 字 / 12 数学公式 / 2 引理 / 2 算法 / 28 参考文献**）
  - 拟投：《软件学报》/《计算机学报》/《软件工程》
- **🔬 算法论文（北大核心）**：《面向篮球场景的轻量遮挡感知与同衣干扰量化重识别方法》
  - 状态：云 GPU 实验进行中（OAA Token-level 升级 + 遮挡 / 同衣 / 模糊三类子集专项验证）
  - 拟投：《计算机应用研究》（CSCD-E + 北大核心）

---

## 🛠️ Tech Stack

<div align="center">

**AI / LLM Agent**

![LLM](https://img.shields.io/badge/LLM-OpenAI%20%7C%20Qwen%20%7C%20DeepSeek-412991?style=flat-square&logo=openai&logoColor=white)
![Agent](https://img.shields.io/badge/Agent-Manifest%20%7C%20MCP%20%7C%20Function%20Calling-blueviolet?style=flat-square)
![RAG](https://img.shields.io/badge/RAG-Vector%20%7C%20Pipeline%20Chain-orange?style=flat-square)

**Frontend**

![Vue](https://img.shields.io/badge/-Vue%203.5-4FC08D?style=flat-square&logo=vue.js&logoColor=white)
![TS](https://img.shields.io/badge/-TypeScript-3178C6?style=flat-square&logo=typescript&logoColor=white)
![Pinia](https://img.shields.io/badge/-Pinia-yellow?style=flat-square&logo=pinia&logoColor=black)
![Vite](https://img.shields.io/badge/-Vite-646CFF?style=flat-square&logo=vite&logoColor=white)
![uniapp](https://img.shields.io/badge/-uni--app-2B9939?style=flat-square)

**Backend**

![Java](https://img.shields.io/badge/-Java%208-007396?style=flat-square&logo=openjdk&logoColor=white)
![SpringBoot](https://img.shields.io/badge/-Spring%20Boot-6DB33F?style=flat-square&logo=springboot&logoColor=white)
![MyBatis](https://img.shields.io/badge/-MyBatis-DC382D?style=flat-square)
![MySQL](https://img.shields.io/badge/-MySQL%208-4479A1?style=flat-square&logo=mysql&logoColor=white)
![Redis](https://img.shields.io/badge/-Redis-DC382D?style=flat-square&logo=redis&logoColor=white)

**Algorithm / CV**

![PyTorch](https://img.shields.io/badge/-PyTorch%202.9-EE4C2C?style=flat-square&logo=pytorch&logoColor=white)
![FastAPI](https://img.shields.io/badge/-FastAPI-009688?style=flat-square&logo=fastapi&logoColor=white)
![OpenCV](https://img.shields.io/badge/-OpenCV-5C3EE8?style=flat-square&logo=opencv&logoColor=white)
![NumPy](https://img.shields.io/badge/-NumPy-013243?style=flat-square&logo=numpy&logoColor=white)

</div>

---

## 🏆 Achievements & Certifications

- 🥇 **全国高校计算机能力挑战赛** — Java + C++ **双赛道双国一**（一人双项 / 同届罕见）
- 🥉 **蓝桥杯**（智能体开发赛道）— 省级三等奖
- 📜 **软件设计师** — 国家软考中级
- 🎯 **第十七届中国大学生服务外包创新创业大赛 A 类** — 队长 / 全栈主力（命题方：球秀体育科技 × 中南大学博士团队）
- 📊 **GPA 排名**：专业前 5%（3/65）

---

## 📊 GitHub Stats

<div align="center">

<a href="https://github.com/Yukibei">
  <img height="170" src="https://github-readme-stats.vercel.app/api?username=Yukibei&show_icons=true&theme=tokyonight&hide_border=true&count_private=true" />
  <img height="170" src="https://github-readme-stats.vercel.app/api/top-langs/?username=Yukibei&layout=compact&theme=tokyonight&hide_border=true&langs_count=8" />
</a>

<br/>

<img src="https://github-readme-streak-stats.herokuapp.com?user=Yukibei&theme=tokyonight&hide_border=true" />

</div>

---

## 📫 Get in Touch

<div align="center">

[![Email](https://img.shields.io/badge/-Email-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:2747028274@qq.com)
[![Website](https://img.shields.io/badge/-Hoop%20Pupil-FF6B6B?style=for-the-badge&logo=safari&logoColor=white)](https://admin.hooppupil.me)
[![Phone](https://img.shields.io/badge/-+86%20175*****836-25D366?style=for-the-badge&logo=whatsapp&logoColor=white)](#)

<br/>

> 🚀 **2026 届校招进行中** — 寻找 AI 全栈 / LLM Agent / AI 应用开发岗位
> 📍 期望地点：北京 · 上海 · 杭州 · 远程
> ⏰ 可入职时间：当下

</div>

<!-- 底部 Banner -->
<div align="center">
<img src="https://capsule-render.vercel.app/api?type=waving&color=gradient&customColorList=12&height=100&section=footer" />
</div>
