---
title: 深度学习是个啥
date: 2026-07-12
authors:
  - name:
      literal: RequieMa
---

# 深度学习是个啥

序言就是简单聊聊深度学习 (Deep Learning, DL) 是啥，为啥要学

重要性一言以蔽之：人工智能 (Artificial Intelligence, AI) 目前已经开始影响人类电子化生活的方方面面了，而机器学习 (Machine Learning, ML) 功不可没，深度学习又是机器学习中的代表，因此，学就完事了。

严格意义上AI是一个泛指，一切由机器**下判断**的做法都可以被称为人工智能。

具体下判断的方法有很多，机器学习就是特指对于已知的数据进行学习来**逆向工程**出判断依据的过程。而深度学习又是特指将机器学习中的一种称为“神经网络” (Neural Networking, NN) 的方法发挥到极致的做法。

具体而言，在这项技术发展出来之前，机器的所有行为都是**根据人类提前设定好的程序去执行的**。

```{figure} ../pics/AI_meme.jpg
:label: ML时期的AI乱象
:align: center

因为AI这个名称的商业价值很高，所以从ML的时代就乱想不断，那个时候人们会将设定好可以执行的程序也包装成AI.
```

更近一步，可以说一直以来程序员都是在给电脑不同的“函数” $f(\mathbf{x})$ ，然后期待这个函数可以给出一个输出满足我们的需求。

当然这里的函数不（仅）是数学意义上的函数，更多的是一条条指令。

而 ML 则是希望能通过“数据”来用计算机拟合出这个所谓的 $f(\mathbf{x})$ ，这样就不需要人为去定义了。

好处自然是在面对一些复杂任务时，人们常常不知道究竟什么参数、什么指令才能胜任这项任务。而使用数据虽然不能保证最后的拟合会是符合所有情况，但是起码可以保证在有数据的范围内能做到极大程度的吻合。而对于泛化，自然也有许许多多的应对措施。

例如：

- 图像识别: f(🐱) = “猫”
- 语音识别: f(一段音频) = 音频中的文字
- 游戏策略: f(目前的游戏局势) = 下一步的动作

## ML架构

> 从给定的、有限的训练数据 (Training Data) 集合出发，**假设数据是独立同分布产生的**；并且假设要学习的模型属于某个函数集合，称之为**假设空间 (Hypothesis Space)**；应用某个**评价准则 (Evaluation Criterion)**，从假设空间中选取一个最优模型，使它对已知的训练数据及未知的测试数据 (Test Data) **在给定的评价准则下有最优的预测**；最优模型的选取过程由算法实现。

传统的ML我们需要预先准备一组函数集合 $(f_1, f_2, ..., f_n)$，和一组数据集合 $(\mathbf{x}_1, \mathbf{x}_2, ..., \mathbf{x}_m)$，这里两者数量不需要一样。然后将数据带入函数中，找到可以使得输出最符合我们预期的那个 $f^*$，这个过程就叫训练 (Training)。

而有了这样的函数，我们在面对新的数据 $\mathbf x$，我们就可以推理 (Inference) 出可能的输出 $f^*(\mathbf x)$。

## 相关技术与算法

来看看ML的分类：
- 监督学习 (Supervised Learning)
- 无监督学习 (Unsupervised Learning)
- 半监督学习 (Semi-supervised Learning)
- 迁移学习 (Transfer Learning)
- 强化学习 (Reinforcement Learning, RL)

上述分类主要以机器学习的方法进行分类。初步学习的重点会被放在监督学习上。

同时也可以根据学习的目的进行分类：
- 拟合 (Regression) - 输出是一个或多个具体的数值
- 分类 (Classification) - 输出是某物属于某个类别的可能性
- 结构化学习 (Structured Learning)

前两种较为普遍，最后一种可以简单认为是无法被前两种包含的分类。具体而言其输出会具备一定的结构性，例如一个有含义的句子。

### 监督学习

> 监督学习的本质是**学习输入到输出的映射的统计规律**。

每个具体的输入是一个**实例 (Instance)**，通常由**特征向量 (Feature Vector)** $\mathbf{x}$ 表示。所有特征向量存在的空间称为**特征空间 (Feature Space)**。**特征空间的每一维对应一个特征**
$$
\mathbf{x} = \begin{bmatrix}
x_1\\
x_2\\
...
\end{bmatrix}
$$

有时假设输入空间与特征空间相同，有时不同，会将实例从输入空间映射到特征空间。

**模型都是定义在特征空间上的**。

这个关于特征空间的描述在后面很多算法中都扮演着很重要的角色。

### 无监督学习

这个时候只有学习函数的输入，但没有输出。

> 无监督学习的本质是**学习数据中的统计规律或潜在结构**。  
> 模型可以实现对数据的聚类、降维或概率估计。

就像是给计算机看一大堆动物的照片，看它能否意识到豹子、老虎都是猫科动物一样。

### 半监督学习

监督学习最大的问题在于所需要的数据量十分庞大，而且训练数据还需要人工标注，成本很高。半监督学习则既使用人工标注过的数据，又使用大量未标注数据。

> 半监督学习旨在利用未标注数据中的信息，辅助标注数据，进行监督学习，以较低的成本达到较好的学习效果。

### 迁移学习

这也是使用少量数据进行训练的方法。

假如要做一个“猫”和“狗”的分类器，但是**只有少量猫与狗的标注数据**，同时还有一大堆标注或未标注的数据，但是这些数据与猫狗的差别很大，这时我们需要如何搭建训练器？迁移学习就是解决这个问题的。

### 强化学习

> 强化学习是指智能系统在环境的连续互动中学习最优行为策略的机器学习问题。本质是**学习最优的序贯决策**。

为了理解强化学习，可以与监督学习进行对比。

在监督学习中，会有预先标注好的数据集，因此当计算机接收到“Hello”的输入或者代表它的特征向量，这时人工标记的输出可能是“Hi”，计算机进行拟合，最终的结果可能可以教会它说这个“Hi”。

而在强化学习中，则不会提供这样的标注，让计算机自己给出输出，如果合理则给予适当奖励，否则给予适当惩罚。这里的奖惩可能就对应一个数值成绩的增减。那么如果计算机希望得到高分，就可能会渐渐学会正确的做法，但过程中它并不明确怎样算“合理”，因此可能需要不断地尝试。

> **智能系统的目标**不是短期奖励的最大化，而**是长期累积奖励的最大化**。

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

整个过程的表述便是：在某一次循环 $t$ 时，智能系统观测到一个状态 $s_t$ 与一个奖励 $r_t$ ，由此采取了一个行为 $a_t$ ，环境根据这个行为来决定下一个循环 $t+1$ 时，状态 $s_{t + 1}$ 与奖励 $r_{t + 1}$ 分别是什么，以此类推。

Alpha Go当年可以说是把强化学习带火了。

它先利用监督学习进行了训练，例如一个棋盘中特定的黑白子情况就下5-5，另一种情况就下3-3。这样通过对大量棋谱的研究，Alpha Go已经可以进行简单的围棋对局了。

而之后利用强化学习，让它跟另一个机器下棋，如果赢了那么它就知道这局表现不错，具体哪里不错，不知道，但只要下得足够多，便可以达到战胜世界顶级棋手的水平。之所以要用强化学习的方法，自然是因为棋谱所包含的下棋种类不够多了，不足以满足其训练了。

李宏毅老师曾聊起强化学习的**重要性**：

“因为我们没有data做监督学习，所以我们才做RL。现在因为Alpha Go比较火，所以Alpha Go中用到的RL会被认为比较潮。所以说有学生去面试，说明自己是做监督学习的，就会被质疑为什么不做RL。那这个时候你就应该和他说，如果我今天可以监督学习，其实就不应该做RL.”

当然最真实的莫过于紧跟了一句：

“**如果你面试这样讲，大概就不会被录取就是了**” （狗头）

---

这一部分都是一些对ML整体比较感性的认识，关于ML和DL更具体的内容可以看之后的篇章。
