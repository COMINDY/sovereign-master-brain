---
title: "🔥 NAS100 BUY Edge Confirmed: Garman-Klass Volatility + 50-Bar Low Liquidity Sweep"
date: 2026-07-31
tags: [research, buy-edge, nas100, garman-klass, volatility, smc, liquidity-sweep]
status: verified
---

# 🔥 NAS100 BUY Edge Confirmed (Garman-Klass Volatility)

> **สรุปผลวิจัย NAS100 BUY Edge:**  
> การเข้าเทรด **BUY บน NAS100** จะมี Edge สูงมากเมื่อเกิด **50-Bar Low Liquidity Sweep + Garman-Klass Volatility Compression + Lower Wick Rejection**

---

## 📊 Summary of Backtest Results (NAS100 M5 Data)

| Strategy | R:R | Win Rate | Net Profit (R) | Expectancy | Per-Trade Sharpe | Verdict |
|----------|-----|----------|----------------|------------|------------------|---------|
| **BUY_Opt2_50Bar_Sweep_GK** | **1:2.5** | **50.0%** | **+7.98R** | **+0.57R** | **0.34** | 🟢 **GOLDEN EDGE** |
| **BUY_Opt2_50Bar_Sweep_GK** | **1:2.0** | **50.0%** | **+6.59R** | **+0.47R** | **0.31** | 🟢 **GOLDEN EDGE** |
| **BUY_Opt2_50Bar_Sweep_GK** | **1:1.5** | **50.0%** | **+3.50R** | **+0.25R** | **0.19** | 🟢 **POSITIVE EDGE** |

---

## 🎯 เงื่อนไขการเข้าเทรด NAS100 BUY Edge

1. **50-Bar Low Liquidity Sweep:** ราคาย่อลงไปกวาด Low 50 แท่งย้อนหลัง (`Low <= Low_50`)
2. **Bullish Rejection Candle:** แท่งเทียนปิดเป็นบวก (`Close > Open`) และมีหางล่างยาวเกิน 35% (`lwick > 0.35`)
3. **Garman-Klass Volatility Compression:** ค่า Garman-Klass Volatility ratio ต่ำกว่าเฉลี่ย (`gk_ratio < 1.10`)
4. **Session Window:** เทรดช่วงตลาดสหรัฐฯ เปิด 14:00 - 21:00 UTC (21:00 - 04:00 น. เวลาไทย)

---

## 💻 Python Script Reference
- File: `I:\Sovereign_Pure\46_nas100_buy_edge_optimization.py`
