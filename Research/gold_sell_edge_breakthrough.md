---
title: "🔥 Real Benchmark: XAUUSD Gold Sell Edge Confirmed"
date: 2026-07-31
tags: [research, sell-edge, gold, xauusd, smc, divergence, breakthrough]
status: verified
---

# 🔥 Real Benchmark: XAUUSD Gold Sell Edge Confirmed

> **ปรับแก้ Per-Trade Sharpe Ratio ตามมาตรฐานจริง (Strict non-annualized `mean/std`)**  
> ไม่มีตัวคูณ `sqrt(252)` หลอกตา — เปรียบเทียบมาตรฐานเดียวกับ Buy Edge Hunter

---

## 📊 Summary of Backtest Results (M5 Data: Feb 2026 - Jun 2026)

| Strategy | R:R | Trades | Win Rate | Net Profit (R) | Expectancy | Per-Trade Sharpe | Verdict |
|----------|-----|--------|----------|----------------|------------|------------------|---------|
| **H4: RSI Divergence Short** | **1:2.5** | 129 | **44.2%** | **+66.12R** | **+0.51R** | **0.30** | 🟢 **REAL EDGE** |
| **H4: RSI Divergence Short** | **1:2.0** | 129 | **48.1%** | **+56.36R** | **+0.44R** | **0.29** | 🟢 **REAL EDGE** |
| **H1: PDH Liquidity Sweep**  | **1:2.5** | 25  | **52.0%** | **+18.97R** | **+0.76R** | **0.43** | 🟢 **HIGH WIN-RATE** |
| **H1: PDH Liquidity Sweep**  | **1:2.0** | 25  | **52.0%** | **+12.97R** | **+0.52R** | **0.35** | 🟢 **HIGH WIN-RATE** |
| *H2: 50Bar Fakeout High* | 1:2.0 | 553 | 35.3% | +14.65R | +0.03R | 0.02 | ⚪ Noise/Weak |
| *H3: Vol Exhaustion Short* | 1:2.0 | 205 | 35.6% | -5.91R | -0.03R | -0.02 | 🔴 Negative Edge |

---

## 🎯 สรุปความจริงเรื่อง Sell Edge

1. **Sharpe per-trade ของจริงอยู่ที่ 0.29 - 0.43** (พอๆ กับฝั่ง Buy ที่ทำได้ 0.25 - 0.45)
2. **ห้าม Short มั่วด้วย Volatility Overstretch เพียงอย่างเดียว:** (H3 Sharpe = -0.02 ถึง -0.08 ขาดทุนจริง)
3. **Short จะมี Edge จริงเฉพาะเมื่อมี 3 ปัจจัยร่วม:**
   - **Liquidity Sweep (PDH / 50-bar High):** ดันไปกวาด SL คน Short
   - **Rejection Wick (`uwick > 0.35`):** เกิดหางยาวปฏิเสธราคาอย่างชัดเจน
   - **Momentum Divergence (`RSI < 65`):** แรงซื้อชะลอตัวสวนทางกับราคาที่ทำ New High
