#!/bin/zsh
# Quick Graphify Runner for Polisimuda2.5
# No LLM cost - AST only extraction

echo "🔍 Graphify - AST Extraction (Free, No LLM)"
echo "============================================"
echo ""

cd /Users/aryautama/Antigravity/Polisimuda2.5

GRAPHIFY_PYTHON=/Users/aryautama/.local/pipx/venvs/graphifyy/bin/python

echo "📊 Detecting files..."
$GRAPHIFY_PYTHON -c "
import json
from graphify.detect import detect
from pathlib import Path

result = detect(Path('.'))
print(f'  Total files: {result[\"total_files\"]}')
print(f'  Code files: {len(result[\"files\"][\"code\"])}')
print(f'  Docs: {len(result[\"files\"][\"document\"])}')
print(f'  Images: {len(result[\"files\"][\"image\"])}')
print(f'  Words: ~{result[\"total_words\"]:,}')
" 2>/dev/null

echo ""
echo "⚠️  Full semantic extraction requires Claude API (LLM cost)."
echo "    For free AST-only extraction, run:"
echo "    /graphify . --no-semantic"
echo ""
echo "✅ Graphify is ready! Use /graphify . in Antigravity or Claude Code."
