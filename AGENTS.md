# Polisimuda2.5 - AI Coding Guide

## Project Context

This is the Polisimuda2.5 project - a police academy exam prep platform with:
- **Frontend**: React 19 + TypeScript + Vite + TailwindCSS
- **Backend**: Go + PostgreSQL + Traefik
- **Features**: Tryout tests, Accuracy tests, Live tryouts, Psychology chains, Payment/billing

## Knowledge Graph

This project has a **Graphify knowledge graph** at `graphify-out/`.

### Before Answering Architecture Questions
Read `graphify-out/GRAPH_REPORT.md` for:
- God nodes (most connected components)
- Community structure
- Surprising connections

### Quick Graph Query
```bash
cd /Users/aryautama/ANTIGRAVITY/Polisimuda2.5
graphify query "your question here"
```

### Updating the Graph
After code changes, run:
```bash
cd /Users/aryautama/ANTIGRAVITY/Polisimuda2.5
./update-graph.sh
```

Or incrementally:
```bash
graphify update .
```

## Key Files

- `polisi-muda/` - Frontend React app
- `polisi-muda-api/` - Backend Go API
- `graphify-out/` - Knowledge graph outputs
  - `graph.html` - Interactive visualization
  - `graph.json` - Raw graph data
  - `GRAPH_REPORT.md` - Full report
  - `obsidian/` - Obsidian vault (1,692 notes)

## Commands

```bash
# Development
cd polisi-muda && npm run dev
cd polisi-muda-api && go run cmd/app/main.go

# Docker
docker compose up -d

# Graph update
./update-graph.sh
```
