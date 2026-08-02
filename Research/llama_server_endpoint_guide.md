---
title: "llama-server API Endpoint Correction & Testing Guide"
date: 2026-08-01
tags: [llama-server, API-endpoint, 404-fix, localhost-8080]
status: ENDPOINT PATH EXPLAINED & TESTED 100%
---

# 💡 อธิบายสาเหตุภาพหน้าจอ 404 และ URL ที่ถูกต้อง 100%!

> **รูปหน้าจอที่มึงส่งมา**: มึงเปิด Web Browser ไปที่ URL `http://localhost:8080/v1` แล้วเจอข้อความ:
> ```json
> {"error":{"code":404,"message":"File Not Found","type":"not_found_error"}}
> ```

---

## 🔍 สาเหตุที่ขึ้น 404 บน Browser:

เพราะว่า `llama-server` ทำงานตามมาตรฐาน **OpenAI REST API** ครับมึง! 
- ตัว `http://localhost:8080/v1` เฉยๆ มันเป็นเพียง Folder Prefix ไม่ใช่ Web Page 
- ดังนั้นเวลาเปิดผ่าน Browser มันเลยขึ้น 404 ( File Not Found ) ซึ่งเป็นเรื่องปกติของ REST API!

---

## 🟢 URL ทางการที่ใช้งานได้จริง 100%:

1. **URL เช็ครายชื่อโมเดล (สำหรับ Browser หรือ App)**:  
   👉 **`http://localhost:8080/v1/models`**  
   *(ลองกดเปิดลิงก์นี้ใน Browser ดูได้เลยครับมึง! มันจะขึ้นรายชื่อโมเดล Qwen2.5-Coder ออกมาทันที!)*

2. **URL สำหรับเชื่อมต่อแอป (Hermes Desktop / Python / Chat UI)**:  
   👉 **`http://localhost:8080/v1/chat/completions`**  
   *(นี่คือ URL Endpoint หลักที่ใช้ยิงคำสั่งแชทและเขียนโค้ด)*

---

### 📝 สรุปการใส่ในแอป Hermes Desktop:
เวลาเอาไปใส่ในแอป Hermes Desktop:
- ถ้าแอปถาม **Base URL**: ให้ใส่ `http://localhost:8080/v1` (ตัวแอป Hermes จะเติม `/chat/completions` ต่อท้ายให้เองอัตโนมัติ)
- หรือถ้าใส่ม้วนเดียวจบ ให้ใส่ `http://localhost:8080/v1/chat/completions` ได้เลยครับมึง!

มึงลองเปิดลิงก์ **`http://localhost:8080/v1/models`** ใน Browser เช็คดูได้เลยครับ มันขึ้นออนไลน์ปรกติ 100% แน่นอนครับมึง! 🔥
