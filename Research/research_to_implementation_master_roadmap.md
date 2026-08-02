---
title: "Research-to-Implementation Master Roadmap"
date: 2026-08-01
tags: [roadmap, implementation, sovereign-titan, mcpt, hawkes, hierarchical-structure, rl-trading, bayesian-opt, stat-arb]
status: active
priority: CRITICAL
---

# 🗺️ Research → Implementation Master Roadmap
## Sovereign AI Titan — ทุก Research ใช้ยังงัย

> จาก 13 YouTube channels + 14 GitHub repos → map เข้า Sovereign AI Titan v1.x
> สถานะ: v1.20 live แล้ว (GK/YZ Dynamic SL/TP + NAS100 Focus)

---

## 📊 Overview Matrix

```
Research Source          → Component ใน Titan         → Priority
──────────────────────────────────────────────────────────────────
neurotrader888/mcpt      → Statistical Edge Proof      🔴 NEXT UP
neurotrader888/hawkes    → Volatility Clustering       🔴 HIGH
neurotrader888/hierarch  → Multi-Scale BOS/CHoCH       🔴 HIGH
ZiadFrancis/RL Agent     → Exit Logic Replacement      🟡 MEDIUM
ZiadFrancis/Genetics     → Auto-evolve Entry Filter    🟡 MEDIUM
liupeng88/Bayesian Opt   → SL/TP/Window Tuning         🟡 MEDIUM
liupeng88/Stat-Arb       → Regime Detection            🟡 MEDIUM
Goshawk/Walk-Forward     → Anti-Overfitting Gate       🔴 HIGH
Goshawk/Anti-Overfit     → Strategy Survival Test      🔴 HIGH
Memlabs/Regime Change    → Market Regime Filter        🟡 MEDIUM
Code Trading/Bootstrap   → MCPT Enhancement            🔴 HIGH
```

---

## 🔴 PHASE 1 — Statistical Edge Proof (MCPT)
### งานวิจัย: neurotrader888/mcpt + Goshawk (Walk-Forward)

**ทำอะไร:**
- ยืนยันว่า Three Knives NAS100 SELL edge เป็น edge จริง ไม่ใช่ noise
- Monte Carlo Permutation Test: สุ่ม shuffle ลำดับผลลัพธ์ 10,000 รอบ
- ถ้า p-value < 0.05 → edge real ✅

**ไฟล์ที่ต้องสร้าง:**
```
I:\Sovereign_Pure\68_mcpt_three_knives_validation.py
```

**Algorithm (จาก neurotrader888/mcpt):**
```python
import numpy as np

def mcpt_test(returns: np.ndarray, n_permutations: int = 10000):
    """Monte Carlo Permutation Test"""
    observed_sharpe = sharpe_ratio(returns)
    
    count_better = 0
    for _ in range(n_permutations):
        shuffled = np.random.permutation(returns)
        if sharpe_ratio(shuffled) >= observed_sharpe:
            count_better += 1
    
    p_value = count_better / n_permutations
    return p_value, observed_sharpe

# Target: p < 0.05 → statistically significant edge
```

**Input Data:**
- `I:\Sovereign_Pure\60_clean_sell_hunter_non_overlapping.py` output trades
- NAS100 SELL trades จาก backtest 18ปี 1min cent

**Expected Output:**
- p-value < 0.05 = edge real → deploy v1.21
- p-value ≥ 0.05 = edge fake → ต้องหา edge ใหม่

**สถานะ:** 🔴 NOT STARTED — งาน NEXT

---

## 🔴 PHASE 2 — Walk-Forward Validation Gate
### งานวิจัย: Goshawk (EP 4 backtesting techniques + WFT explained)

**ทำอะไร:**
- แบ่ง 18ปี ออกเป็น IS (In-Sample) + OOS (Out-of-Sample) windows
- Anchored Walk-Forward: IS 12 เดือน → OOS 3 เดือน → slide
- ถ้า OOS Sharpe ≥ 70% ของ IS Sharpe → strategy robust

**Implementation:**
```python
def walk_forward_test(df, is_months=12, oos_months=3):
    """Anchored Walk-Forward Test"""
    results = []
    start = 0
    
    while start + is_months + oos_months <= total_months:
        is_data  = df[start : start + is_months]
        oos_data = df[start + is_months : start + is_months + oos_months]
        
        # Fit params on IS
        params = optimize_params(is_data)
        
        # Test on OOS
        oos_returns = backtest(oos_data, params)
        is_returns  = backtest(is_data, params)
        
        results.append({
            'is_sharpe':  sharpe(is_returns),
            'oos_sharpe': sharpe(oos_returns),
            'ratio':      sharpe(oos_returns) / sharpe(is_returns)
        })
        
        start += oos_months  # Slide forward
    
    return results

# Pass criterion: mean(oos_sharpe / is_sharpe) >= 0.7
```

**สถานะ:** 🔴 NOT STARTED — งาน PHASE 2

---

## 🔴 PHASE 3 — Hawkes Process Volatility Clustering Filter
### งานวิจัย: neurotrader888/hawkes.py

**ทำอะไร:**
- ใส่ Hawkes self-exciting intensity filter เข้า EA
- ถ้า intensity สูง (volatility cluster) → เพิ่ม SL margin หรือ skip trade
- ทำงานร่วมกับ GK volatility ที่อยู่ใน v1.20 แล้ว

**Code เราดึงมาแล้วจาก GitHub:**
```
C:\Users\COMINDY\.gemini\antigravity-ide\knowledge\neurotrader888_github\artifacts\hawkes_process.py
```

**Integration Point ใน Titan:**
```mql5
// Sovereign_AI_Titan.mq5
double hawkes_intensity = CalcHawkesIntensity(recent_trades, alpha, beta, mu);
double gk_vol = CalcGarmanKlass(bars, period);

// Combined volatility filter
double vol_score = gk_vol * (1.0 + hawkes_intensity);
double sl_pips   = BaseSL * vol_score;   // GK ทำอยู่แล้ว + Hawkes amplifier
double tp_pips   = BaseTP * vol_score;
```

**สถานะ:** 🟡 DESIGN READY — ต้องแปลง Python → MQL5

---

## 🟡 PHASE 4 — Hierarchical Market Structure (BOS/CHoCH)
### งานวิจัย: neurotrader888/hierarchical_extremes.py

**ทำอะไร:**
- ตรวจ BOS/CHoCH แบบ 3 ระดับ: Micro / Intermediate / Macro
- Filter entry เฉพาะเมื่อ structure align ≥ 2 ระดับ
- ลด false entry ที่ขัด major trend

**Code เราดึงมาแล้ว:**
```
C:\Users\COMINDY\.gemini\antigravity-ide\knowledge\neurotrader888_github\artifacts\hierarchical_extremes.py
```

**Integration:**
```python
# Micro:        ATR_factor = 0.5  (1-5 bars swing)
# Intermediate: ATR_factor = 1.5  (5-20 bars swing)
# Macro:        ATR_factor = 3.0  (20+ bars swing)

levels = compute_hierarchical_extremes(ohlc, atr_factor=[0.5, 1.5, 3.0])
# Trade SELL เฉพาะเมื่อ Micro + Intermediate = BOS DOWN
```

**สถานะ:** 🟡 NOT STARTED — งาน Phase 4

---

## 🟡 PHASE 5 — Bayesian Optimization ของ Parameters
### งานวิจัย: liupeng88 Lec 11.2 + Lab 6 + Goshawk (EP 2 math formulas)

**ทำอะไร:**
- แทน grid search ด้วย Bayesian Optimization
- Target: หา optimal SL/TP/Lookback/ATR_period ที่ maximize OOS Sharpe
- ใช้ `scikit-optimize` หรือ `optuna`

**Implementation:**
```python
import optuna

def objective(trial):
    sl   = trial.suggest_float("sl_atr_mult", 0.5, 3.0)
    tp   = trial.suggest_float("tp_atr_mult", 0.5, 5.0)
    look = trial.suggest_int("lookback", 10, 100)
    
    # Run backtest on IS data only
    result = backtest(is_data, sl=sl, tp=tp, lookback=look)
    return result["oos_sharpe"]  # Always evaluate on OOS

study = optuna.create_study(direction="maximize")
study.optimize(objective, n_trials=200)
print(study.best_params)
```

**สถานะ:** 🟡 NOT STARTED — งาน Phase 5

---

## 🟡 PHASE 6 — RL Exit Logic Agent
### งานวิจัย: ZiadFrancis/ReinforcementTrading_Part_1 (⭐347)

**ทำอะไร:**
- แทน fixed SL/TP ด้วย PPO agent ที่ตัดสินใจ HOLD/CLOSE
- ใช้ ForexTradingEnv architecture ของ Ziad เป็น base
- Train บน NAS100 H1 data

**Key Architecture (จาก trading_env.py ที่กูอ่านแล้ว):**
```python
# Actions: 0=HOLD | 1=CLOSE | 2+=OPEN(dir, sl, tp)
# SL_OPTS = [5,10,15,25,30,60,90,120]  pips
# TP_OPTS = [5,10,15,25,30,60,90,120]  pips
# Friction: spread=1pip + slippage
# Reward: realized_PnL - time_penalty - open_penalty
# Anti-overfit: random_start=True, 80/20 time split
```

**Adaptation สำหรับ NAS100:**
```python
# Modify pip_value สำหรับ NAS100
# pip_value ≈ 0.01 (point value)
# lot_size = 1.0 (micro lot)
# spread_pips = 2-5 points NAS100
# SL_OPTS = [20, 30, 50, 75, 100, 150, 200]  # points
```

**สถานะ:** 🟡 NOT STARTED — งาน Phase 6 (หลัง MCPT confirm edge ก่อน)

---

## 🟡 PHASE 7 — Genetic Programming (Auto-Evolve Entry Filter)
### งานวิจัย: ZiadFrancis/Genetics_Trading_Part_1 (⭐87)

**ทำอะไร:**
- ใช้ Genetic Programming ค้นหา entry condition ใหม่อัตโนมัติ
- Input: OHLCV + technical indicators
- Output: evolved boolean expression สำหรับ entry

**Concept:**
```python
# Genetic Programming evolves expressions like:
# (RSI < 30) AND (ATR > ATR_ma * 1.2) AND (close < bb_lower)
# → ค้นหา combination ใหม่ที่ backtest ผ่าน IS + OOS
```

**สถานะ:** 🟡 NOT STARTED — งาน Phase 7

---

## 📋 Execution Priority List

### ทำตามลำดับนี้เลย:

```
✅ Done:  Sovereign AI Titan v1.20 (GK/YZ Dynamic SL/TP)
⏳ NEXT:  Phase 1 — 68_mcpt_three_knives_validation.py
⏳ Then:  Phase 2 — Walk-Forward gate (69_walkforward_nas100.py)
⏳ Then:  Phase 3 — Hawkes filter → MQL5 Titan v1.21
⏳ Then:  Phase 4 — Hierarchical BOS/CHoCH → Titan v1.22
⏳ Then:  Phase 5 — Bayesian Opt params (70_bayesian_opt_titan.py)
⏳ Then:  Phase 6 — RL Exit Agent (71_rl_exit_nas100_train.py)
⏳ Then:  Phase 7 — Genetic Entry Filter (72_genetic_entry_filter.py)
```

---

## 📁 Files to Create

| Phase | Script | Output |
|-------|--------|--------|
| 1 | `68_mcpt_three_knives_validation.py` | p-value report |
| 2 | `69_walkforward_nas100.py` | IS vs OOS Sharpe grid |
| 3 | `Sovereign_AI_Titan_v121.mq5` | Hawkes filter in EA |
| 4 | `Sovereign_AI_Titan_v122.mq5` | Hierarchical BOS filter |
| 5 | `70_bayesian_opt_titan.py` | Optimal param set |
| 6 | `71_rl_exit_nas100_train.py` | Trained PPO model |
| 7 | `72_genetic_entry_filter.py` | Evolved entry rules |

---

## 🎯 Success Criteria

| Phase | ต้องผ่าน |
|-------|---------|
| MCPT | p-value < 0.05 |
| Walk-Forward | OOS/IS Sharpe ratio ≥ 0.70 |
| Hawkes | Sharpe ไม่ลด + Max DD ลดลง ≥ 10% |
| Hierarchical | Win rate เพิ่ม ≥ 2% |
| Bayesian Opt | OOS Sharpe เพิ่ม vs grid search |
| RL Exit | OOS profit factor > current fixed TP |
| Genetic | Entry accuracy เพิ่ม ≥ 3% |
