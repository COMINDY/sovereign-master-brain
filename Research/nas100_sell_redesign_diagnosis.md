---
title: "NAS100 SELL Redesign — Analysis & Diagnosis"
date: 2026-08-01
tags: [nas100, sell-edge, redesign, diagnosis, market-structure, upward-bias]
status: DIAGNOSIS COMPLETE — ACTION REQUIRED
---

# 🔴 NAS100 SELL Redesign — Honest Diagnosis

> Run: 2026-08-01 14:27 | Data: NAS100 M5 Feb2025–Jul2026 (99,836 candles)

---

## ❌ Pre-Screen Results (8 Strategies, 0 Passed)

| Strategy | Trades | WR | Exp(R) | Root Cause |
|----------|--------|-----|--------|------------|
| SELL_A PDH+H1Bear+UWick | <10 | n/a | n/a | Too selective — rare signal |
| SELL_B 20H+RSIDiv+NY | 269 | 30.9% | -0.039R | RSI div on NAS too noisy |
| SELL_C 10H+GKComp+Bear | 135 | 27.4% | -0.096R | GK comp not predictive direction |
| SELL_D 50H+RSIDiv+H1Bear | 205 | 35.6% | -0.013R | Closest — still negative |
| SELL_E PDH+H1Bear+UWick50 | <10 | n/a | n/a | Too selective |
| SELL_F EMAStack+Rejection | 33 | 27.3% | -0.160R | Bear stack = already trending |
| SELL_G AnySweep+MomRev | 163 | 30.1% | -0.080R | Too broad after filters |
| SELL_H BOS_PDH_Follow | 29 | 24.1% | -0.239R | Worst — gap entry next session |

**0/8 strategies positive expectancy**

---

## 🔍 Real Root Cause — Data Period Problem

> ⚠️ **NAS100 ช่วง Feb 2025 – Jul 2026 เป็นช่วง Uptrend แรงมาก**

ข้อมูลที่มี 99,836 candles = ประมาณ **17 เดือน** เท่านั้น  
ช่วงนี้ NAS100 ขึ้นจาก ~22,000 → ~22,000+ ด้วย volatility ต่ำถึงกลาง

### Win Rate เฉลี่ย 27-35% → ทำไม?

SELL strategy ต้องการ WR > 33% เพื่อ BE ที่ TP=2:SL=1  
ทุก strategy ได้ WR ต่ำกว่า threshold นี้ → แปลว่า:

1. **NAS100 ช่วงนี้มี upward bias แรง** → price tends to recover after sweep
2. **Short-term reversal signals บน M5 ไม่ robust** กับ momentum ระยะยาว
3. **17 เดือน = ไม่พอ** สำหรับ SELL edge — ต้องการ full cycle (bull + bear)

---

## 🎯 Structural Finding: SELL_D ใกล้ที่สุด (Exp=-0.013R)

```
SELL_D: 50H Sweep + RSI Div + H1 Bear Context
  Trades: 205  WR: 35.6%  Exp: -0.013R  Sharpe: -0.009
```

เหลือแค่ 0.013R จากการ breakeven — ถ้า:
- ลด spread จาก 1.5 pts (broker ถูกกว่า) → อาจ flip positive
- เพิ่ม data ที่ครอบ bear market period → WR อาจสูงขึ้น
- Fine-tune SL (ลด SL เล็กน้อย) → friction ลด

---

## 📋 Action Plan — 3 Options

### Option 1: รอข้อมูลเพิ่ม (แนะนำ)
- ใช้ Dukascopy หรือ MT5 ดึง NAS100 M5 ย้อนหลัง 5-10 ปี
- ต้องมี data ที่ครอบ **2022 bear market** (NAS ลงจาก 16k → 10k)
- เป็นช่วงที่ SELL signals จะ work ดีที่สุด

### Option 2: เปลี่ยน Timeframe (เร็ว)
- ทดสอบ NAS100 **H1** แทน M5
- H1 มี noise น้อยกว่า — market structure ชัดกว่า
- ใช้ data H1 ที่มีอยู่ `NAS100_H1.csv`

### Option 3: SELL ด้วย Mean-Reversion หลัง Spike (ต่าง)
- ไม่ใช่ trend-following sell
- เข้า SELL หลัง **gap up** สูง → ค้าง overnight → ปิด gap
- หรือ หลัง ATH ทำใหม่ + RSI > 80 + wick rejection → fade

---

## 💡 Immediate Next Step

```
ทดสอบ NAS100_H1.csv → 
  1. SELL_D logic (50H Sweep + RSI Div + H1 Bear)
  2. ปรับ window sizes ให้เหมาะกับ H1
  3. ถ้า Exp > 0 → run MCPT → deploy
```

Script ที่ต้องสร้างต่อ: `74_nas100_h1_sell_redesign.py`
