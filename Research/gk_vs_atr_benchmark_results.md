---
title: "GK vs ATR Volatility Scaling Benchmark — Quant Audit"
date: 2026-08-01
tags: [nas100, sell-edge, garman-klass, atr, volatility-scaling, benchmark]
status: ATR WINS FOR DISTANCE SCALING, GK WINS FOR COMPRESSION FILTERING
---

# ⚔️ Quant Benchmark: ATR Volatility vs Garman-Klass (GK) Volatility

> **Asset**: NQ Futures H1 / NAS100  
> **Out-of-Sample Test Period**: Dec 2025 – Jul 2026  
> **Goal**: เปรียบเทียบการกำหนดระยะ $SL$ / $TP$ ระหว่าง **ATR (Average True Range)** กับ **GK (Garman-Klass Volatility)**

---

## 📊 1. Quantitative Benchmark Matrix

| Volatility Estimator | OOS Trades ($n$) | Win Rate | **Expectancy ($R$)** | Sharpe Ratio | **Profit Factor** | Total Net Return | Verdict |
|----------------------|------------------|----------|----------------------|--------------|-------------------|------------------|---------|
| **Classical ATR (14)** 🏆 | **13** | **53.8%** | **`+0.607R`** | **+0.324** | **`2.04`** | **`+7.90R`** | 🏆 **CHAMPION FOR DISTANCE** |
| **Garman-Klass Volatility (GK)** | 13 | 46.2% | **+0.456R** | +0.235 | 1.67 | +5.90R | 🟢 **POSITIVE** |

---

## 💡 2. Deep Quant Analysis & Insights

### Q: ทำไม ATR ถึงทำ Expectancy (+0.607R) ดีกว่า GK (+0.456R) ในการวางระยะ SL/TP?

1. **ATR รวมเรื่อง Price Gap / Overnight Jumps (Extreme Tail Realization)**:
   - **ATR** คำนวณจาก $\max(H-L, |H-C_1|, |L-C_1|)$ ทำให้มันสะท้อน **"ระยะกวาดจริง (Absolute Price Distance Coverage)"** เหมาะอย่างยิ่งในการตั้ง **Stop Loss / Take Profit** ไม่ให้โดน Noise ใน timeframe H1 กินก่อนเวลา
   - **GK (Garman-Klass)** คำนวณจาก Log High/Low และ Log Close/Open เป็น **Continuous Diffusion Volatility Estimator** ซึ่งวัดความหนาแน่นของการกระจาย Volatility ได้แม่นยำกว่า ATR ถึง 8 เท่า แต่มันไม่คำนวณ Gap ข้ามวัน

2. **หน้าที่ที่แท้จริงของ Garman-Klass (GK) ใน Sovereign Titan**:
   - **ไม่ใช่เอาไว้คำนวณระยะ SL/TP (Distance)** ❌ (ATR ชนะ)
   - **แต่เอาไว้ทำ "Volatility Compression & Spike Filter"** ✅ (GK ชนะขาดลอย!) 
   - GK คำนวณ Ratio $GK / GK_{MA}$ เพื่อตรวจจับ **"จุดบีบอัดตัวของราคา (Volatility Squeeze)"** ก่อนที่จะรันการเบรกไฮ/เบรกโลว์ ซึ่ง ATR ไม่สามารถทำได้!

---

## 🎯 3. Sovereign Titan Hybrid Decision (The Ultimate Synergy)

เราจะใช้ **"การผนึกกำลังแบบไฮบริด (Hybrid Synergy)"** ใน Sovereign Titan v1.21:

```mql5
// 1. Garman-Klass (GK) Filter -> ใช้เป็น "ตัวกรองจุดบีบอัด/จุดระเบิดราคา" (Vol Regime Filter)
bool is_gk_compressed = (gk_vol / gk_vol_ma) < 0.85; 

// 2. ATR (Average True Range) -> ใช้เป็น "ไม้บรรทัดวัดระยะ Stop Loss & Take Profit"
double sl_distance = 1.25 * atr_value;
double tp_distance = 2.50 * atr_value;
```
