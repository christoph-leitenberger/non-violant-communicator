# Roadmap

Planned MCP tools beyond the current `thought_clarifier`.

## Module 2: Message Transformer ✅

**Tool**: `transform_message` — **Implemented**

**Input**: `{ text: string }` — any message (email, chat, feedback, etc.)

**Behavior**: Rewrites the message using NVC principles. Offers two modes: one-shot (direct rewrite with "What changed" summary) or guided (step-by-step clarification through observation → feelings → needs → request). Strips evaluations, translates faux feelings, identifies underlying needs, and reformulates the message using the four-component structure.

**Use case**: "Rewrite this angry email to my colleague using NVC."

---

## Module 3: NVC Trainer

**Tool**: `nvc_trainer`

**Input**: `{ topic: string }` — an NVC topic to practice (e.g., "observations", "feelings vs faux feelings", "needs vs strategies", "requests vs demands")

**Behavior**: Generates interactive exercises on the chosen NVC building block. Presents scenarios and asks the user to distinguish correct NVC formulations from common mistakes. Provides feedback grounded in the knowledge base.

**Use case**: "Give me a practice exercise on distinguishing feelings from faux feelings."

---

## Module 4: Political Talk Show

**Tool**: `political_debate`

**Input**: `{ party_programs: string[] }` — summaries or excerpts from political party programs

**Behavior**: Simulates a structured debate between the parties where each side presents its positions using NVC. Transforms adversarial talking points into empathic dialogue that surfaces the underlying needs and values of each position.

**Use case**: "Simulate a debate between these three party platforms, conducted in NVC."
