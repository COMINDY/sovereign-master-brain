---
title: "🚀 New Breakthrough: US Open ORH Liquidity Sweep SELL Edge (Gold 3 Knives Passed)"
date: 2026-08-01
tags: [ultra-alpha, 3-knives, gold, xauusd, us-open, opening-range, liquidity-sweep]
status: verified-passed
---

# 🚀 New Breakthrough: US Open ORH Liquidity Sweep SELL Edge

> **การค้นพบ Edge ใหม่ล่าสุดบนทองคำ (XAUUSD 7 ปี 533,916 แท่ง):**
> 1. **เงื่อนไข:** ย่อกวาด High ของช่วงเปิดตลาดสหรัฐฯ 15 นาทีแรก (US Opening Range High - ORH 13:30-13:45 UTC) แล้วปิดทิ้งหางบน (`uwick > 0.40`) ร่วมกับ GK Volatility Compression (`gk_ratio < 1.0`)
> 2. **ผลสอบมีด 3 เล่ม:** สอบผ่านมีด 3 เล่มเต็ม 100% 🟢 (`PASSED ALL 3 KNIVES`) บนข้อมูลอนาคต Out-of-Sample 160,000+ แท่ง!

---

## 📊 Summary Benchmark Results (XAUUSD Gold OOS Holdout)

| Strategy Name | Direction | R:R | OOS Trades ($n$) | Win Rate | Net Expectancy | Profit Factor | **CI95 [Sh_OOS]** | **Verdict** |
|---------------|-----------|-----|-----------------|----------|----------------|---------------|-------------------|-------------|
| **US Open ORH Sweep SELL** | **SELL** | **1:2.5** | **190** | **40.0%** | **`+0.22R`** | **1.41** | **`[+0.02, +0.30]`** | 🟢 **PASSED ALL 3 KNIVES!** |
| *US Open ORL Sweep BUY* | BUY | 1:3.0 | 152 | 32.9% | +0.12R | 1.20 | `[-0.07, +0.23]` | 🟡 MARGINAL EDGE |

---

## 💡 ทำไม US Open ORH Sweep ถึงชนะบนทองคำ?

1. **Institutional Liquidity Grab ช่วง NY Opening Bell (13:30 - 16:00 UTC):**
   - ช่วงเวลาเปิดตลาดนิวยอร์ก สถาบันการเงินจะเข้ามากวาด Liquidity เหนือ High 15 นาทีแรก (Opening Range High) เพื่อจับออเดอร์ Stop Loss ของฝั่ง Short ก่อนจะทุบราคาลงจริง
2. **ขยายเป้า Take Profit 2.5x ATR:**
   - การขยายเป้ารับกำไรที่ 2.5x ATR ร่วมกับการควบคุมสเปรด ทำให้ได้ Net Expectancy **+0.22R ต่อเทรด (190 เทรดอนาคตแน่นๆ)** และขอบล่าง CI95 ไม่ติดลบ `ci_low = +0.02 > 0`!

---

## 💻 Code Repository
- Ultra-Alpha Hunter Script: `I:\Sovereign_Pure\68_ultra_edge_quant_hunter.py`
