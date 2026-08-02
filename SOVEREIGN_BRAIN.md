---
title: "Sovereign Quant Brain"
tags: "[dashboard, index]"
updated: "2026-08-01 11:52"
---

# 🧠 Sovereign Quant Brain

> Auto-generated knowledge base · clack x cook45  
> Last updated: 2026-08-01 11:52

---

## 📅 Latest Daily Briefs
```dataview
TABLE pnl as "PnL", win_rate as "WR%", total_trades as "Trades", alerts as "⚠️"
FROM "Daily"
SORT date DESC
LIMIT 7
```

---

## ⚙️ Systems
```dataview
TABLE win_rate as "WR%", total_pnl as "PnL", updated as "Updated"
FROM "Systems"
SORT updated DESC
```

---

## 📈 Recent Trades
```dataview
TABLE pnl as "PnL", win_rate as "WR%", total_trades as "Trades"
FROM "Trades"
SORT date DESC
LIMIT 5
```

---

## 🔬 Research
```dataview
TABLE profitable_pct as "Profitable%", avg_net_bps as "Net bps"
FROM "Research"
SORT date DESC
LIMIT 5
```

---

## 🚨 Active Alerts
```dataview
LIST
FROM "Alerts"
WHERE date = date(today)
```

---

_Auto-updated by brain_engine · 2026-08-01 11:52_
