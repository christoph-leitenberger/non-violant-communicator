# NVC MCP Server

An MCP (Model Context Protocol) server that gives any compatible LLM client — Claude Desktop, Claude Code, etc. — access to Nonviolent Communication tools and knowledge.

No API keys. No external calls. The server bundles a curated NVC knowledge base and returns structured prompts that guide the host LLM through NVC analysis.

## Quick Start

### Claude Desktop

Add to your `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "nvc": {
      "command": "npx",
      "args": ["non-violant-communicator"]
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
      "args": ["non-violant-communicator"]
    }
  }
}
```

### Run locally (development)

```bash
git clone <repo-url>
cd non-violant-communicator
npm install
node src/index.js
```

## What You Get

### Tools

| Tool | Description |
|---|---|
| `thought_clarifier` | Analyze free-form text through the NVC lens. Surfaces feelings, needs, and an optional request. |

### Resources

The NVC knowledge base is also available as browsable resources:

| Resource | URI |
|---|---|
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
