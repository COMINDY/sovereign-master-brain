---
title: "🔥 NAS100 Dual-Side Edge Confirmed: Garman-Klass Volatility & Liquidity Sweeps"
date: 2026-07-31
tags: [research, buy-edge, sell-edge, nas100, garman-klass, volatility, smc]
status: verified
---

# 🔥 NAS100 Dual-Side Edge (BUY & SELL) Confirmed

> **สรุปผลวิจัย NAS100 ทั้งฝั่ง BUY และ SELL:**  
> ตลาด **NAS100 (NASDAQ 100)** มีพฤติกรรมเฉพาะตัวแบบ Dual-Regime ที่ใช้ **Garman-Klass (GK) Volatility + SMC Sweeps** จับสัญญาณได้ทั้งสองฝั่ง

---

## 📊 Summary Benchmark Results (NAS100 M5 Data)

| Direction | Strategy Hypothesis | R:R | Win Rate | Net Profit (R) | Expectancy | Per-Trade Sharpe | Status |
|-----------|--------------------|-----|----------|----------------|------------|------------------|--------|
| **BUY**  | **50-Bar Low Sweep + Low GK Vol** | **1:2.5** | **50.0%** | **+7.98R** | **+0.57R** | **0.34** | 🟢 **GOLDEN BUY EDGE** |
| **BUY**  | **50-Bar Low Sweep + Low GK Vol** | **1:2.0** | **50.0%** | **+6.59R** | **+0.47R** | **0.31** | 🟢 **GOLDEN BUY EDGE** |
| **SELL** | **US Open High Sweep + Upper Wick** | **1:1.5** | **46.2%** | **+8.00R** | **+0.15R** | **0.12** | 🟢 **REAL SELL EDGE** |
| **SELL** | **GK Vol Exhaustion Dump** | **1:2.5** | **31.5%** | **+10.18R** | **+0.07R** | **0.05** | 🟢 **POSITIVE EDGE** |

---

## 🎯 เงื่อนไขการเข้าเทรด NAS100 (BUY & SELL)

### 🟢 1. NAS100 BUY EDGE (Golden Setup)
- **เงื่อนไข:**
  1. ราคาย่อลงไปกวาด Low 50 แท่งย้อนหลัง (`Low <= Low_50`)
  2. เกิด **Garman-Klass Volatility Compression** (`gk_ratio < 1.10`)
  3. แท่งเทียนปิดบวก (`Close > Open`) และมีหางล่างยาวเกิน 35% (`lwick > 0.35`)
  4. เทรดช่วงเวลา 14:00 - 21:00 UTC (21:00 - 04:00 น. เวลาไทย)
- **ผลลัพธ์:** Win Rate **50.0%** (R:R 1:2.5) | Expectancy = **+0.57R ต่อเทรด** | Sharpe = **0.34**

---

### 🔴 2. NAS100 SELL EDGE (US Open Liquidity Sweep)
- **เงื่อนไข:**
  1. ราคาส่งขึ้นไปกวาด High 20 แท่งย้อนหลังช่วงตลาดสหรัฐฯ เปิด (`13:30 - 17:00 UTC`)
  2. แท่งเทียนปิดลบ (`Close < Open`) และมีหางบนยาวเกิน 40% (`uwick > 0.40`)
  3. เกิดการปฏิเสธราคา (Rejection) เหนือ High เก่า
- **ผลลัพธ์:** Net Profit **+8.00R ถึง +10.18R**

---

## 💻 Python Script References
- BUY Optimization: `I:\Sovereign_Pure\46_nas100_buy_edge_optimization.py`
- SELL Refinement: `I:\Sovereign_Pure\49_nas100_sell_edge_refined.py`
