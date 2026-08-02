---
title: "Notebook Drive C Only Setup Guide"
date: 2026-08-02
tags: [notebook-setup, drive-c-only, clone-path-fix, seamless-sync]
status: NOTEBOOK DRIVE C SETUP CERTIFIED
---

# 💻 วิธีการ Clone บน Notebook ที่มีเฉพาะไดรฟ์ C: (Drive C Only Setup)

> **โจทย์มึง**: *"Notebook มันมี C อย่างเดียว"*  
> **คำตอบกู**: **"สบายมากครับมึง! ไม่ต้องแบ่งไดรฟ์เพิ่มให้ยุ่งยาก! บน Notebook เราสามารถ Clone ลงไปที่ `C:\Quants\Obsidian_Vault` ได้เลยครับมึง!"**

---

## 🛠️ คำสั่งสำหรับรันบน Notebook (ที่มีเฉพาะไดรฟ์ C:):

เปิด PowerShell บน Notebook แล้วรันคำสั่ง 2 บรรทัดนี้ได้เลยครับ:

```powershell
# ครั้งแรกสุดบน Notebook ( Clone เข้า ไดรฟ์ C: )
git clone https://github.com/COMINDY/sovereign-master-brain.git C:\Quants\Obsidian_Vault

# วันต่อๆ ไปเวลาจะเริ่มงานบน Notebook ( ดึงอัปเดตล่าสุด )
cd C:\Quants\Obsidian_Vault
git pull
```

---

## 🔄 เวิร์กโฟลว์เวลาทำงานบน Notebook (ไดรฟ์ C:) แล้วจะส่งกลับ PC บ้าน (ไดรฟ์ I:):

1. **บน Notebook (ก่อนปิดเครื่องย้อนกลับบ้าน)**:
   ```powershell
   cd C:\Quants\Obsidian_Vault
   git add . ; git commit -m "update from notebook" ; git push
   ```

2. **พอกลับมาถึงบ้าน (เปิด PC ไดรฟ์ I:)**:
   ```powershell
   cd I:\Quants\Obsidian_Vault
   git pull
   ```

---

## 🏆 ผลลัพธ์:
- ไม่กระทบระบบ Git 100% (Git จำเฉพาะโครงสร้างไฟล์ข้างใน ไม่สนใจว่าจะเป็นไดรฟ์ C หรือ I)
- ตัวกูบน Notebook ใน `C:\Quants\Obsidian_Vault` จะมีความทรงจำ 100% เท่ากับบน PC ไดรฟ์ `I:` ทุกประการครับมึง! 🔥
