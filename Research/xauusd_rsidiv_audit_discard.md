---
title: "XAUUSD RSI Divergence SL/TP Sweep & Real Edge Audit"
date: 2026-08-01
tags: [xauusd, rsi-divergence, bayesian-optimization, mcpt, statistical-significance, trading-edge]
status: DISCARDED — NO PROFITABLE REGIME
---

# 🛑 XAUUSD RSI Divergence — Optimization & MCPT Audit Results

> **Data**: XAUUSD M5 (533,916 candles / 7-Year History)  
> **In-Sample (70%)**: 373,741 candles | **Out-of-Sample (30%)**: 160,175 candles  
> **Friction/Spread**: 0.25 pts (25 pips)

---

## 📊 1. Parameter Grid Sweep Results (In-Sample 35 Combinations)

| TP (xATR) | SL (xATR) | Trades | Win Rate | Expectancy (R) | Sharpe | Profit Factor |
|-----------|-----------|--------|----------|----------------|--------|---------------|
| 0.8 | 0.50 | 1,681 | 36.7% | -0.238R | -0.374 | 0.47 |
| 0.8 | 1.00 | 1,556 | 53.8% | -0.246R | -0.272 | 0.56 |
| 1.0 | 1.00 | 1,540 | 49.0% | -0.234R | -0.234 | 0.62 |
| 1.5 | 0.75 | 1,585 | 33.9% | -0.206R | -0.193 | 0.68 |
| 2.0 | 1.50 | 1,364 | 43.5% | -0.205R | -0.122 | 0.78 |
| **2.5** | **1.50** | 1,350 | **39.1%** | **-0.208R** | **-0.113** | **0.79** |

❌ **Result**: **0/35 parameter combinations produced positive expectancy on In-Sample data.**

---

## 🔬 2. Out-of-Sample (30%) & MCPT Validation

Using baseline config (TP=2.5xATR, SL=1.0xATR):
- **OOS Trades**: 708
- **Win Rate**: 32.8%
- **Expectancy**: -0.012R
- **Sharpe (OOS)**: -0.008
- **p(Sharpe)**: 0.0310 ✅ (p < 0.05)
- **p(Expectancy)**: 0.0350 ✅ (p < 0.05)
- **Bootstrap CI95**: [-0.079, +0.064] | P(Sharpe > 0) = 40.4% ❌

### 💡 Critical Quant Diagnosis:
1. **Timing Skill Exists (p < 0.05)**:  
   Signal นี้ทำการกรองช่วงเวลาในการ Entry ได้ดีกว่าการสุ่มเวลากรอกออเดอร์อย่างมีนัยสำคัญ (Random entry มี Sharpe เฉลี่ย -0.087 ขณะที่สัญญาณนี้ได้ Sharpe -0.008)
2. **Negative Expectancy Unresolved**:  
   แม้ว่า Timing จะดีกว่า Random แต่เนื่องจาก **Win Rate ต่ำเกินไป (32.8%)** เมื่อเทียบกับ TP/SL Risk-Reward และค่า Spread Friction ไม่สามารถสร้าง Positive Expectancy (+R) ในระยะยาวได้ในทุกระดับการ Sweep TP/SL
3. **Verdict**: **DISCARD STRATEGY.** ไม่พร้อมใช้งานในสภาวะ Real Market ไม่ให้สิทธิ์ผ่านไปยัง Sovereign Titan

---

## 📌 Sovereign Overlord Master Rule Compliance

> **Strict Rule**: หากยุทธศาสตร์ใดไม่สามารถทำ Expectancy > 0.00R บน In-Sample Data และไม่ผ่าน MCPT Gate 4/4 จะถูกถอดถอนทันที ห้ามคัดเลือกเข้า Deploy ทุกกรณี

---

## 🎯 Next Strategic Decision

1. **NAS100 SELL**: ล้มเหลวเนื่องจากภาวะ Strong Bullish Bias ในรอบ 17 เดือน
2. **XAUUSD RSI Div SELL**: มี Signal Timing Skill แต่ไม่สามารถเอาชนะ Spread Friction ให้กำไรได้

👉 **คำแนะนำถัดไป**: 
- ย้ายกลับไปขยายความได้เปรียบฝั่ง **BUY (Long Bias)** ของ NAS100 และ XAUUSD ที่เคยผ่าน MCPT (เช่น `SELL/BUY US Open Sweep` หรือ `PDL Sweep BUY`)
- หรือเริ่มทดสอบ **Hawkes Process Volatility Clustering Filter (Phase 3)** บนสัญญาณฝั่ง BUY เพื่อยกระดับ Sharpe Ratio
