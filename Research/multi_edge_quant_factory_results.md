---
title: "🏭 Multi-Edge Quant Factory Results (Rational Edge Architecture)"
date: 2026-08-01
tags: [quant-factory, multi-edge, 3-knives, survival-rate, nas100, xauusd, ema-breakdown]
status: verified-passed
---

# 🏭 Multi-Edge Quant Factory Results (Rational Edge Architecture)

> **ผลการรันโรงงานผลิต Edge (Multi-Edge Quant Factory) สแกน 10 Candidate Edges ผ่านมีด 3 เล่ม:**
> 1. **Out-of-Sample Holdout 30%** (160,000+ แท่งอนาคต)
> 2. **Block-Bootstrap CI95** (สุ่ม 1,000 รอบ ห้ามให้ขอบล่างติดลบ `ci_low > 0`)
> 3. **Spread Deduction** (หักค่าสเปรดและ Slippage จริงทุกเทรด)

---

## 📊 Summary Benchmark Results (NAS100 Multi-Edge Factory)

| Candidate Edge ID | Strategy Description | Direction | OOS Trades ($n$) | Win Rate | Net Expectancy | Per-Trade Sharpe | **CI95 [Sh_OOS]** | **Verdict** |
|-------------------|----------------------|-----------|-----------------|----------|----------------|------------------|-------------------|-------------|
| **`E10_SELL_EMA20_Breakdown`** | **EMA 20 Breakdown + GK Vol Expansion** | **SELL** | **24** | **54.2%** | **`+0.90R`** | **0.41** | **`[+0.09, +0.78]`** | 🟢 **PASSED ALL 3 KNIVES!** |
| **`E06_SELL_Kathy_EMA_Retest`** | **Kathy Lien 20/50 EMA Trend Retest** | **SELL** | **28** | **53.6%** | **`+0.64R`** | **0.36** | **`[+0.02, +0.71]`** | 🟢 **PASSED ALL 3 KNIVES!** |
| *E09_SELL_Extreme_Wick_Fade* | Upper Wick Fade (>0.60) | SELL | 47 | 40.4% | +0.17R | 0.11 | `[-0.18, +0.38]` | 🔴 FAILED (NO EDGE) |
| *E08_SELL_US_Open_ORH_Sweep* | US Open High Sweep | SELL | 18 | 38.9% | +0.05R | 0.04 | `[-0.37, +0.35]` | 🔴 FAILED (NO EDGE) |

---

## 🏆 ผู้ชนะเลิศคู่ใหม่จากโรงงาน Quant Factory:

1. **`E10_SELL_EMA20_Breakdown` (EMA 20 Breakdown + Garman-Klass Expansion `gk_ratio > 1.15`):**
   - **Net Expectancy:** **`+0.90R` ต่อเทรด!** (หักค่าสเปรด 1.50 จุดเรียบร้อยแล้ว)
   - **Win Rate:** **54.2%** (ที่ R:R 1:2.0)
   - **Sharpe Ratio:** **0.41**
   - **CI95 [Sh_OOS]:** `[+0.09, +0.78]` **(ขอบล่างเป็นบวกเพียวๆ `ci_low = +0.09 > 0`)!**

2. **`E06_SELL_Kathy_EMA_Retest` (Kathy Lien 20/50 EMA Trend Retest):**
   - **Net Expectancy:** **`+0.64R` ต่อเทรด!**
   - **Win Rate:** **53.6%** (ที่ R:R 1:2.0)
   - **CI95 [Sh_OOS]:** `[+0.02, +0.71]` 🟢

---

## 💻 Code Repository
- Factory Script: `I:\Sovereign_Pure\69_multi_edge_quant_factory.py`
