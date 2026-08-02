---
title: "Phase 3 Hawkes Process Parameter Sweep & Sensitivity Audit"
date: 2026-08-01
tags: [nas100, sell-edge, hawkes-process, parameter-sweep, mcpt, statistical-audit]
status: SWEEP COMPLETE — BEST CONFIG IDENTIFIED
---

# ⚡ Hawkes Process Parameter Sweep & Sensitivity Audit Results

> **Asset**: NQ Futures H1 / NAS100 (2024–2026 Data)  
> **Target**: Sweep $\kappa \in [0.05, 0.20]$, $\alpha \in [0.5, 1.2]$, Quantile $q \in [0.50, 0.80]$  
> **Friction**: 1.50 pts (Spread + Slippage)

---

## 📊 1. Parameter Sensitivity Matrix (Key Highlights)

| Kappa ($\kappa$) | Alpha ($\alpha$) | Quantile ($q$) | Trades ($n$) | Win Rate | Expectancy ($R$) | Sharpe | $p(\text{Sharpe})$ | Verdict |
|------------------|------------------|----------------|--------------|----------|------------------|--------|--------------------|---------|
| 0.05 | 0.5 | 0.50 | 34 | 38.2% | +0.123R | +0.084 | 0.2940 | 🟡 MARGINAL |
| 0.05 | 0.5 | 0.80 | 41 | 41.5% | +0.155R | +0.107 | 0.2210 | 🟡 MARGINAL |
| **0.10** | **0.5** | **0.80** | **40** | **42.5%** | **+0.184R** | **+0.127** | **0.1960** | 🟡 **BEST CONFIG** |
| 0.20 | 0.5 | 0.65 | 31 | 32.3% | -0.049R | -0.035 | 0.5240 | 🔴 FAILED |

---

## 💡 2. Quant Diagnosis & Insights

1. **Optimal Configuration Identified**:
   - **$\kappa = 0.10$** (Decay Rate ปานกลาง สลายตัวช่วง Volatility Spike ใน ~10 แท่ง H1)
   - **$\alpha = 0.50$** (Shock Impact พอเหมาะ ไม่ปัดตกออเดอร์มากเกินไป)
   - **Quantile $q = 0.80$** (กรองตัด 20% บนสุดที่เป็น Extreme Squeeze Volatility ออกไป)
2. **Expectancy พุ่งขึ้นสูงสุดเป็น $+0.184R$ ต่อเทรด** (Win Rate 42.5%)
3. **ข้อจำกัดทางสถิติ ($p$-value = 0.1960)**:
   - แม้ Expectancy จะเป็นบวกสูงถึง $+0.184R$ แต่เนื่องจาก $N = 40$ เทรด ค่า $p$-value จึงยังอยู่ที่ 0.1960 (ยังไม่ผ่านเกณฑ์ $p < 0.05$) 
   - **สาเหตุ**: Data H1 NQ Futures มีความยาว 2 ปี (11,423 แท่ง) พอผ่าน D1 Bearish Regime + Hawkes Quiet Filter สัญญาณเลยเหลือ 40 เทรด ซึ่งต้องอาศัยข้อมูลย้อนหลัง 5-10 ปีเพื่อให้ $N \ge 150+$ ถึงจะดัน $p$-value ให้ผ่านเกณฑ์ $p < 0.05$ ได้อย่างมั่นคง

---

## 🎯 3. Next Steps

- **นำ Parameter $\kappa=0.10, \alpha=0.50, q=0.80$ ไปรวมกับ Phase 4 (Hierarchical Extremes BOS/CHoCH)** เพื่อเพิ่มปัจจัยยกระดับ Win Rate และเก็บสัญญาณเพิ่มเติม
