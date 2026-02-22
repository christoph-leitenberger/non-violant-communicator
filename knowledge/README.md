# NVC Knowledge Base

This directory contains the canonical description of Nonviolent Communication (NVC) that underlies all applications in this suite. It serves two purposes:

1. **AI guidance** — Files are injected into LLM system prompts to shape application behavior.
2. **User reference** — Files are human-readable and accessible as documentation.

All content is based on Marshall B. Rosenberg's work, primarily *Nonviolent Communication: A Language of Life*.

---

## Files

| File | Purpose |
|---|---|
| `nvc-overview.md` | Definition, origin, purpose, and what NVC is not |
| `four-components.md` | The four components in detail: Observation, Feeling, Need, Request |
| `principles.md` | Core principles, life-alienating patterns, and common pitfalls |
| `examples.md` | Worked examples: raw message → NVC analysis → reframe |
| `catalogs/feelings.yaml` | Structured feelings list, split into fundamental vs. masking feelings |
| `catalogs/needs.yaml` | Structured universal needs list, organized by category |

---

## Key Distinction: Fundamental vs. Masking Feelings

`feelings.yaml` separates feelings into two types:

- **Fundamental feelings** directly signal whether a need is met or unmet (e.g., sad, scared, joyful, calm). These are the target of NVC expression.
- **Masking feelings** contain a hidden judgment and point *toward* a fundamental feeling beneath them (e.g., angry, resentful, guilty). Anger is the central example — Rosenberg held that anger always has a judgment at its root, and the practice is to find the unmet need and vulnerable feeling underneath.

---

## Key Distinction: Needs vs. Strategies

A need is universal and not attached to a specific person or action. "I need you to call me" is a *strategy*. "I need connection and reassurance" is a *need*. This distinction is essential — expressing needs (rather than strategies) opens space for many possible solutions.
