#!/bin/zsh
# Graphify Auto-Update Script for Polisimuda2.5
# Usage: ./update-graph.sh

echo "🔄 Graphify Update - Polisimuda2.5"
echo "=================================="
echo ""

cd /Users/aryautama/ANTIGRAVITY/Polisimuda2.5

# Step 1: Incremental detection
echo "📊 Detecting changes..."
/Users/aryautama/.local/pipx/venvs/graphifyy/bin/python -c "
import json
from graphify.detect import detect_incremental, save_manifest
from pathlib import Path

result = detect_incremental(Path('.'))
new_total = result.get('new_total', 0)
print(f'  {new_total} new/changed file(s)')
Path('graphify-out/.needs_update').write_text(str(new_total))
" 2>/dev/null || echo "  First run - no existing graph"

# Step 2: Run update
echo ""
echo "🔍 Running incremental update..."
graphify update . 2>&1

# Step 3: Regenerate Obsidian vault
echo ""
echo "📝 Regenerating Obsidian vault..."
/Users/aryautama/.local/pipx/venvs/graphifyy/bin/python << 'PYEOF'
import json
from pathlib import Path
from graphify.build import build_from_json
from graphify.cluster import cluster, score_all
from graphify.export import to_obsidian, to_canvas

graph_data = json.loads(Path('graphify-out/graph.json').read_text())
G = build_from_json(graph_data)
communities = cluster(G)
cohesion = score_all(G, communities)

labels_raw = json.loads(Path('graphify-out/.graphify_labels.json').read_text()) if Path('graphify-out/.graphify_labels.json').exists() else {}
labels = {int(k): v for k, v in labels_raw.items()} if labels_raw else {}

obsidian_dir = 'graphify-out/obsidian'
n = to_obsidian(G, communities, obsidian_dir, community_labels=labels, cohesion=cohesion)
print(f"Created {n} notes")
PYEOF

echo ""
echo "✅ Update complete!"
echo ""
echo "To view:"
echo "  1. Open Obsidian → Open vault as folder → graphify-out/obsidian/"
echo "  2. Or open graph.html in browser: open graphify-out/graph.html"
