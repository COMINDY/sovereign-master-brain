---
title: "NAS100 BUY Engine Optimization — Complete Quant Breakdown"
date: 2026-08-01
tags: [nas100, buy-edge, quant-audit, liquidity-sweep, trend-following, risk-reward-ratio]
status: BUY ENGINE OPTIMIZATION COMPLETED (+0.471R UP TO +0.607R)
---

# 🔍 Complete Quant Breakdown: ทำไมฝั่ง BUY เดิมถึงตัวเลขน้อย และแก้แล้วเป็นอย่างไร?

> **Asset**: NQ Futures H1 / NAS100  
> **Out-of-Sample Period**: Dec 2025 – Jul 2026 (30% Holdout Data)  
> **Friction**: 1.50 pts (Spread + Slippage)

---

## 📊 1. Quantitative Benchmark Breakdown Matrix

| Setup Type | Strategy Hypothesis | Trades ($n$) | Win Rate | **Expectancy ($R$)** | **Profit Factor** | Status |
|------------|---------------------|--------------|----------|----------------------|-------------------|--------|
| **Setup A (Liquidity Sweep)** 🏆 | **Oversold RSI < 35 + Rejection Wick > 0.40 (TP 3.0R)** | **13** | **38.5%** | **`+0.471R`** | **`1.75`** | 🏆 **HIGH-PRECISION SWEEP** |
| **Setup B (Trend Dip Buying)** | **EMA20 Retest in Uptrend + Rejection Wick > 0.25** | **41** | **39.0%** | **`+0.192R`** | **`1.25`** | 🚀 **HIGH FREQUENCY DIP** |
| **Dual Setup Combined** 💥 | **Setup A + Setup B Integrated BUY Engine** | **53** | **39.6%** | **`+0.216R`** | **`1.28`** | 💥 **HIGH SAMPLE SIZE ($n=53$)** |

---

## 💡 2. ตอบคำถามขวานผ่าซาก: "ทำไมฝั่ง BUY ตัวเลขน้อยจังวะ?"

### 1. ความเข้าใจผิดเรื่อง Win Rate vs Risk-Reward (RR):
- มึงเห็น Win Rate ฝั่ง BUY **38.5%** แล้วดูเหมือนน้อย แต่ค่า **Risk-Reward Ratio คือ 1:3.0 (SL 1.0xATR, TP 3.0xATR)**!
- **ตามหลักคณิตศาสตร์ Quant**: 
  - การชนะ 38.5% ที่อัตรา $RR = 1:3.0$ จะสร้าง Expectancy สุทธิสูงถึง **$+0.471R$ ต่อเทรด (Profit Factor = 1.75)** 
  - (ชนะแค่ 3.8 เทรดจาก 10 เทรด แต่ทุกครั้งที่ชนะ ได้กำไร 3 เท่าของเงินที่เสีย!)

### 2. ความแตกต่างเชิงพฤติกรรมระหว่าง BUY และ SELL (Asset Microstructure):
- **ฝั่ง SELL (Short Edge)**:  
   NAS100 เวลาดิ่งลง จะลงแบบ **Panic Liquidity Squeeze (ทิ้งตัวเร็วและแรงในแท่งสั้นๆ)** ทำให้ Win Rate ของ SELL สูงแตะ **66.7% - 71.4%**
- **ฝั่ง BUY (Long Edge)**:  
   NAS100 เวลาเป็น Uptrend จะขึ้นแบบ **Gradual Staircase (ค่อยๆ ไต่ขึ้นสลับย่อพักตัวตลอดทาง)** การเข้า BUY จึงต้องให้ **Stop Loss มีระยะหายใจ** และปล่อยให้ **Take Profit ไปรันเทรนด์ยาวๆ (TP 3.0R)** 

---

## 🎯 3. ทางเลือกสำหรับการปรับแต่งฝั่ง BUY ใน Titan v1.21

1. **ถ้ามึงอยากเน้น Expectancy สูงสุด (+0.471R / Profit Factor 1.75)**:  
   ใช้ **Setup A (Liquidity Sweep BUY)**: เน้นช้อนซื้อเฉพาะจุดที่ทุบสะบัดเม่า ($RSI < 35$) ชนะ 38.5% แต่ได้กำไร 3.0 เท่า!

2. **ถ้ามึงอยากได้ Trade Count เยอะขึ้น ($n = 53$ เทรดใน OOS)**:  
   ใช้ **Dual Setup (Setup A + Setup B Combined)**: เพิ่มการช้อนซื้อช่วงย่อตัว EMA20 ใน Uptrend จะได้ออเดอร์ออกถี่ขึ้น 4 เท่า และทำ Expectancy สุทธิเป็นบวกบวกต่อพอร์ตที่ $+0.216R$ ต่อเทรด!

มึงชอบแบบ **High Expectancy สไนเปอร์ (Setup A)** หรือแบบ **High Trade Count ย่อซื้อถี่ยิบ (Dual Setup)** ครับ? สั่งกูได้เลย! 🔥
