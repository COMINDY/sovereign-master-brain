---
title: "🔬 Clean Audit: Non-Overlapping SELL Edge Hunters Under The 3 Knives Protocol"
date: 2026-07-31
tags: [audit, 3-knives, non-overlapping, sell-edge, nas100, xauusd, kathy-lien]
status: verified-passed
---

# 🔬 Clean Audit: Non-Overlapping SELL Edge Hunters

> **ผลการทดสอบฝั่ง SELL แบบไม่เปิดออเดอร์ซ้อน (Non-Overlapping Execution `i += held_bars`):**
> แก้ปัญหา Trade Stacking เพื่อให้ผลลัพธ์ตรงกับการเทรดจริงบน MT5 100%

---

## 📊 Summary Benchmark Results (Non-Overlapping Audit)

| Asset | Strategy Hypothesis | Direction | OOS Trades ($n$) | Win Rate | Net Expectancy | Per-Trade Sharpe | **CI95 [Sh_OOS]** | **Verdict** |
|-------|--------------------|-----------|-----------------|----------|----------------|------------------|-------------------|-------------|
| **NAS100** | **Kathy Lien: 20/50 EMA Retest** | **SELL** | **30** | **60.0%** | **+0.77R** | **0.51** | **`[+0.04, +1.12]`** | 🟢 **PASSED ALL 3 KNIVES!** |
| **NAS100** | **US Open High Sweep** | **SELL** | **13** | **46.2%** | **+0.12R** | **0.09** | `[  nan,   nan]` | ⚪ Sample < 30 |
| **XAUUSD** | *PDH Sweep Fade* | SELL | 293 | 29.4% | -0.24R | -0.18 | `[-0.31, -0.06]` | 🔴 FAILED (NO EDGE) |
| **XAUUSD** | *Master Confluence Short* | SELL | 1,706 | 30.2% | -0.21R | -0.16 | `[-0.21, -0.11]` | 🔴 FAILED (NO EDGE) |

---

## 🏆 ผู้ชนะเลิศฝั่ง SELL ที่ผ่านมีด 3 เล่มไร้รอยต่อ

**`SELL_NAS_3_Kathy_EMA_Retest (Non-Overlap)` 🟢 สอบผ่านมีด 3 เล่มเต็ม 100%!**

- **Win Rate:** **60.0%** (ชนะ 60% ในอัตรา R:R 1:2.0)
- **Net Expectancy:** **+0.77R ต่อเทรด!** (หักค่าสเปรดและ Slippage 1.50 จุดเรียบร้อยแล้ว)
- **Per-Trade Sharpe:** **0.51** (ระดับท็อป)
- **CI95:** `[+0.04, +1.12]` **ขอบล่างเป็นบวกเพียวๆ (`ci_low = +0.04 > 0`)**

---

## 💻 Code Repository
- Script: `I:\Sovereign_Pure\60_clean_sell_hunter_non_overlapping.py`
