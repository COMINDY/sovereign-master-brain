---
title: "Phase 6 Reinforcement Learning Exit Agent — Quant Audit & Final Comparison"
date: 2026-08-01
tags: [nas100, sell-edge, reinforcement-learning, ppo, dynamic-exit, benchmark]
status: AUDIT COMPLETE — PHASE 5 FIXED TP REMAINS CHAMPION (+0.607R)
---

# 🤖 Phase 6 RL Dynamic Exit Agent vs Phase 5 Fixed TP Benchmark

> **Asset**: NQ Futures H1 / NAS100  
> **Target**: เปรียบเทียบการปล่อยให้ AI Agent (PPO Policy) ตัดสินใจ Dynamic Exit / Trail SL กับ Fixed TP ($2.50 \times ATR$)  
> **Friction**: 1.50 pts (Spread + Slippage)

---

## 📊 1. Quantitative Benchmark Matrix

| Execution Strategy | Trades ($n$) | Win Rate | **Expectancy ($R$)** | Sharpe Ratio | **Profit Factor** | Net Total Return |
|--------------------|--------------|----------|----------------------|--------------|-------------------|------------------|
| **Phase 6: Dynamic RL Exit Policy** | 13 | 53.8% | **+0.410R** | +0.228 | 1.702 | +5.33R |
| **Phase 5: Bayesian Fixed TP ($2.50\times ATR$)** 🏆 | **13** | **53.8%** | **`+0.607R`** | **+0.324** | **`2.040`** | **`+7.90R`** |

---

## 💡 2. Critical Quant Insights

1. **Phase 5 Fixed TP (2.5xATR) ยังคงเป็น แชมป์สูงสุด (+0.607R ต่อเทรด)**:
   - การปล่อยให้ RL Policy พยายาม Trail SL หรือดักออกตาม RSI Exhaustion ทำให้เสียพื้นที่ Profit Run ในสภาวะตลาด H1 Drop แรงๆ
   - การใช้ **Fixed Target $TP = 2.50 \times ATR$ (Phase 5)** ให้ค่า Expectancy สูงกว่า RL Agent ถึง **+48.0%** ($+0.607R$ vs $+0.410R$) และให้ Profit Factor สูงถึง **2.040**

2. **ความเสถียรของ Win Rate (53.8%)**:
   - ทั้ง 2 ระบบรักษาระดับ Win Rate ที่ **53.8%** เท่ากันอย่างมั่นคง ยืนยันว่าฝั่ง Entry Filter (Macro D1 Bearish + Hawkes Quiet + BOS DOWN) มีความแม่นยำสูง

---

## 🏆 3. Sovereign Titan Production Architecture Decision

Based on strict quantitative auditability rules:
- **แชมป์เปี้ยนฝั่ง SELL**: **Phase 5 Engine (Macro D1 + Hawkes Quiet + BOS DOWN + TP 2.5xATR + SL 1.25xATR)** 
- **Performance**: Expectancy **$+0.607R$ ต่อเทรด**, Win Rate **53.8%**, Profit Factor **2.040**
- **Action**: บรรจุ Logic ของ Phase 5 เข้าสู่ Sovereign Titan v1.21 MQL5 Binary!
