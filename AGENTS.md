# AGENTS

## Local preview

- Start the Jekyll dev server with `make serve`.
- The site is served at `http://127.0.0.1:4000`.

## Playwright in Codex

- In this repo, Codex non-interactive shells may not inherit the interactive `PATH`.
- Before using the Playwright skill, prepend Node to `PATH` explicitly:

```bash
export PATH=/opt/homebrew/opt/node@22/bin:$PATH
```

- Use the bundled Playwright wrapper:

```bash
export CODEX_HOME="$HOME/.codex"
export PWCLI="$CODEX_HOME/skills/playwright/scripts/playwright_cli.sh"
```

- Initialize Playwright once per checkout:

```bash
"$PWCLI" install
```

- Recommended mobile check flow for the homepage:

```bash
"$PWCLI" --session home open http://127.0.0.1:4000 --browser chrome
"$PWCLI" --session home resize 390 844
"$PWCLI" --session home snapshot
```
