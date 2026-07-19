---
title: Transformers & LLMs
date: 2026-07-19
authors:
  - name:
      literal: RequieMa
---

# Transformers & Large Language Models

> Aligns with tutorial/AI **M6 — Build a Minimum LLM**.

The summit of the build. Attention is the one idea that lets every token see every other directly — the RNN-family fix. Transformer block = attention + MLP. Train a tiny GPT, understand tokenization and next-token prediction, and see why sampling causes hallucination.

**Math thread:** $\mathrm{softmax}(Q K^\top) V$, multi-head attention, why it beats the LSTM at long range.
