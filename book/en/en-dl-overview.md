---
title: What is Deep Learning?
date: 2026-07-12
authors:
  - name:
      literal: RequieMa
---

> *Kyber ML — machine learning from first principles, built for the cybernetics stack.* A living book for engineers who want to understand ML at the level where maths, code, and intuition converge.

---

# What is Deep Learning?

A gentle introduction to what Deep Learning (DL) is and why you should learn it.

In one sentence: Artificial Intelligence (AI) is already reshaping every corner of digital life, Machine Learning (ML) is the engine behind it, and Deep Learning is ML's flagship — so just learn it.

Strictly speaking, AI is a broad term: anything where a machine **makes a judgment** can be called artificial intelligence.

There are many ways to make judgments. Machine learning is specifically the process of **reverse-engineering** the basis for those judgments by learning from data. Deep learning, in turn, is the practice of taking one particular ML method — the "neural network" (NN) — and pushing it to its extreme.

Before these techniques existed, everything a machine did was **executed according to a program written in advance by a human**.

```{figure} ../pics/AI_meme.jpg
:label: AI-hype-in-the-ML-era
:align: center

The term "AI" carries enormous commercial value, so hype has been rampant since the ML era — back then, people would wrap hardcoded programs and market them as AI.
```

Going one step further: programmers have always been giving computers different "functions" $f(\mathbf{x})$ and expecting outputs that satisfy our needs.

Here, "function" means more than the mathematical sense — it's mostly a sequence of instructions.

ML, on the other hand, tries to use **data** to let the computer fit this so-called $f(\mathbf{x})$, so we don't need to define it manually.

The upside is clear: for complex tasks, we often have no idea what parameters or instructions would work. Using data doesn't guarantee the fit will hold in *every* situation, but it at least ensures a strong match within the scope of the data. And for generalization, there are plenty of countermeasures.

For example:

- Image recognition: f(🐱) = "cat"
- Speech recognition: f(audio clip) = the text in the audio
- Game strategy: f(current game state) = the next move

## The ML Framework

> Starting from a given, finite set of training data — **assuming the data is independent and identical distribution (i.i.d.)**; assuming the model to be learned belongs to some set of functions, called the **hypothesis space**; applying an **evaluation criterion** to select the optimal model from the hypothesis space, such that it achieves **the best prediction under the given criterion** on both the known training data and unknown test data; the process of selecting the optimal model is carried out by an algorithm.

In traditional ML, we prepare a set of candidate functions $(f_1, f_2, ..., f_n)$ and a dataset $(\mathbf{x}_1, \mathbf{x}_2, ..., \mathbf{x}_m)$ — the two sets don't need to be the same size. We feed the data into the functions and find the $f^*$ whose outputs best match our expectations. This process is called **training**.

Once we have this function, when faced with new data $\mathbf{x}$, we can **infer** a likely output $f^*(\mathbf{x})$.

## Related Techniques & Algorithms

ML can be categorized by method:

- Supervised Learning
- Unsupervised Learning
- Semi-supervised Learning
- Transfer Learning
- Reinforcement Learning (RL)

The focus of early study will be on supervised learning.

It can also be categorized by goal:

- Regression — the output is one or more concrete numerical values
- Classification — the output is the likelihood that something belongs to a category
- Structured Learning

The first two are more common. The last can be thought of as anything that doesn't fit neatly into the first two — its outputs have inherent structure, such as a meaningful sentence.

### Supervised Learning

> The essence of supervised learning is **learning the statistical regularity of the mapping from input to output**.

Each concrete input is an **instance**, typically represented by a **feature vector** $\mathbf{x}$. The space where all feature vectors live is called the **feature space**. **Each dimension of the feature space corresponds to one feature**:

$$
\mathbf{x} = \begin{bmatrix}
x_1\\
x_2\\
\vdots
\end{bmatrix}
$$

Sometimes the input space is the same as the feature space; other times they differ, and instances are mapped from the input space into the feature space.

**Models are always defined on the feature space.**

This description of feature space plays a crucial role in many algorithms to come.

### Unsupervised Learning

Here we have only the inputs to the learning function, with no outputs.

> The essence of unsupervised learning is **learning the statistical regularities or latent structure in the data**.  
> The model can perform clustering, dimensionality reduction, or probability estimation.

It's like showing a computer a huge collection of animal photos and seeing whether it figures out that leopards and tigers are both felines.

### Semi-supervised Learning

The biggest problem with supervised learning is the sheer volume of data required — and training data needs manual labeling, which is expensive. Semi-supervised learning uses both human-labeled data and a large amount of unlabeled data.

> Semi-supervised learning aims to leverage the information in unlabeled data to assist the labeled data in supervised learning, achieving good results at a lower cost.

### Transfer Learning

This is another approach for training with small amounts of data.

Suppose you want to build a "cat" vs. "dog" classifier, but you have **only a small set of labeled cat-and-dog data**. Meanwhile, there's a mountain of labeled or unlabeled data available — but it looks nothing like cats and dogs. How do you set up the training? Transfer learning addresses exactly this.

### Reinforcement Learning

> Reinforcement learning refers to the ML problem where an intelligent system learns optimal behavioral strategies through continuous interaction with an environment. Its essence is **learning optimal sequential decision-making**.

To understand RL, compare it with supervised learning.

In supervised learning, there's a pre-labeled dataset. When the computer receives the input "Hello" (or its feature vector), the human-provided label might be "Hi." The computer fits the mapping and may eventually learn to say "Hi."

In reinforcement learning, no such labels are provided. The computer produces outputs on its own — if reasonable, it gets a reward; otherwise, a penalty. The reward and penalty might simply be a numerical score going up or down. If the computer wants a high score, it may gradually figure out what works — but along the way, it doesn't know exactly what counts as "reasonable," so it has to keep trying.

> **The goal of an intelligent system** is not maximizing short-term reward, but **maximizing long-term cumulative reward**.

```{code-cell} python
:tags: [hide-input]
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import matplotlib.font_manager as fm
from matplotlib.patches import FancyBboxPatch, FancyArrowPatch
%matplotlib inline

# ---------- Setup fonts ----------
latin_font  = fm.FontProperties(family="sans-serif", size=13)
latin_bold  = fm.FontProperties(family="sans-serif", size=15, weight="bold")
arrow_font  = fm.FontProperties(family="sans-serif", size=13, weight="bold")
small_font  = fm.FontProperties(family="sans-serif", size=11)

fig, ax = plt.subplots(1, 1, figsize=(8, 4))
ax.set_xlim(0, 10)
ax.set_ylim(0, 4)
ax.set_aspect('equal')
ax.axis('off')

# ---------- Agent ----------
agent_box = FancyBboxPatch(
    (0.8, 1.8), 3.2, 1.2,
    boxstyle="round,pad=0.2",
    facecolor="#E3F2FD", edgecolor="#1565C0", linewidth=2.5,
)
ax.add_patch(agent_box)
ax.text(2.4, 2.8, "Agent", ha="center", va="center", fontsize=18, fontweight="bold", color="#0D47A1")
ax.text(2.4, 2.2, "observes state, receives reward\nselects & executes action",
        ha="center", va="center", fontsize=9, color="#1565C0")

# ---------- Environment ----------
env_box = FancyBboxPatch(
    (6.0, 1.8), 3.2, 1.2,
    boxstyle="round,pad=0.2",
    facecolor="#E8F5E9", edgecolor="#2E7D32", linewidth=2.5,
)
ax.add_patch(env_box)
ax.text(7.6, 2.8, "Environment", ha="center", va="center", fontsize=16, fontweight="bold", color="#1B5E20")
ax.text(7.6, 2.2, "receives action, updates state\nproduces reward",
        ha="center", va="center", fontsize=9, color="#2E7D32")

# ---------- Action arrow (top) ----------
ax.add_patch(FancyArrowPatch(
    (4.05, 3.0), (5.95, 3.0),
    connectionstyle="arc3,rad=-0.35",
    arrowstyle="->,head_length=7,head_width=5",
    color="#D84315", linewidth=2.8, zorder=5,
))
ax.text(5.0, 3.75, r"action $a_t$", ha="center", va="center", fontsize=14, color="#D84315", fontweight="bold")

# ---------- State/Reward arrow (bottom) ----------
ax.add_patch(FancyArrowPatch(
    (5.95, 1.95), (4.05, 1.95),
    connectionstyle="arc3,rad=-0.35",
    arrowstyle="->,head_length=7,head_width=5",
    color="#6A1B9A", linewidth=2.8, zorder=5,
))
ax.text(5.0, 1.15, "state $s_t$\nreward $r_t$", ha="center", va="center", fontsize=13, color="#6A1B9A", fontweight="bold")

# ---------- Time annotation ----------
ax.text(9.0, 0.05,
        r"$\cdots \rightarrow$ state $s_t$, reward $r_t \rightarrow$ action $a_t \rightarrow$ state $s_{t+1}$, reward $r_{t+1} \rightarrow \cdots$",
        ha="right", va="bottom", fontsize=10, color="#757575")

# ---------- Title ----------
ax.text(5.0, 5.1, "Reinforcement Learning: Agent-Environment Interaction",
        ha="center", va="top", fontsize=15, fontweight="bold", color="#212121")

plt.tight_layout()
```

The full process: at iteration $t$, the intelligent system observes a state $s_t$ and a reward $r_t$, then takes an action $a_t$. Based on this action, the environment determines the state $s_{t+1}$ and reward $r_{t+1}$ for the next iteration $t+1$. And so on.

AlphaGo arguably brought reinforcement learning into the mainstream.

It was first trained via supervised learning — for example, when the board had a particular black-and-white pattern, play move 5-5; for another pattern, play 3-3. By studying a vast number of game records, AlphaGo learned to play Go at a basic level.

Then, using reinforcement learning, it played against another machine. If it won, it knew the game went well — *where* exactly it did well, it didn't know — but play enough games and it could reach the level of beating the world's top players. RL was necessary precisely because the game records didn't contain enough variety to sustain further training.

Professor Hung-yi Lee once remarked on the **importance** of RL:

> "We do RL because we don't have data for supervised learning. Now, because AlphaGo is trendy, the RL used in AlphaGo is considered fashionable. So students go to interviews, say they do supervised learning, and get asked why they're not using RL. At that point, you should tell them: if I could do supervised learning today, I really shouldn't be doing RL."

And then, of course, came the punchline:

> "**If you say that in an interview, you probably won't get hired.**"

---

This section has been a high-level, intuitive tour of ML. For more concrete content on ML and DL, see the chapters ahead.
