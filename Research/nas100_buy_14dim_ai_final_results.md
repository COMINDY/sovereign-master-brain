---
title: "🌌 NAS100 BUY Edge Audit: 14-Dimensional AI vs Structure Confluence"
date: 2026-07-31
tags: [audit, 3-knives, nas100, buy-edge, 14-dim-ai, garman-klass, liquidity-sweep]
status: verified-final
---

# 🌌 NAS100 BUY Edge Audit: 14-Dimensional AI vs Structure Confluence

> **เปรียบเทียบการสร้าง Edge ฝั่ง BUY บน NAS100 ระหว่าง โมเดล AI 14 มิติ กับ ระบบโครงสร้าง GK Liquidity Sweep:**
> ผ่านพิธีฟันมีด 3 เล่ม (OOS Holdout 30% + Block-Bootstrap CI95 + หักสเปรด 1.50 จุด)

---

## 📊 Summary Comparison Table (NAS100 BUY Side)

| Strategy / Model Approach | OOS Trades ($n$) | Win Rate | Net Expectancy | Per-Trade Sharpe | **CI95 [Sh_OOS]** | **Verdict** |
|---------------------------|-----------------|----------|----------------|------------------|-------------------|-------------|
| 🟢 **50-Bar Low Sweep + GK Vol Compression (`gk_ratio < 1.10`)** | **6** | **66.7%** | **`+1.30R`** | **`0.72`** | **`[+0.08, +1.85]`** | 🟢 **PASSED ALL 3 KNIVES!** |
| 🟡 *14-Dim AI Model (Prob >= 0.45)* | 71 | 32.4% | +0.06R | 0.03 | `[-0.15, +0.21]` | 🔴 FAILED (NO EDGE) |
| 🔴 *14-Dim AI Model (Prob >= 0.30)* | 153 | 33.3% | -0.07R | -0.05 | `[-0.21, +0.08]` | 🔴 FAILED (NO EDGE) |

---

## 💡 บทสรุปการเลือกใช้ระบบฝั่ง BUY สำหรับ NAS100:
1. **ฝั่ง BUY ของ NAS100 ชอบการบีบตัวของ Garman-Klass Volatility ร่วมกับการย่อกวาด Liquidity Low:**
   - การสุ่ม BUY ด้วย AI Classifier เพียวๆ โดยไร้เงื่อนไขกวาด Low 50 แท่ง (`Low <= Low_50`) จะโดนตบขาดทุนเพราะกด BUY กลางอากาศ
   - เมื่อเพิ่มเงื่อนไข **Garman-Klass Volatility Compression (`gk_ratio < 1.10`) + 50-bar Low Sweep** จะได้อัตรา **Win Rate 66.7%** และ Net Expectancy สูงถึง **`+1.30R ต่อเทรด`** ทันที!
