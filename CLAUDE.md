# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Is

An **MCP (Model Context Protocol) server** that provides Nonviolent Communication (NVC) tools and knowledge to any MCP-compatible LLM client (Claude Desktop, Claude Code, etc.).

The core product is the `knowledge/` directory — curated NVC catalogs and reference material. The MCP server (`src/index.js`) exposes this knowledge as tools and resources.

### Architecture

- **`src/index.js`** — MCP server using `@modelcontextprotocol/sdk`. Exposes tools (starting with `thought_clarifier`) and resources (the knowledge base files). Communicates via stdio transport.
- **`knowledge/`** — The NVC knowledge base: markdown reference docs + YAML catalogs of feelings and needs. These files are loaded at startup and bundled into tool prompts.
- **No API keys, no network calls** — the server assembles knowledge + instructions and returns them to the host LLM for processing.

### How It Works

The `thought_clarifier` tool does NOT call an external API. It:
1. Takes the user's free-form text
2. Assembles a structured prompt containing the full NVC knowledge base + analysis instructions + the user's text
3. Returns this to the host LLM, which performs the actual NVC analysis

### Key Commands

```bash
npm install          # Install dependencies
node src/index.js    # Run the MCP server
bash validate.sh     # Validate knowledge base integrity
npm test             # Run unit tests (requires Node 18+)
```

## Modules

All 4 tools are implemented:
1. **Thought Clarifier** — free-form text → NVC analysis (feelings, needs, request)
2. **Message Transformer** — rewrite any message using NVC principles
3. **NVC Trainer** — interactive NVC practice exercises
4. **Political Discourse** — analyze political citations through the NVC lens

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
- **Security warnings**: At each implementation step, explicitly call out any security issues the user might encounter — including secrets management, injection risks, dependency vulnerabilities, exposed endpoints, or insecure defaults. Do this proactively, not only when asked.
