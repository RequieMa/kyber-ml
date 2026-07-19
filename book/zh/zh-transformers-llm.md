---
title: Transformer 与大语言模型
date: 2026-07-19
authors:
  - name:
      literal: RequieMa
---

# Transformer 与大语言模型

> 对应 tutorial/AI **M6 — 构建最小 LLM**。

构建之旅的顶峰。注意力机制是一劳永逸解决 RNN 家族缺陷的那个思想——让每个 token 直接看见所有其他 token。Transformer 块 = 注意力 + MLP。训练一个微型 GPT，理解分词和下一个 token 预测，看清为什么采样会导致幻觉。

**数学主线：** $\mathrm{softmax}(Q K^\top) V$、多头注意力、它为什么在长程依赖上击败 LSTM。
