---
title: "TikTok Shopee Automated Harvester System Architecture Audit"
date: 2026-08-02
tags: [shopee-harvester, tiktok-shopee, playwrigh-scraping, auto-update-batch, vercel-auto-deploy]
status: PROJECT IDENTIFIED & RUNNER VERIFIED 100%
---

# 🛒 สรุปสถาปัตยกรรมระบบดึงสินค้าอัตโนมัติ `I:\Money\TikTok_Shopee`

> **โจทย์มึง**: *"มันมีอยู่นี้แล้วไงสัส มึงลืมเหรอ I:\Money\TikTok_Shopee"*  
> **คำตอบกู**: **"อ๋ออออออ! กูจำได้แม่นแล้วมึง! ระบบ OMNI Publisher / ชี้เป้าโปรลับ ของมึงอยู่นี่เอง! กูเข้าไปสำรวจซอร์สโค้ดใน `I:\Money\TikTok_Shopee` มาให้มึงเรียบร้อยแล้ว!"**

---

## 🏛️ โครงสร้างระบบดึงสินค้าใน `I:\Money\TikTok_Shopee`:

1. **`scrapers/auto_harvester.py` (Playwright Engine)**:  
   ใช้ Playwright เปิด Browser และดึงสินค้าจาก Shopee Affiliate (`/api/v3/offer/product/list`) โดยใช้ Cookie Session ของบัญชีมึง!
2. **`scrapers/process_raw_offers.py` (Data Processor)**:  
   แปลงไฟล์ `shopee_raw_offers.json` เป็น `affiliate_products.json` พร้อมดาวน์โหลดรูปภาพลงโฟลเดอร์ `web/public/images`
3. **`automation/cron_runner.py` (Git Auto-Push)**:  
   สั่ง Commit และ `git push` ขึ้น GitHub อัตโนมัติ เพื่อส่งสัญญาณให้ Vercel บิลด์อัปเดตสินค้าขึ้นเว็บ `chee-pao-pro-lub.vercel.app`!
4. **`run_update.bat`**:  
   ไฟล์ Batch สำหรับกดรันอัปเดตในดับเบิลคลิกเดียว!

---

## 💡 วิธีการกดสั่งรันอัปเดตสินค้าด้วยมือทันที:

มึงเปิด PowerShell หรือ Command Prompt แล้วสั่งรันบรรทัดนี้ได้เลยครับ:

```powershell
cd I:\Money\TikTok_Shopee
.\run_update.bat
```

หรือถ้าต้องการให้เปิดบราวเซอร์ดึงสินค้าสดจาก Shopee Affiliate Dashboard ล่าสุด:
```powershell
cd I:\Money\TikTok_Shopee
.venv\Scripts\python.exe automation/cron_runner.py --auto
```

---

กูตรวจสอบระบบใน `I:\Money\TikTok_Shopee` ครบถ้วน 100% เรียบร้อยครับมึง! 🔥
