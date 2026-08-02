---
title: "📚 Book-to-Skill — Convert PDFs & Books into Agent Skills"
date: 2026-07-31
tags: [tools, ai-skills, agent, obsidian, automation]
source: https://github.com/virgiliojr94/book-to-skill
---

# 📚 Book-to-Skill

> เครื่องมือเปลี่ยน **หนังสือเทคนิค PDF / เอกสาร / โฟลเดอร์งานวิจัย** ให้กลายเป็น **Agent Skill (SKILL.md)** ที่ AI (Antigravity/Claude/Copilot) เรียกใช้ได้ทันทีโดยไม่ต้องยัดทั้งเล่มใส่ Context

---

## ⚡ ทำไมมันถึงเจ๋ง?

1. **Token Saver (ประหยัด Token 24x – 51x):**
   - ปกติถ้าเอา PDF หนังสือ 500 หน้าใส่ Context จะเปลือง Token มหาศาลและทำ AI อืด/หลอน
   - `book-to-skill` แปลงหนังสือให้เป็นโครงสร้าง Skill: มี `SKILL.md` (สรุปภาพรวม + Decision Rules) และแยกรายละเอียดไว้ใน `chapters/` หรือ `references/`
   - เวลาถาม AI มันจะเจาะอ่านเฉพาะ Chapter หรือ Topic ที่เกี่ยวข้องเท่านั้น!

2. **Zero Hallucination:**
   - AI จะตอบจากเนื้อหาจริงของหนังสือ ไม่เดาสุ่ม

3. **ใช้งานได้กับทุกรูปแบบเอกสาร:**
   - PDF, EPUB, DOCX, Markdown, HTML, TXT, MOBI

---

## 🏗️ โครงสร้างที่มันจะ Generate ออกมา

```
~/.gemini/config/skills/<skill-name>/
├── SKILL.md             ← Core mental models, decision rules, anti-patterns
├── chapters/            ← แยกบท ch01-*.md (อ่านเฉพาะเมื่อโดนเรียก)
├── cheatsheet.md        ← สูตร / ตารางสรุปย่อ
├── glossary.md          ← นิยามคำศัพท์
└── patterns.md          ← รูปแบบการใช้งานที่พบบ่อย
```

---

## 🚀 การประยุกต์ใช้กับ Sovereign Quant System

1. **แปลงหนังสือ Quant / Algorithmic Trading:**
   - เช่น หนังสือ *Systematic Trading* (Rob Carver), *Advances in Financial Machine Learning* (Marcos López de Prado)
   - แปลงเป็น Agent Skill → เวลาเราพัฒนาบอท สามารถสั่ง AI ให้ดึงสูตร/หลักการจากเล่มนั้นมาใช้ได้เลย

2. **แปลง MQL5 / MT5 Documentation:**
   - แปลง API Docs ของ MT5 หรือ Python Trading Libraries เป็น Skill

3. **แปลงบทวิเคราะห์ / Research Papers:**
   - โยน paper งานวิจัยรวมกันทั้งโฟลเดอร์ ให้มันสกัดเป็น Skill เดียวกัน

---

## 💻 วิธีใช้งาน (CLI Command)

```bash
# แปลงหนังสือ PDF เล่มเดียว
/book-to-skill ./systematic_trading.pdf systematic-trading

# แปลงทั้งโฟลเดอร์งานวิจัย
/book-to-skill ~/quant-papers/ quant-research-skills
```
