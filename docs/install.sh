#!/bin/bash

# Multi-Agent Methodology Installer for Claude Code
# Installs skills and commands to user-level Claude Code directories

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Installing Multi-Agent Architecture Methodology for Claude Code..."
echo ""

# Create directories if they don't exist
echo "Creating directories..."
mkdir -p ~/.claude/skills
mkdir -p ~/.claude/commands

# Install skills
echo "Installing skills..."
if [ -d "$SCRIPT_DIR/skills/multi-agent-methodology" ]; then
    cp -r "$SCRIPT_DIR/skills/multi-agent-methodology" ~/.claude/skills/
    echo "  ✓ Installed multi-agent-methodology skill"
else
    echo "  ✗ Error: skills/multi-agent-methodology not found"
    exit 1
fi

# Install commands
echo "Installing commands..."
for cmd in "$SCRIPT_DIR"/commands/*.md; do
    if [ -f "$cmd" ]; then
        cp "$cmd" ~/.claude/commands/
        echo "  ✓ Installed $(basename "$cmd" .md)"
    fi
done

echo ""
echo "Installation complete!"
echo ""
echo "Installed commands:"
echo "  Architect: /arch-init, /arch-discuss, /arch-create-docs, /arch-roadmap,"
echo "             /arch-sprint-plan, /arch-feedback, /arch-sprint-finalize,"
echo "             /arch-sprint-complete, /arch-user-story"
echo "  Implementor: /impl-start, /impl-finalize"
echo "  Shared: /pattern-add"
echo ""
echo "To verify, start Claude Code and run /help to see the new commands."
echo ""
echo "Quick start:"
echo "  1. Navigate to your project directory"
echo "  2. Run: /arch-init"
echo "  3. Follow the prompts to set up your project"
echo ""
