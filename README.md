# NVC MCP Server

An MCP (Model Context Protocol) server that gives any compatible LLM client — Claude Desktop, ChatGPT, Cursor, VS Code, and many more — access to Nonviolent Communication tools and knowledge.

No API keys. No external calls. The server bundles a curated NVC knowledge base and returns structured prompts that guide the host LLM through NVC analysis.

## Try It

It's on npm and works with any MCP client:

```bash
npx non-violent-communicator
```

Tell the LLM what's bugging you, paste a difficult email, or practice NVC building blocks — five tools are ready to go. Found something to improve? Use the built-in `submit_feedback` tool.

## Quick Start

### Claude Desktop

Add to your `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "nvc": {
      "command": "npx",
      "args": ["non-violent-communicator"]
    }
  }
}
```

Restart Claude Desktop. You now have NVC tools in your conversations.

### Claude Code

Add to your `.claude/settings.json` or project settings:

```json
{
  "mcpServers": {
    "nvc": {
      "command": "npx",
      "args": ["non-violent-communicator"]
    }
  }
}
```

### Run locally (development)

```bash
git clone <repo-url>
cd non-violent-communicator
npm install
node src/index.js
```

## No MCP Client? Use the Prompt

If you don't have an MCP client, you can paste a ready-made prompt into any LLM and get the full NVC assistant experience — zero installs.

**[Copy the NVC prompt](PROMPT.md)** — works with ChatGPT, Gemini, Copilot, or any other LLM chat.

## Compatible Clients

MCP is an open standard. This server works with any client that speaks the protocol:

| Client | Notes |
|---|---|
| Claude Desktop | Native MCP support via `claude_desktop_config.json` |
| Claude Code | Native MCP support via `.claude/settings.json` |
| Cursor | Native MCP support via settings |
| Windsurf | Native MCP support via settings |
| VS Code + Continue | MCP support through the Continue extension |
| Cline | Native MCP support via settings |
| Roo Code | Native MCP support via settings |

## What You Get

### Tools

| Tool | Description |
|---|---|
| `thought_clarifier` | Analyze free-form text through the NVC lens. Surfaces feelings, needs, and an optional request. |
| `transform_message` | Rewrite any message (email, chat, feedback) using NVC principles. One-shot or guided mode. |
| `nvc_trainer` | Interactive NVC practice exercises. Pick a topic and difficulty level. |
| `political_discourse` | Analyze political citations through the NVC lens — identify life-alienating patterns and surface human needs behind rhetoric. |
| `submit_feedback` | Share suggestions, report issues, or tell us what you liked. Stored locally. |

### Resources

The NVC knowledge base is also available as browsable resources:

| Resource | URI |
|---|---|
| Getting started guide | `nvc://intro` |
| Feelings catalog | `nvc://catalogs/feelings` |
| Needs catalog | `nvc://catalogs/needs` |
| NVC principles | `nvc://knowledge/principles` |
| Four components | `nvc://knowledge/four-components` |
| Worked examples | `nvc://knowledge/examples` |
| NVC overview | `nvc://knowledge/overview` |

## What is NVC?

Nonviolent Communication is a framework developed by Marshall B. Rosenberg that structures communication around four components: **Observation**, **Feeling**, **Need**, and **Request**. It helps move from judgment and blame toward empathic connection and clarity.

See the `knowledge/` directory for the full reference.

## Contributing

The core product is the `knowledge/` directory — curated YAML catalogs and markdown files. To contribute:

1. Edit the YAML catalogs or markdown files
2. Run `bash validate.sh` to check integrity
3. Submit a PR

See `knowledge/README.md` for the knowledge base structure.

## Security

- **No API keys required** — the MCP server has no secrets
- **No network calls** — purely local, reads only bundled files
- **Prompt injection mitigation** — tool prompts include explicit instructions to stay in NVC analysis mode and not follow instructions embedded in user text
- **npm publish safety** — the `files` field in `package.json` restricts what gets published
