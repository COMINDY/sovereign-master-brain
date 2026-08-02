---
title: "🎥 Breakout Trading Academy (Tomas Nesnidal) Master Index & Robustness Framework"
date: 2026-08-01
tags: [breakout-trading-academy, tomas-nesnidal, breakoutOS, robustness-framework, neighbor-test, cross-market, 3-knives]
status: indexed
---

# 🎥 Breakout Trading Academy (Tomas Nesnidal) Master Index & Robustness Framework

> **ดรรชนีความรู้และกระบวนการพิสูจน์ความแข็งแกร่ง (Robustness Framework) จากช่อง `@BreakoutTradingAcademy`:**
> โดย Tomas Nesnidal (ผู้จัดการกองทุนเฮดจ์ฟันด์ และผู้สร้างระบบ BreakoutOS)

---

## 🏛️ กรอบการทดสอบความแข็งแกร่ง 5 ขั้นตอน (5-Test Robustness Framework)

เพื่อป้องกันปัญหา **Overfitting / Curve Fitting** ทั่วไป Breakout Trading Academy บังคับให้กลยุทธ์ทุกตัวต้องสอบผ่าน **5 Robustness Tests** ก่อนนำไปรันพอร์ตจริง:

1. **Out-of-Sample (OOS) Validation:**
   - ทดสอบบนข้อมูลอนาคตที่ไม่เคยถูกนำมาปรับจูน parameter มาก่อน
2. **Neighbor Values Analysis (Parameter Sensitivity Test):**
   - ทดสอบความไวของตัวแปร โดยลองขยับค่ารอบข้าง (เช่น ATR 12, 14, 16) หากขยับตัวเลขเพียงนิดเดียวแล้วกำไรดิ่งวูบ แสดงว่า Overfit ขยะ!
3. **Walk-Forward Rank Stability:**
   - ประเมินความเสถียรของกลยุทธ์ผ่านหน้าต่างเวลาที่เคลื่อนที่ไปข้างหน้า (Rolling Windows)
4. **Recency Performance Indexing:**
   - เช็กว่า Edge นั้นยังคงทำงานได้ดีในข้อมูลช่วงล่าสุดหรือไม่ (ป้องกัน Alpha Decay)
5. **Cross-Market Validation (การทดสอบข้ามตลาด):**
   - นำกลยุทธ์ชุดเดียวกันไปรันบนสินทรัพย์อื่นที่มีพฤติกรรมใกล้เคียงกัน (เช่น NAS100, S&P500, Dow Jones) โดยไม่เปลี่ยนตัวแปร หากกลยุทธ์ชนะข้ามตลาดได้ แสดงว่าเป็น Edge จริงจากโครงสร้างตลาด!

---

## 💡 การเชื่อมโยงและประยุกต์ใช้ใน Sovereign System ของเรา:

| กรอบของ Breakout Trading Academy | Sovereign 3 Knives Validation Protocol |
|---------------------------------|-----------------------------------------|
| **1. Out-of-Sample (OOS) Validation** | **มีดเล่มที่ 1: OOS 30% Holdout Data (160,000+ แท่ง)** |
| **2. Neighbor & Walk-Forward Test** | **มีดเล่มที่ 2: 1,000-Iteration Block-Bootstrap CI95 (`ci_low > 0`)** |
| **3. Real Cost Deduction** | **มีดเล่มที่ 3: Real Broker Spread & Slippage Deduction** |
| **4. Cross-Market Validation** | **การสแกนเปรียบเทียบข้ามสินทรัพย์ (NAS100 vs XAUUSD)** |

---

## 💻 Code Repository
- Multi-Edge Quant Factory: `I:\Sovereign_Pure\69_multi_edge_quant_factory.py`
