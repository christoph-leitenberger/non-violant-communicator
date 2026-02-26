# NVC MCP Server

Nonviolent Communication tools for any LLM — via MCP or a copy-paste prompt.

Ever hesitated to give feedback because you wanted to avoid conflict? Ever wondered how to interpret feedback you received? Ever wondered what your own — or another person's — real motives are?

NVC (Nonviolent Communication) gives you simple building blocks to communicate your needs with clarity, without blame or judgment. Not addressing issues is an issue. Let's lower the barrier and increase the effectiveness of feedback to others and to ourselves using Nonviolent Communication.

This tool makes it easy to get started. Clarify your thoughts, rewrite tricky messages using NVC, and practice until it becomes second nature. If you're new to NVC, [this practical guide](https://www.dave-bailey.com/blog/nonviolent-communication) is a great place to start.

## Pick Your Path

### MCP users (Claude Desktop, Cursor, etc.)

1. Open your app's settings file (in Claude Desktop it's called `claude_desktop_config.json`)
2. Paste the following block into it:

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

3. Save the file and restart the app

That's it. No API keys, no internet connection needed. You now have 4 NVC tools and a browsable knowledge base.

### Claude Code users

1. Clone this repo: `git clone https://github.com/christoph-leitenberger/non-violent-communicator.git`
2. Open the folder in Claude Code

It just works — the repo already includes the right settings file, so the NVC tools are ready to use.

### Any LLM (ChatGPT, Gemini, Copilot, etc.) — no install needed

1. Open **[this prompt file](https://raw.githubusercontent.com/christoph-leitenberger/non-violent-communicator/master/PROMPT.md)**
2. Select all the text and copy it
3. Paste it as the first message in any LLM chat

Done — your LLM is now an NVC assistant with all four tools.

## What You Get

| Tool | What it does |
|---|---|
| **Thought Clarifier** | Paste any raw thought, rant, or journal entry — get a structured NVC breakdown (observations, feelings, needs, request) |
| **Message Transformer** | Rewrite a difficult email, chat message, or feedback using NVC principles |
| **NVC Trainer** | Practice identifying observations, feelings, needs, and requests with interactive exercises (3 difficulty levels) |
| **Political Discourse** | Analyze political quotes through the NVC lens — surface life-alienating patterns and the human needs behind the rhetoric |

### Why Political Discourse?

Politicians often use aggressive, blaming, or vague language. This makes it hard to see what they actually want and whose needs they're serving. The Political Discourse tool strips away the rhetoric and shows you the real human needs hiding underneath.

Imagine if politicians had to say clearly what they need — without distracting, blaming, or attacking. That's what this tool does: it translates political speech into honest, human language.

## Local development

```bash
git clone https://github.com/christoph-leitenberger/non-violent-communicator.git
cd non-violent-communicator
npm install
node index.js
```

## License

MIT
