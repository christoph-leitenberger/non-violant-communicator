# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Vision

This is a suite of applications centered on **Nonviolent Communication (NVC)**. Planned modules:

1. **Thought Clarifier** — The user writes freely. The app helps surface the feelings and needs underneath, and optionally formulates a clear request to another person.
2. **Message Transformer** — Input any message; the app rewrites it using NVC principles.
3. **NVC Trainer** — Interactive training on the building blocks of NVC (observations, feelings, needs, requests).
4. **Political Talk Show** — Enter the programs of political parties; the app simulates debate between them conducted in NVC.

---

## Working Style

- **Always use plan mode** before implementing any non-trivial task. Explore the codebase, design an approach, and get user approval before writing code.
- **Always ask for clarification** when anything is unclear. Do not make assumptions about ambiguous requirements.
- **Before starting any task**, ask the user for:
  - **Goal**: What is the desired outcome?
  - **Constraints**: Any limitations (tech stack, performance, compatibility, scope)?
  - **Format**: Expected output format (file, function, API, UI, etc.)?
  - **Failure conditions**: What would make this implementation wrong or unacceptable?
- **Always present three possible solutions** before implementing, ranked by probability of being the right fit, with a brief rationale for each. Then ask the user which to proceed with.
