---
title: "🌐 Awesome Systematic Trading Resources"
date: 2026-07-31
tags: [resources, quant, python, backtesting, tools, awesome-list]
source: https://github.com/paperswithbacktest/awesome-systematic-trading
---

# 🌐 Awesome Systematic Trading Resources

> คลังรวมเครื่องมือ งานวิจัย และสถาปัตยกรรมสำหรับ Quant & Systematic Trading

---

## 🛠️ Top Backtesting & Execution Frameworks

### 1. Vector-Based (Ultra Fast / Parameter Sweeps)
- **[vectorbt](https://github.com/polakowo/vectorbt)** — Numba-accelerated Vectorized Backtesting. เหมาะที่สุดสำหรับการรัน Parameter Sweep หลักหมื่น combination ในไม่กี่วินาที
- **[pysystemtrade](https://github.com/robcarver17/pysystemtrade)** — Framework ตามแนวคิดหนังสือ *Systematic Trading* โดย Rob Carver (เน้น Position Sizing, Volatility Targeting, Trend Following)

### 2. Event-Driven (High Precision & Replay)
- **[nautilus_trader](https://github.com/nautechsystems/nautilus_trader)** — High-performance Rust/Python event-driven engine สำหรับ Order Book & Tick-level backtesting
- **[QuantConnect (Lean)](https://github.com/QuantConnect/Lean)** — Enterprise-grade C#/Python engine รองรับ Multi-asset & Brokerage APIs
- **[backtrader](https://github.com/mementum/backtrader)** / **[backtesting.py](https://github.com/kernc/backtesting.py)** — Lightweight event-driven backtesters สำหรับทดสอบกลยุทธ์ไวๆ
- **[HFTBacktest](https://github.com/nkaz001/hftbacktest)** — Backtesting ชั้นสูงสำหรับข้อมูล High-Frequency Data (L2/L3 Orderbook)

### 3. Crypto Bots & Arbitrage
- **[Freqtrade](https://github.com/freqtrade/freqtrade)** — Open-source Python crypto bot (Telegram integration, Hyperopt ML tuning)
- **[Jesse](https://github.com/jesse-ai/jesse)** — Advanced Python framework สำหรับกลยุทธ์ Crypto
- **[Hummingbot](https://github.com/CoinAlpha/hummingbot)** — Market making & Liquidity provider bot

---

## 📊 Analytics, Metrics & Risk Management

- **[QuantStats](https://github.com/ranaroussi/quantstats)** — สร้าง Tear Sheet สรุป Risk Metrics (Sharpe, Sortino, Max Drawdown, CAGR, Monthly Heatmap)
- **[ffn](https://github.com/pmorissette/ffn)** — คำนวณ Performance & Risk metrics ใน Python
- **[pandas-ta](https://github.com/twopirllc/pandas-ta)** — 130+ Technical Indicators & Candlestick patterns บน Pandas
- **[TA-Lib](https://github.com/mrjbq7/ta-lib)** — C-accelerated Technical Analysis library

---

## 💡 Key Strategies & Concepts in Repo

1. **Volatility Targeting & Risk Parity:** ปรับ Lot size อัตโนมัติด้วยความผันผวน (ตรงกับ `vol_shadow_log` ของ Sovereign Pure)
2. **Trend Following & Breakout:** Donchian, Breakout Filters + Moving Averages
3. **Statistical Arbitrage & Pair Trading:** Cointegration, Spread Trading, Mean Reversion
4. **Machine Learning / Signal Classification:** CatBoost/LightGBM สำหรับกรองสัญญาณเทรด (Filter Model)

---

## 🔗 External Links
- **Paper Repository:** [paperswithbacktest.com](https://paperswithbacktest.com)
- **GitHub Repository:** [awesome-systematic-trading](https://github.com/paperswithbacktest/awesome-systematic-trading)
