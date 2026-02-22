#!/usr/bin/env bash
# validate.sh — Check NVC knowledge base integrity
# Requires: python3 with pyyaml (pip install pyyaml)

set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
NC='\033[0m' # No Color

ERRORS=0
HAS_PYYAML=false

# Check prerequisites
if python3 -c "import yaml" 2>/dev/null; then
  HAS_PYYAML=true
else
  echo -e "${YELLOW}WARN${NC}: python3 pyyaml not found (pip install pyyaml). Skipping YAML and duplicate checks."
  echo ""
fi

echo "Validating NVC knowledge base..."
echo ""

# --- Check that all knowledge files exist and are non-empty ---

KNOWLEDGE_FILES=(
  "knowledge/intro.md"
  "knowledge/nvc-overview.md"
  "knowledge/four-components.md"
  "knowledge/principles.md"
  "knowledge/examples.md"
  "knowledge/catalogs/feelings.yaml"
  "knowledge/catalogs/needs.yaml"
  "knowledge/message-transformation-guide.md"
  "knowledge/trainer-guide.md"
  "knowledge/political-discourse-guide.md"
  "knowledge/README.md"
)

for file in "${KNOWLEDGE_FILES[@]}"; do
  if [ ! -s "$file" ]; then
    echo -e "${RED}FAIL${NC}: $file is missing or empty"
    ERRORS=$((ERRORS + 1))
  else
    echo -e "${GREEN}  OK${NC}: $file"
  fi
done

echo ""

if [ "$HAS_PYYAML" = true ]; then

  # --- Validate YAML catalogs parse correctly ---

  echo "Checking YAML syntax..."

  for yaml_file in knowledge/catalogs/*.yaml; do
    if python3 -c "import yaml; yaml.safe_load(open('$yaml_file'))" 2>/dev/null; then
      echo -e "${GREEN}  OK${NC}: $yaml_file parses correctly"
    else
      echo -e "${RED}FAIL${NC}: $yaml_file has invalid YAML syntax"
      ERRORS=$((ERRORS + 1))
    fi
  done

  echo ""

  # --- Check for duplicate feelings ---

  echo "Checking for duplicate feelings..."

  DUPES=$(python3 -c "
import yaml

with open('knowledge/catalogs/feelings.yaml') as f:
    data = yaml.safe_load(f)

all_feelings = []

# Fundamental feelings
for state in ['when_needs_are_met', 'when_needs_are_unmet']:
    if state in data.get('fundamental', {}):
        for group, items in data['fundamental'][state].items():
            if isinstance(items, list):
                all_feelings.extend(items)

# Masking feelings
for family_key, family in data.get('masking', {}).items():
    if isinstance(family, dict) and 'feelings' in family:
        all_feelings.extend(family['feelings'])

seen = set()
dupes = []
for f in all_feelings:
    if f in seen:
        dupes.append(f)
    seen.add(f)

if dupes:
    print('\n'.join(dupes))
" 2>/dev/null)

  if [ -n "$DUPES" ]; then
    echo -e "${RED}FAIL${NC}: Duplicate feelings found:"
    echo "$DUPES" | while read -r line; do echo "       - $line"; done
    ERRORS=$((ERRORS + 1))
  else
    echo -e "${GREEN}  OK${NC}: No duplicate feelings"
  fi

  # --- Check for duplicate needs ---

  echo "Checking for duplicate needs..."

  DUPES=$(python3 -c "
import yaml

with open('knowledge/catalogs/needs.yaml') as f:
    data = yaml.safe_load(f)

all_needs = []
for category, info in data.get('needs', {}).items():
    if isinstance(info, dict) and 'needs' in info:
        all_needs.extend(info['needs'])

seen = set()
dupes = []
for n in all_needs:
    if n in seen:
        dupes.append(n)
    seen.add(n)

if dupes:
    print('\n'.join(dupes))
" 2>/dev/null)

  if [ -n "$DUPES" ]; then
    echo -e "${RED}FAIL${NC}: Duplicate needs found:"
    echo "$DUPES" | while read -r line; do echo "       - $line"; done
    ERRORS=$((ERRORS + 1))
  else
    echo -e "${GREEN}  OK${NC}: No duplicate needs"
  fi

  echo ""

fi

# --- Summary ---

if [ "$ERRORS" -gt 0 ]; then
  echo -e "${RED}Validation failed with $ERRORS error(s).${NC}"
  exit 1
else
  echo -e "${GREEN}All checks passed.${NC}"
  exit 0
fi
