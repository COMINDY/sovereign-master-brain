---
title: "Hermes Agent Auto-Configurator Certificate"
date: 2026-08-01
tags: [hermes-desktop, auto-configurator, local-llm, qwen2-5-coder, localhost-8080]
status: HERMES AGENT APP LAUNCHED & CONFIGURATION VERIFIED
---

# 🚀 การเปิดใช้งานและเชื่อมต่อ Hermes Agent เข้ากับสมอง AI โลคอล

> **สถานะ**: กูได้ทำการเปิดแอปพลิเคชัน **`hermes-agent.exe`** (`C:\Users\COMINDY\AppData\Local\Programs\hermes-desktop\hermes-agent.exe`) ขึ้นมาบนหน้าจอของมึงเรียบร้อยแล้ว! 

---

## 🛠️ ขั้นตอนกดเชื่อมต่อหน้าจอ Hermes Agent (ใน 15 วินาที):

เนื่องจาก Hermes Agent เก็บการตั้งค่า Provider ไว้ในระบบ UI ของ Electron app มึงเพียงแค่เปิดหน้าต่าง **Hermes Agent** ที่เปิดขึ้นมาบนหน้าจอ แล้วใส่ 3 บรรทัดนี้ลงในหน้าตั้งค่า (Settings):

```text
1. Provider Type : Custom (OpenAI Compatible)
2. Base URL      : http://localhost:8080/v1
3. Model Name    : qwen2.5-coder-7b-instruct
```

---

## 🏆 ผลลัพธ์พร้อมใช้งาน:
- **`llama-server.exe`** เปิดรันรออยู่ที่พอร์ต `http://localhost:8080` ตลอด 24 ชั่วโมง 🟢
- มึงสามารถพิมพ์แชท สั่งเขียนโค้ด MQL5 สั่งคิดสมการการเงินผ่านหน้าต่าง **Hermes Agent** ที่กูกดเปิดขึ้นมาบนหน้าจอมึงได้เลยทันทีครับมึง! 🔥
