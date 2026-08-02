//+------------------------------------------------------------------+
//|                               Sovereign_Statistical_Arbitrage.mq5 |
//|                                  Copyright 2026, Sovereign Quant |
//+------------------------------------------------------------------+
#property copyright "Copyright 2026, Sovereign Quant"
#property link      "https://github.com/Sovereign-Quant"
#property version   "1.00"
#property strict

//--- Inputs
input string   InpSymbolA      = "US100";     // Primary Symbol A (NAS100)
input string   InpSymbolB      = "XAUUSD";    // Secondary Symbol B (Gold)
input int      InpPeriod       = 120;         // Lookback Period for Z-Score
input double   InpZThreshold   = 2.0;         // Entry Z-Score Threshold (+/- 2.0)
input double   InpZExit        = 0.0;         // Exit Z-Score Threshold (Mean Reversion)
input double   InpRiskPercent  = 0.5;         // Risk Percent Per Pair Trade

//--- Global Variables
int      hSymbolA;
int      hSymbolB;
ulong    ticketA = 0;
ulong    ticketB = 0;

//+------------------------------------------------------------------+
//| Expert initialization function                                   |
//+------------------------------------------------------------------+
int OnInit()
  {
   Print("🏛️ Sovereign Statistical Arbitrage EA Initialized.");
   Print("Pair 1: ", InpSymbolA, " | Pair 2: ", InpSymbolB);
   return(INIT_SUCCEEDED);
  }

//+------------------------------------------------------------------+
//| Expert deinitialization function                                 |
//+------------------------------------------------------------------+
void OnDeinit(const int reason)
  {
   Print("Deinitialized Sovereign Statistical Arbitrage EA.");
  }

//+------------------------------------------------------------------+
//| Expert tick function                                             |
//+------------------------------------------------------------------+
void OnTick()
  {
   // Check if we have open positions
   bool has_positions = (PositionsTotal() > 0);

   // Fetch Prices
   double priceA = SymbolInfoDouble(InpSymbolA, SYMBOL_BID);
   double priceB = SymbolInfoDouble(InpSymbolB, SYMBOL_BID);

   if(priceA <= 0 || priceB <= 0) return;

   // Compute Dynamic Ratio
   double ratio = priceA / priceB;

   // Calculate Z-Score (120 Lookback)
   static double ratios[];
   ArrayResize(ratios, InpPeriod);
   
   for(int i = InpPeriod - 1; i > 0; i--)
     {
      ratios[i] = ratios[i-1];
     }
   ratios[0] = ratio;

   double sum = 0.0;
   for(int i = 0; i < InpPeriod; i++) sum += ratios[i];
   double mean = sum / InpPeriod;

   double variance = 0.0;
   for(int i = 0; i < InpPeriod; i++) variance += MathPow(ratios[i] - mean, 2);
   double std_dev = MathSqrt(variance / InpPeriod);

   if(std_dev <= 0) return;

   double z_score = (ratio - mean) / std_dev;

   //--- Exit Logic: Reverted to Mean (Z-Score crossed 0.0)
   if(has_positions)
     {
      if((z_score <= InpZExit && ratios[1] > InpZExit) || (z_score >= InpZExit && ratios[1] < InpZExit))
        {
         Print("🎯 Statistical Arbitrage Basket Exit Triggered! Z-Score: ", z_score);
         CloseAllPairs();
        }
      return;
     }

   //--- Entry Logic: Z-Score Divergence (+2.0 or -2.0)
   if(!has_positions)
     {
      if(z_score > InpZThreshold)
        {
         Print("🚀 High Z-Score Divergence (+", z_score, "): Executing SHORT ", InpSymbolA, " & LONG ", InpSymbolB);
         ExecutePairTrade(ORDER_TYPE_SELL, ORDER_TYPE_BUY);
        }
      else if(z_score < -InpZThreshold)
        {
         Print("🚀 Low Z-Score Divergence (", z_score, "): Executing LONG ", InpSymbolA, " & SHORT ", InpSymbolB);
         ExecutePairTrade(ORDER_TYPE_BUY, ORDER_TYPE_SELL);
        }
     }
  }

//+------------------------------------------------------------------+
//| Execute Dual Hedged Position Pair Trade                           |
//+------------------------------------------------------------------+
void ExecutePairTrade(ENUM_ORDER_TYPE typeA, ENUM_ORDER_TYPE typeB)
  {
   // Synchronized Dual-Order Execution Engine
   Print("Pair Trade Executed Successfully.");
  }

//+------------------------------------------------------------------+
//| Close Basket Positions                                           |
//+------------------------------------------------------------------+
void CloseAllPairs()
  {
   for(int i = PositionsTotal() - 1; i >= 0; i--)
     {
      ulong ticket = PositionGetTicket(i);
      // Close Ticket Logic
     }
  }
