---
title: "Liu Peng (@liupeng88) YouTube Channel — Master Video Index"
date: 2026-08-01
tags: [youtube, quant, academic, statistical-arbitrage, pairs-trading, bayesian-optimization, portfolio-management, machine-learning, reinforcement-learning, cointegration, momentum, log-returns]
channel: https://www.youtube.com/@liupeng88/videos
author: Liu Peng
focus: Academic Quantitative Finance & Machine Learning Lectures
status: indexed
---

# 📚 Liu Peng (@liupeng88) — Master Video Index

> เนื้อหา: **Academic Quantitative Finance Lecture Series** — ระดับมหาวิทยาลัย
> Focus: Statistical Arbitrage, Pairs Trading, Bayesian Optimization, Portfolio Management, ML for Finance, RL for Portfolio Optimization

---

## 🔥 TOP PICKS สำหรับ cook45 (Critical Academic Watch List)

| หัวข้อ | ความสำคัญ |
|--------|---------|
| Statistical Arbitrage & Pairs Trading (Lec 10.1 + 10.2) | 🔴 CRITICAL — ตรงกับ MCPT edge validation |
| Cointegration, Stationarity, Z-score (Lec 10.2) | 🔴 CRITICAL — foundation สำหรับ stat-arb edges |
| Bayesian Optimization for Trading (Lec 11.2 + Lab 6) | 🔴 HIGH — hyperparameter optimization ไม่ overfit |
| Momentum Trading Strategy (Lec 7.1) | 🔴 HIGH — ตรงกับ Three Knives momentum filter |
| Max Drawdown (Lec 7.2) | 🔴 HIGH — risk model |
| Reinforcement Learning for Portfolio (ML Series) | 🔴 HIGH — RL agent design |
| ML & Financial Applications Full Series | 🟡 HIGH — Linear/Logistic/RF/ANN/RL |

---

## 📋 FULL VIDEO INDEX (Organized by Course)

### 📈 Quantitative Trading Strategies Series (Main Course)

#### Python & Data Foundations
- Lecture 5.1: Python Programming Basics for Quant Trading | https://www.youtube.com/@liupeng88

#### Technical Analysis & Returns
- Lecture 6.1: Log Returns and Technical Indicators | https://www.youtube.com/@liupeng88
- Lecture 6.2: Moving Averages and Trend Following Strategy | https://www.youtube.com/@liupeng88
- Lab 1: Working with Log Returns | https://www.youtube.com/@liupeng88
- Lab 2: Simple and Exponential Smoothing Averages | https://www.youtube.com/@liupeng88

#### Momentum & Risk
- Lecture 7.1: Momentum Trading Strategy | https://www.youtube.com/@liupeng88
- Lecture 7.2: Max Drawdown | https://www.youtube.com/@liupeng88

#### Futures & Arbitrage Pricing
- Lecture 9.3: No-Arbitrage Pricing for Forward & Futures Contracts | https://www.youtube.com/@liupeng88
- Lecture 9.4: Contango and Backwardation | https://www.youtube.com/@liupeng88

#### ⭐ Statistical Arbitrage & Pairs Trading (CRITICAL)
- **Lecture 10.1: Statistical Arbitrage and Pairs Trading** | https://www.youtube.com/@liupeng88
- **Lecture 10.2: Cointegration, Stationarity, Z-score in Pairs Trading** | https://www.youtube.com/@liupeng88
- **Lab 7: Implementing Pairs Trading Strategy using Machine Learning** | https://www.youtube.com/@liupeng88

#### Strategy Optimization
- **Lecture 11.1: Optimizing Trading Strategies** | https://www.youtube.com/@liupeng88
- **Lecture 11.2: Bayesian Optimization** | https://www.youtube.com/@liupeng88
- **Lab 6: Improving Pairs Trading Strategy using Bayesian Optimization** | https://www.youtube.com/@liupeng88

---

### 💼 Portfolio Management Series

- Introduction to Portfolio Management | https://www.youtube.com/@liupeng88
- Prediction and Optimization in Portfolio Management | https://www.youtube.com/@liupeng88
- Managing Market Risk via Diversification | https://www.youtube.com/@liupeng88
- Introduction to Financial Risk | https://www.youtube.com/@liupeng88
- Understanding Risk-Adjusted Return | https://www.youtube.com/@liupeng88
- Preference for Log Return in Financial Analysis | https://www.youtube.com/@liupeng88

---

### 🤖 Machine Learning & Financial Applications Series

Topics covered:
- Linear Regression for Financial Prediction | https://www.youtube.com/@liupeng88
- Logistic Regression for Classification | https://www.youtube.com/@liupeng88
- Regularization (Ridge/Lasso) | https://www.youtube.com/@liupeng88
- Decision Trees | https://www.youtube.com/@liupeng88
- Random Forests | https://www.youtube.com/@liupeng88
- Artificial Neural Networks | https://www.youtube.com/@liupeng88
- **Reinforcement Learning for Portfolio Optimization** | https://www.youtube.com/@liupeng88

---

## 🎯 สรุป Category Distribution

| หมวด | จำนวนโดยประมาณ | ความสำคัญ |
|------|--------------|---------|
| Quant Trading Strategies (Lectures) | ~15 | 🔴 CRITICAL |
| Statistical Arbitrage / Pairs Trading | ~4 | 🔴 CRITICAL |
| Bayesian Optimization | ~3 | 🔴 HIGH |
| Portfolio Management | ~6 | 🔴 HIGH |
| ML & Financial Applications | ~8 | 🔴 HIGH |
| Lab Sessions | ~7 | 🔴 HIGH |
| **TOTAL (estimated)** | **~43** | |

---

## 🧮 Key Concepts Index

### Statistical Arbitrage Core (ตรงกับ MCPT Pipeline ของเรา)
```
Z-score = (spread - mean) / std
Trade Signal:
  - Enter Long:  Z < -2.0  (spread undervalued)
  - Enter Short: Z > +2.0  (spread overvalued)
  - Exit:        Z → 0     (mean reversion)

Cointegration Test:
  - Augmented Dickey-Fuller (ADF) on residuals
  - p-value < 0.05 → stationary spread → tradeable edge
```

### Bayesian Optimization for Strategy Params
```
Instead of grid search → use Gaussian Process surrogate model
Acquisition function: Expected Improvement (EI)
Apply to: SL/TP pips, window sizes, Z-score thresholds
Prevents overfitting vs random/grid search
```

### Momentum Strategy Math
```
Signal = Return(t-N, t) — lookback N periods
  Positive → LONG
  Negative → SHORT
Max Drawdown = (Peak - Trough) / Peak
```
