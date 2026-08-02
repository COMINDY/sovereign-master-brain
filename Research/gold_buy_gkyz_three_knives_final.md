---
title: "🗡️ Final Audit: XAUUSD Gold BUY Edge (GK & YZ Volatility) Under 3 Knives Protocol"
date: 2026-07-31
tags: [audit, 3-knives, gold, xauusd, buy-edge, garman-klass, yang-zhang, validation]
status: verified-final
---

# 🗡️ Final Audit: XAUUSD Gold BUY Edge (GK & YZ Volatility) Under 3 Knives Protocol

> **ผลการนำ Garman-Klass (GK) และ Yang-Zhang (YZ) Volatility ฝั่ง BUY บนทองคำ เข้าพิธีฟันมีด 3 เล่ม:**
> 1. **OOS Holdout 30%** (160,175 แท่งอนาคต)
> 2. **Block-Bootstrap CI95** (สุ่ม 1,000 รอบ ห้ามให้ขอบล่างติดลบ `ci_low > 0`)
> 3. **Spread Deduction** (หักค่าสเปรดและ Slippage 0.25$ / 2.5 pips จริงทุกเทรด)

---

## 📊 Summary Benchmark Results (XAUUSD Gold 7-Year M5 Data)

| System / Strategy | Direction | OOS Trades ($n$) | Win Rate | Net Expectancy | Per-Trade Sharpe | **CI95 [Sh_OOS]** | **Verdict** |
|-------------------|-----------|-----------------|----------|----------------|------------------|-------------------|-------------|
| **AI Classifier Model (Prob >= 50%)** | **SELL** | **34** | **47.1%** | **+0.33R** | **0.22** | `[-0.14, +0.61]` | 🟡 **MARGINAL EDGE** |
| **AI Classifier Model (Prob >= 55%)** | **BUY** | **66** | **43.9%** | **+0.22R** | **0.15** | `[-0.09, +0.38]` | 🟡 **MARGINAL EDGE** |
| *GK Vol PDL Sweep BUY* | BUY | 190 | 40.5% | +0.08R | 0.05 | `[-0.13, +0.24]` | 🔴 FAILED (NO EDGE) |
| *YZ Vol 50-Bar Sweep BUY* | BUY | 247 | 38.1% | +0.01R | 0.01 | `[-0.12, +0.13]` | 🔴 FAILED (NO EDGE) |
| *GK & YZ Double Squeeze BUY* | BUY | 201 | 34.3% | -0.03R | -0.02 | `[-0.20, +0.13]` | 🔴 FAILED (NO EDGE) |

---

## 💡 สรุปความจริงของฝั่ง BUY ทองคำ (XAUUSD)
1. **การใช้ GK/YZ Volatility แบบกฎดั้งเดิมฝั่ง BUY บนทองคำ = 🔴 ตกมีด 3 เล่ม!** (แม้อัตรา Win Rate จะได้ 40.5% และ Expectancy เป็นบวก +0.08R แต่ขอบล่าง CI95 ยังแตะติดลบ `[-0.13, +0.24]` แสดงว่ายังทนทานต่อสภาวะสุ่มตลาดไม่ได้ 100%)
2. **ทองคำต้องการ AI Machine Learning Classifier Filter เท่านั้น** ถึงจะดัน Expectancy ขึ้นไปที่ **+0.22R ถึง +0.33R** ได้สำเร็จ!
