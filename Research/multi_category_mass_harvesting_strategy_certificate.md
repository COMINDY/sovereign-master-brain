---
title: "Multi-Category Mass Harvesting Strategy Certificate"
date: 2026-08-02
tags: [mass-harvesting, all-categories-combined, 200-plus-items, shopee-affiliate]
status: MASS HARVESTING IN PROGRESS Across 9 ENDPOINTS
---

# 🎯 ปรับยุทธศาสตร์กวาดสินค้าทะลุทะลวง 200+ รายการ รวมมิตรทุกหมวดหมู่บนหน้าแรก!

> **โจทย์มึง**:
> *"กูละปวดหัวกับมึงมากเลยสัส กูให้มึงดึงสินค้าแต่ละหมวดที่มันขายดีแต่ละหมวดเลย หมวดละ 20-50 รายการที่มียอดขายสูงสุดของแต่ละหมวด แสดงว่า หน้าแรกที่เป็นทั้งหมดมันจะต้องมีมากกว่า 50รายการใช่มั๊ยสัส"*

---

## 💡 กูเข้าใจแจ้งแทงทะลุ 100% แล้วครับมึง!

ถูกต้องที่สุดครับมึง! 
ถ้าดึง **หมวดละ 20-50 รายการ** จากทั้งหมด **6 หมวดหมู่หลัก**:
- **หน้าแท็บ "ทั้งหมด" (All Categories)**: จะรวมสินค้าตัวท็อปทั้งหมด **200 - 300+ รายการ** อัดแน่นถล่มทลาย!
- **หน้าแท็บหมวดหมู่ย่อยแต่ละหมวด**: จะคัดเฉพาะตัวท็อปยอดขายสูงสุด 20 - 50 รายการของหมวดนั้นๆ!

---

## 🛠️ การขยายท่อ API ดึงสินค้า (Deep Multi-Category Harvesting):

กูเพิ่มพารามิเตอร์ยิง API ตรงเข้า Shopee Affiliate 9 เส้นทางรวด:
1. `/api/v3/offer/product/list?list_type=3` (**สินค้าขายดี / Top Performing**)
2. `/api/v3/offer/product/list?list_type=0&sort_type=1` (**สินค้าทั้งหมดเรียงยอดฮิต**)
3. `/api/v3/offer/product/list?list_type=0&sort_type=2` (**สินค้าเรียงตามยอดคอมมิชชั่น**)
4. `/api/v3/offer/product/list?cate_id=100636` (**เครื่องใช้ในบ้าน 50 อันดับ**)
5. `/api/v3/offer/product/list?cate_id=100013` (**คอมพิวเตอร์และแล็ปท็อป 50 อันดับ**)
6. `/api/v3/offer/product/list?cate_id=100014` (**มือถือ และ แท็บเล็ต 50 อันดับ**)
7. `/api/v3/offer/product/list?cate_id=100631` (**กลุ่มผลิตภัณฑ์เพื่อสุขภาพ 50 อันดับ**)
8. `/api/v3/offer/product/list?cate_id=100630` (**ความงามและของใช้ส่วนตัว 50 อันดับ**)
9. `/api/v3/offer/brand/list` (**แบรนด์ยอดฮิต Bonus Commissions**)

---

## 🟢 สถานะขณะนี้:
Playwright กำลังดูดสินค้าทะลัก 200+ รายการเข้าดิสก์เรียงลงฐานข้อมูล `data/affiliate_products.json` และจะสั่ง `git push` ดันขึ้น Vercel ทันทีครับมึง! 🔥
