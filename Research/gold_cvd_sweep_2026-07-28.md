---
date: "2026-07-28"
tags: "[research, backtest, gold, cvd]"
configs_tested: 138
profitable_pct: 0.0
avg_net_bps: -1.7946
generated: "2026-07-28 13:19"
---

# 🔬 Research: Gold CVD Sweep — 2026-07-28

## Overview
| Metric | Value |
|--------|-------|
| Configs Tested | 138 |
| Profitable | 0 (0%) |
| Avg Win Rate | 32.1% |
| Avg Net bps | -1.7946 |
| Best Net bps | -0.7854 if best else N/A |

## Top 5 Configurations
| Window | Threshold | Horizon | Trades | WR% | Net bps |
|--------|-----------|---------|--------|-----|---------|
| 200 | 0.25 | 100 | 45 | 44.4% | -0.7854 |
| 200 | 0.25 | 50 | 45 | 26.7% | -0.8812 |
| 100 | 0.2 | 300 | 1932 | 37.8% | -1.0615 |
| 200 | 0.1 | 500 | 4065 | 42.7% | -1.0618 |
| 200 | 0.1 | 1000 | 4055 | 45.8% | -1.0811 |

## 📌 Key Observations
- 🔴 Only 0% configs profitable — edge อ่อนมาก
- ⚠️ Average net bps ติดลบ — ต้องหัก transaction cost ให้ดี
- ✅ Best: window 200, threshold 0.25, horizon 100

## Source
`I:/gold_cvd_sweep_results.csv` — 138 rows

_Generated: 2026-07-28 13:19_
