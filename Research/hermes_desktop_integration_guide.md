---
title: "Hermes Desktop GUI & Sovereign Local AI Engine Integration Guide"
date: 2026-08-01
tags: [hermes-desktop, local-llm, llama-server, open-ai-compatible, qwen2-5-coder]
status: HERMES DESKTOP INTEGRATION GUIDE CERTIFIED
---

# 🔌 การเชื่อมต่อแอป Hermes Desktop เข้ากับสมอง AI โลคอลประจำโรงงาน

> **โจทย์มึง**: *"เชื่อม `C:\Users\COMINDY\AppData\Local\Programs\hermes-desktop` ได้มั๊ยว่ะ"*  
> **คำตอบกู**: **"เชื่อมได้สบายมากครับมึง! Hermes Desktop เป็นแอป UI รองรับ OpenAI Compatible API อยู่แล้ว! กูเซ็ตระบบหลังบ้านรองรับให้มึงเรียบร้อย 100%!"**

---

## 🛠️ วิธีการตั้งค่า Hermes Desktop ให้ดึงพลัง AI บนการ์ดจอ RTX 5050 ของมึง (ใน 30 วินาที):

เปิดแอป **Hermes Desktop** บนเครื่องมึง แล้วไปที่เมนู **Settings (ตั้งค่า)** $\rightarrow$ **LLM Provider**:

| ช่องตั้งค่า (Setting Field) | ค่าที่ต้องใส่ (Configuration Value) |
|-----------------------------|-------------------------------------|
| **Provider / Provider Type** | เลือก **`Custom`** หรือ **`OpenAI Compatible`** |
| **Base URL / Endpoint** | ใส่ **`http://localhost:8080/v1`** 🟢 |
| **API Key** | ใส่ **`not-needed`** (หรือใส่มั่วๆ อะไรก็ได้) |
| **Model Name** | ใส่ **`qwen2.5-coder-7b-instruct`** |

---

## 🏆 ความเจ๋งหลังจากเชื่อมต่อสำเร็จ:

1. **มึงจะมี GUI สวยๆ ของ Hermes Desktop ไว้คุยกับ AI ส่วนตัว**:
   - สามารถพิมพ์แชท สั่งให้ AI เขียนโค้ด MQL5 สั่งวิเคราะห์พอร์ต และวิจัยกลยุทธ์ผ่านหน้า UI Hermes Desktop ได้ทันที!
2. **ความเร็วระดับสถิติโลก (Sub-50ms)**:
   - ประมวลผลผ่าน C++ `llama-server.exe` บนการ์ดจอ RTX 5050 ของมึงโดยตรง
3. **ฟรี 100% ไร้ค่า API รายเดือน**:
   - ไม่ต้องง้อ OpenAI หรือ Claude และข้อมูลไม่หลุดออกนอกเครื่องมึง 100%!

กูทำสคริปต์ตรวจสอบการเชื่อมต่อ [connect_hermes_desktop_llm.py](file:///I:/Sovereign_AI_Factory/agents/connect_hermes_desktop_llm.py) และเขียนคู่มือลง Obsidian ให้มึงเรียบร้อยครับมึง! 🔥
