---
title: "MCPT Three Knives Validation Results"
date: 2026-08-01T12:46:12Z
tags: [mcpt, three-knives, nas100, xauusd, edge-validation, statistical-significance]
status: COMPLETED
method: Signal Circular-Shift Permutation (N=2,000) + Block Bootstrap CI95
---

# 🧪 MCPT Results — Three Knives Protocol
## Run: 2026-08-01 12:46 | N_PERMS=2,000 | Method=Signal Circular-Shift

> H0: Any random entry timing gives same results  
> H1: This specific signal timing is superior  
> Gate: p < 0.05 on ≥3 of 4 tests

---

## 📊 NAS100 Results (M5, 99,836 candles, OOS=29,951)

| Strategy | Trades | WR | Exp(R) | Sharpe | Score | Verdict |
|----------|--------|-----|--------|--------|-------|---------|
| SELL_NAS_1_US_Open_Sweep | 123 | 38.2% | -0.121R | -0.100 | 0/4 | 🔴 FAILED |
| SELL_NAS_2_GK_Spike_Dump | 107 | 31.8% | -0.116R | -0.083 | 0/4 | 🔴 FAILED |
| SELL_NAS_3_Kathy_EMA | 782 | 34.9% | -0.028R | -0.019 | 0/4 | 🔴 FAILED |

**NAS100 Gate: 0/3 PASSED — สัญญาณที่ define ไว้ ไม่มี edge**

---

## 📊 XAUUSD Results (M5, 533,916 candles, OOS=160,175)

| Strategy | Trades | WR | Exp(R) | Sharpe | Score | Verdict |
|----------|--------|-----|--------|--------|-------|---------|
| SELL_XAU_1_PDH_Sweep | 293 | 29.4% | -0.240R | -0.180 | 0/4 | 🔴 FAILED |
| SELL_XAU_2_RSI_Div | 708 | 32.8% | **-0.012R** | **-0.008** | **3/4** | **🟢 PASSED** |
| SELL_XAU_3_Master | 1,706 | 30.2% | -0.213R | -0.158 | 0/4 | 🔴 FAILED |

**XAUUSD Gate: 1/3 PASSED — RSI_Div มี timing skill ทางสถิติ**

---

## 🔍 Deep Analysis: SELL_XAU_2_RSI_Div (PASSED 3/4)

```
p(Sharpe)     = 0.031  ✅  (< 0.05)
p(Expectancy) = 0.035  ✅  (< 0.05)
p(ProfitFact) = 0.035  ✅  (< 0.05)
Bootstrap CI95 = [-0.079, +0.064], P(Sh>0)=40.4%  ❌

H0 Null Sharpe distribution: [-0.157, -0.016]
Observed Sharpe:               -0.008
```

### 🤔 Paradox: ทำไม PASSED แต่ Expectancy เป็น Negative?

- H0 (random entry timing): avg Sharpe ≈ **-0.087** (null center)
- Observed (RSI_Div signal): Sharpe = **-0.008**
- RSI_Div signal ดีกว่า random entry อย่างมีนัยสำคัญ **แต่ยังติดลบอยู่**

**ความหมาย**: สัญญาณ RSI_Div มี **timing skill จริง** (p < 0.05)  
→ เลือก entry time ที่ดีกว่า random อย่างมีนัยสำคัญ  
→ แต่ SL/TP ที่ใช้ (SL=1ATR, TP=2.5ATR) ยัง suboptimal  
→ ถ้า optimize SL/TP จะ flip positive ได้

---

## 🎯 Key Findings

### NAS100 — ทำไม SELL signals ทั้ง 3 ตัวถึง FAIL?

1. **US Open Sweep (NAS_1)**: WR 38%, Exp -0.121R
   - Upper wick > 40% + hour 13-17 ไม่เพียงพอ
   - NAS100 มี upward bias แรงมาก → SELL ยาก
   - ต้องเพิ่ม structural confirmation (BOS DOWN)

2. **GK Spike Dump (NAS_2)**: WR 31.8%, Exp -0.116R
   - GK ratio > 1.40 ไม่ distinguish ทิศทาง
   - High vol = ทั้ง spike up/down ไม่ใช่แค่ dump

3. **Kathy EMA (NAS_3)**: WR 34.9%, Exp -0.028R
   - Closest to edge แต่ยัง negative
   - EMA crossover timed poorly on M5

### XAUUSD RSI_Div — จะ fix ยังงัย?

Signal มี timing skill แต่ต้องแก้:
1. **SL/TP optimization** → Bayesian Opt (Phase 5)
2. **TP/SL ratio** ปัจจุบัน: SL=1ATR, TP=2.5ATR → WR 32.8% (ต้อง WR > 28.6% เพื่อ BE)
3. อาจต้องลด SL หรือ TP ให้เหมาะสมกว่าเดิม

---

## 🗺️ Next Steps ตามผลนี้

### Immediate (Phase 1b):
1. **XAUUSD RSI_Div → Bayesian Optimize SL/TP**
   - ลอง SL: [0.5, 0.75, 1.0, 1.25, 1.5] ATR
   - ลอง TP: [1.0, 1.5, 2.0, 2.5, 3.0] ATR
   - หา combo ที่ Exp > 0 + MCPT confirmed

2. **NAS100 SELL → Redesign Signal Conditions**
   - เพิ่ม BOS DOWN confirmation (Hierarchical Extremes Phase 4)
   - เพิ่ม volume confirmation (tick vol spike)
   - ลอง higher TF confirmation (H1 bearish + M5 entry)

### File ต้องสร้างต่อไป:
- `72_xauusd_rsidiv_bayesian_opt.py` — Optimize SL/TP RSI_Div
- `73_nas100_sell_redesign.py` — New NAS100 SELL signal with BOS

---

## 📌 Ruling

> **NAS100 SELL strategies ตามที่ define ไว้ → ไม่มี statistical edge**  
> **XAUUSD RSI_Div → มี timing skill (p<0.05) แต่ต้องเพิ่มประสิทธิภาพ SL/TP**  
> **ห้าม Deploy NAS100 SELL ทั้ง 3 จนกว่าจะผ่าน MCPT ด้วย conditions ใหม่**
