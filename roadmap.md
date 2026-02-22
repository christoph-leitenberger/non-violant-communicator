# Roadmap

Planned MCP tools beyond the current `thought_clarifier`.

## Module 2: Message Transformer ✅

**Tool**: `transform_message` — **Implemented**

**Input**: `{ text: string }` — any message (email, chat, feedback, etc.)

**Behavior**: Rewrites the message using NVC principles. Offers two modes: one-shot (direct rewrite with "What changed" summary) or guided (step-by-step clarification through observation → feelings → needs → request). Strips evaluations, translates faux feelings, identifies underlying needs, and reformulates the message using the four-component structure.

**Use case**: "Rewrite this angry email to my colleague using NVC."

---

## Module 3: NVC Trainer ✅

**Tool**: `nvc_trainer` — **Implemented**

**Input**: `{ topic: "observations" | "feelings" | "needs" | "requests", difficulty?: "beginner" | "intermediate" | "advanced" }` — an NVC building block to practice and optional difficulty level (default: beginner).

**Behavior**: Generates interactive exercises on the chosen NVC building block. Format varies by difficulty: beginner uses multiple-choice identification, intermediate adds nuanced distractors and short open-ended prompts, advanced uses complex real-world open-ended reformulation. Provides detailed feedback grounded in the knowledge base, referencing NVC concepts by name.

**Use case**: "Give me a practice exercise on distinguishing feelings from faux feelings."

---

## Module 4: Political Talk Show

**Tool**: `political_debate`

**Input**: `{ party_programs: string[] }` — summaries or excerpts from political party programs

**Behavior**: Simulates a structured debate between the parties where each side presents its positions using NVC. Transforms adversarial talking points into empathic dialogue that surfaces the underlying needs and values of each position.

**Use case**: "Simulate a debate between these three party platforms, conducted in NVC."
