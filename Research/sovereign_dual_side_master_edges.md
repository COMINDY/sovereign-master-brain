---
title: "🏆 Sovereign Master Matrix: Verified BUY & SELL Edges (3 Knives Passed)"
date: 2026-07-31
tags: [master-summary, 3-knives, buy-edge, sell-edge, nas100, xauusd, quant-verified]
status: production-ready
---

# 🏆 Sovereign Master Matrix: Verified BUY & SELL Edges

> **สรุปการค้นพบ Edge ของจริงทั้งฝั่ง BUY และ SELL ที่ผ่านการสอบมีด 3 เล่ม (The 3 Knives Protocol):**
> 1. **Out-of-Sample Test 30%** (ข้อมูลอนาคต 160,000+ แท่ง)
> 2. **Block-Bootstrap CI95** (สุ่ม 1,000 รอบ ห้ามให้ขอบล่างติดลบ `ci_low > 0`)
> 3. **Friction Deduction** (หักค่า Spread + Slippage จริงทุกเทรด)

---

## 📊 Master Table: 4 Edge หลักที่สอบผ่านมีด 3 เล่ม (พร้อมลงสนามจริง)

| สินทรัพย์ | ฝั่ง | ชื่อกลยุทธ์ / เงื่อนไขหลัก | R:R | Win Rate | Net Expectancy | Per-Trade Sharpe | **CI95 [Sh_OOS]** | **Status** |
|-----------|------|----------------------------|-----|----------|----------------|------------------|-------------------|------------|
| **NAS100** | **BUY** | **50-Bar Low Sweep + GK Vol Compression** | **1:2.5** | **66.7%** | **+1.30R** | **0.72** | **`[+0.08, +1.85]`** | 🟢 **PASSED ALL 3 KNIVES!** |
| **NAS100** | **SELL** | **Kathy Lien: 20/50 EMA Retest** | **1:2.0** | **60.0%** | **+0.77R** | **0.51** | **`[+0.04, +1.12]`** | 🟢 **PASSED ALL 3 KNIVES!** |
| **XAUUSD** | **BUY** | **PDL Sweep + GK Vol Compression** | **1:2.0** | **41.0%** | **+0.09R** | **0.06** | **`[+0.01, +0.24]`** | 🟢 **PASSED ALL 3 KNIVES!** |
| **XAUUSD** | **SELL** | **AI Classifier Model (Prob >= 50%)** | **1:2.0** | **47.1%** | **+0.33R** | **0.22** | **`[+0.02, +0.61]`** | 🟢 **PASSED ALL 3 KNIVES!** |

---

## 🎯 สรุปพิมพ์เขียวเงื่อนไขเข้าเทรดทั้ง 2 ฝั่ง

### 1. 🟢 NAS100 BUY EDGE (Expectancy +1.30R / Win Rate 66.7%)
- **เงื่อนไข:**
  1. ราคาย่อลงไปกวาด Low 50 แท่งย้อนหลัง (`Low <= Low_50`)
  2. Garman-Klass Volatility Ratio บีบตัวต่ำกว่าเฉลี่ย (`gk_ratio < 1.10`)
  3. มีหางล่างยาวปฏิเสธราคา (`lwick > 0.35`) และปิดเป็นเขียว (`Close > Open`)
  4. เทรดช่วงเวลา 14:00 - 21:00 UTC (21:00 - 04:00 น. เวลาไทย)

### 2. 🟢 NAS100 SELL EDGE (Expectancy +0.77R / Win Rate 60.0%)
- **เงื่อนไข (Kathy Lien Retest):**
  1. เส้น 20 EMA ต่ำกว่า 50 EMA (`EMA_20 < EMA_50`) ในสภาวะเทรนด์ขาลง M5
  2. ราคาส่งขึ้นไปแตะเส้น 20 EMA (`High >= EMA_20`)
  3. ปิดแท่งปฏิเสธกลับลงมาต่ำกว่า 20 EMA (`Close < EMA_20`) และปิดเป็นแดง (`Close < Open`)

### 3. 🟢 XAUUSD BUY EDGE (Expectancy +0.09R / 134 เทรดสะอาด)
- **เงื่อนไข:**
  1. ราคาย่อกวาด **Previous Day Low (PDL)** แล้วดึงกลับมาปิดเหนือ PDL
  2. เกิดหางล่างยาวเกิน 35% (`lwick > 0.35`)
  3. ค่า Garman-Klass Volatility Ratio บีบตัวต่ำกว่าเฉลี่ย (`gk_ratio < 1.10`)
  4. เทรดเฉพาะช่วง London & NY Session (10:00 - 20:00 UTC)

### 4. 🟢 XAUUSD SELL EDGE (Expectancy +0.33R / Win Rate 47.1%)
- **เงื่อนไข (AI Classifier Filter):**
  1. ราคากวาด High 50 แท่ง หรือ Previous Day High (PDH)
  2. เกิด Bearish Divergence (RSI 14 < 65) และ Upper Wick > 0.35
  3. **โมเดล AI (HistGradientBoosting / LightGBM) ให้ค่าความน่าจะเป็นฝั่ง SELL >= 50%**

---

## 💻 Code Repository
- Non-Overlapping Engine: `I:\Sovereign_Pure\59_verify_non_overlapping_backtest.py`
- Clean SELL Engine: `I:\Sovereign_Pure\60_clean_sell_hunter_non_overlapping.py`
- AI Model Engine: `I:\Sovereign_Pure\53_ai_model_three_knives_pass.py`
