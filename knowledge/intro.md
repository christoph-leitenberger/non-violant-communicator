# Getting Started with the NVC Server

## What is NVC?

Nonviolent Communication (NVC) is a framework developed by Marshall Rosenberg that helps people connect with what's alive in themselves and others. Instead of labeling, blaming, or demanding, NVC invites you to observe what happened, name what you feel, identify what you need, and make a clear request. It sounds simple — and it is — but it has a sneaky way of transforming conversations you thought were hopeless.

## Available Tools

### `thought_clarifier`

Your internal translator. Dump any messy thought, frustrating situation, or unsent message into it, and it will surface the observations, feelings, needs, and possible requests hiding underneath — all grounded in curated NVC catalogs.

**Try it:** Just share what's on your mind. A journal entry, a rant about your coworker, a draft email you're not sure about — anything goes.

**Example prompt:** "I'm so annoyed that my teammate keeps interrupting me in meetings. It's like my ideas don't matter."

### `transform_message`

Your message rewriter. Paste any message — an email draft, a chat reply, difficult feedback — and get back a version that uses NVC principles while preserving what you actually want to say.

You choose the mode:
- **One-shot** — instant rewrite with a "What changed" summary
- **Guided** — step-by-step clarification through observation, feelings, needs, and request

**Try it:** Share a message you want to improve — a tense email, a complaint, feedback for a colleague — and pick your preferred mode.

**Example prompt:** "Can you help me rewrite this: 'You never listen to my suggestions in our planning meetings. I'm done trying to contribute.'"

### `submit_feedback`

Found a bug? Have an idea? Just want to say thanks? Use this tool to send feedback. It's stored locally in `feedback.json` — no data leaves your machine.

## Browsable Resources

The server exposes its full NVC knowledge base as browsable resources. You can read any of these directly:

| Resource | URI | What's inside |
|----------|-----|---------------|
| Intro (this file) | `nvc://intro` | Getting started guide |
| Feelings Catalog | `nvc://catalogs/feelings` | ~120 feelings organized by met/unmet needs, plus masking feelings |
| Needs Catalog | `nvc://catalogs/needs` | Universal human needs in 9 categories |
| NVC Overview | `nvc://knowledge/overview` | What NVC is and why it matters |
| Four Components | `nvc://knowledge/four-components` | Observation, Feeling, Need, Request — explained |
| Principles | `nvc://knowledge/principles` | Core NVC principles and common pitfalls |
| Worked Examples | `nvc://knowledge/examples` | Real-world NVC analyses to learn from |

## Tips

- **Be honest, not polished.** The thought clarifier works best with raw, unfiltered text. Don't try to "NVC-ify" your input — that's its job.
- **Feelings are not thoughts.** "I feel ignored" is actually a judgment about someone else's behavior. The tool will help you find the real feeling underneath (maybe hurt, or loneliness).
- **Needs are universal.** Everyone shares the same fundamental needs — connection, autonomy, meaning, safety, etc. NVC helps you see that conflicts are usually about strategies, not needs.
- **Requests, not demands.** A genuine request means you're okay hearing "no." If you're not, it's a demand — and the tool will gently point that out.
