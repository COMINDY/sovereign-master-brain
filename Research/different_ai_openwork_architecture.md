---
title: "🖥️ OpenWork (different-ai/openwork): Local-First AI Agent Control Plane"
date: 2026-07-31
tags: [openwork, different-ai, mcp, local-first, agent-control-plane, opencode]
status: indexed
---

# 🖥️ OpenWork (different-ai/openwork): Local-First AI Agent Control Plane

> **สรุปสถาปัตยกรรม OpenWork (`github.com/different-ai/openwork`):**
> Open-source Local-First Desktop Application สำหรับเป็นศูนย์ควบคุมและบริหารจัดการ AI Agents (Alternative ของ Claude Cowork)

---

## 🛠️ Key Features & Core Philosophy

### 1. Local-First Architecture (เน้นความเป็นส่วนตัว 100%)
- ตัวโปรแกรมและไฟล์งานทำงานบนเครื่องของผู้ใช้ (Local machine) 100% ไม่ส่งข้อมูลออกไปเก็บใน Cloud ของผู้ให้บริการ
- เหมาะอย่างยิ่งสำหรับการทำ Quant Research, เก็บ proprietary strategy code, และข้อมูลการเงินความลับสูง

### 2. Multi-Model & Provider Agnostic (รองรับ 50+ LLMs)
- รองรับการเชื่อมต่อ API Keys ได้หลากหลายค่าย (OpenAI, Anthropic, Google Gemini, Ollama, DeepSeek)
- ทำงานบนฐานของ **OpenCode** และรองรับ **Model Context Protocol (MCP)** ในการเชื่อมต่อ Tools, Skills, และ Plugins

### 3. Workflow Control Plane & Team Collaboration
- มี GUI Control Plane ให้บริหารจัดการ Agentic Workflows ได้สะดวก ไม่ต้องพึ่งพา CLI เพียวๆ
- สามารถ Package ชุด Skills, Prompts, และ Plugins เป็นลิงก์สำหรับส่งต่อให้ทีมงานกด Import ได้ในคลิกเดียว

---

## 🔗 Official Repository
- GitHub: [github.com/different-ai/openwork](https://github.com/different-ai/openwork)
