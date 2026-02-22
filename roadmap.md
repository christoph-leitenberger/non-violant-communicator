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

## Module 4: Political Discourse ✅

**Tool**: `political_discourse` — **Implemented**

**Input**: `{ citations: Array<{ source: string, text: string }> (1–10), topic?: string }` — one or more political citations with source attribution, and optional topic context.

**Behavior**: Analyzes real political citations through the NVC lens in three phases. Phase 1 displays citations verbatim. Phase 2 identifies life-alienating communication patterns (moralistic judgments, evaluations as facts, generalizations, accusations of motive, faux feelings, demands, denial of responsibility, dehumanizing language, us-vs-them framing, comparisons), surfaces hidden observations, unexpressed feelings, and underlying needs. Phase 3 (on user request only) transforms citations into four-component NVC statements preserving the original political intent. Multi-citation input includes a cross-citation comparison.

**Use case**: "Analyze this quote from [politician]: '[quote]' — what NVC patterns do you see?"
