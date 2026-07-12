<sub>🌐 <a href="README.md">English</a> · <b>中文</b></sub>

# Kyber ML

> *从第一性原理出发的机器学习——为控制论技术栈而建。*

[![Ko-fi](https://img.shields.io/badge/Support-ko--fi-FF5E5B?style=flat&logo=ko-fi&logoColor=white)](https://ko-fi.com/requiema)
[![Afdian](https://img.shields.io/badge/Support-爱发电-946CE6?style=flat)](https://afdian.com/a/requiema)
[![License](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Jupyter Book](https://img.shields.io/badge/Jupyter_Book-🔧-blue)](https://jupyterbook.org/)

<br>

[快速开始](#快速开始) · [能做什么](#能做什么) · [目录结构](#目录结构)

---

## 快速开始

```bash
git clone https://github.com/RequieMa/kyber-ml
cd kyber-ml
uv sync && uv run jupyter book build
```

### 字数统计工具

追踪每章的字数，对照 AdSense 最低要求（每章 800+ 词）：

```bash
uv run python tools/wordcount.py              # 列出所有章节及字数
uv run python tools/wordcount.py --lang zh    # 仅中文章节
uv run python tools/wordcount.py --lang en    # 仅英文章节
```

工具会剔除 markdown 语法、代码块、数学公式和指令 — 仅统计纯文本字数。
草稿目录（`book/draft/`）默认排除。

---

## 能做什么 / 这里有什么

<!-- | 章节 | 内容 | 状态 |
|------|------|------|
| 1 · 经典机器学习 | 回归、分类、SVM、决策树、集成方法 | 🚧 草稿 |
| 2 · 深度学习 | 神经网络、反向传播、架构（CNN、RNN、Transformer） | 🚧 草稿 |
| 3 · 强化学习 | MDP、Q-learning、策略梯度、Actor-Critic | 📋 计划中 |
| 4 · 概率方法 | 贝叶斯推断、高斯过程、图模型 | 📋 计划中 |
| 5 · 计算机视觉 | 特征提取、目标检测、分割 | 📋 计划中 |
| 6 · NLP 与 LLM | 分词、嵌入、注意力机制、预训练、对齐 | 📋 计划中 | -->

---

## 仓库结构

```
kyber-ml/
├── book/
│   ├── en/                   # 英文章节（待构建）
│   ├── zh/                   # 中文章节
│   └── draft/                # 开发中的内容
├── tools/
│   └── wordcount.py          # 章节字数统计工具
├── about.md                  # 关于本书与作者
├── contact.md                # 联系方式
├── privacy.md                # 隐私政策
├── terms.md                  # 服务条款
├── myst.yml                  # MyST 配置
├── pyproject.toml            # 项目元数据和依赖
└── README.md
```

---

## Connect · 关于作者

<div align="center">

| | | |
|---|---|---|
| 📧 | Email | [mazengou@gmail.com](mailto:mazengou@gmail.com) |
| 🌐 | Personal Site | [requiema.github.io](https://requiema.github.io) |
| 📝 | dev.to | [dev.to/requiema](https://dev.to/requiema) |
| 𝕏 | X | [x.com/mazengou](https://x.com/mazengou) |
| 👾 | Reddit | [u/Leather_Rip7919](https://www.reddit.com/user/Leather_Rip7919/) |
| 🔖 | 掘金 | [juejin.cn/user/76300220645242](https://juejin.cn/user/76300220645242) |
| 📦 | Gitee | [gitee.com/requiema](https://gitee.com/requiema) |
| 📖 | 知乎 | [zhihu.com/people/consilivm](https://www.zhihu.com/people/consilivm) |
| 🎬 | Bilibili | 镇魂曲麦 |
| 📱 | 公众号 | 镇魂曲麦 |

</div>
