# Multi-Agent Architecture Methodology for Claude Code

A Claude Code skill + command set for managing complex software projects using distinct Architect and Implementor agent roles.

## Overview

This methodology enables:
- **Clear role separation**: Architect owns design and orchestration; Implementor owns execution
- **Incremental design via deltas**: Explore changes before committing to documentation
- **Structured handoffs**: Briefs and plans transfer context between agents
- **Feedback loops**: Implementation logs and feedback cycles drive evolution
- **Sprint-based development**: Coherent chunks of work with clear outcomes

## Installation

### 1. Copy Skills to User-Level Skills Directory

```bash
mkdir -p ~/.claude/skills
cp -r skills/multi-agent-methodology ~/.claude/skills/
```

### 2. Copy Commands to User-Level Commands Directory

```bash
mkdir -p ~/.claude/commands
cp commands/*.md ~/.claude/commands/
```

### 3. Verify Installation

Start Claude Code and run `/help`. You should see the new commands:
- `/arch-init`
- `/arch-discuss`
- `/arch-create-docs`
- `/arch-roadmap`
- `/arch-sprint-plan`
- `/arch-feedback`
- `/arch-sprint-finalize`
- `/arch-sprint-complete`
- `/arch-user-story`
- `/impl-start`
- `/impl-finalize`
- `/pattern-add`

## Quick Start

### Starting a New Project

1. **Initialize** (Architect session):
   ```
   /arch-init
   
   [Provide your initial design documents, research, ideas]
   ```

2. **Discuss Architecture**:
   ```
   /arch-discuss
   
   [Share your architectural thinking and ideas]
   ```

3. **Create Documentation**:
   ```
   /arch-create-docs
   ```

4. **Create Roadmap**:
   ```
   /arch-roadmap
   ```

5. **Plan First Sprint**:
   ```
   /arch-sprint-plan
   ```

6. **Provide Feedback** (when you have thoughts/reactions):
   ```
   /arch-feedback
   
   [Share your feedback essay]
   ```

7. **Finalize Sprint**:
   ```
   /arch-sprint-finalize
   ```

8. **Switch to Implementor Session**:
   ```
   /impl-start @docs/implementor_brief_sprint1.md
   ```

9. **Complete Implementation Work**:
   ```
   /impl-finalize
   ```

10. **Back to Architect Session**:
    ```
    /arch-sprint-complete @docs/implementation_log_sprint1.md
    ```

Then repeat the sprint cycle as needed.

## Command Reference

### Architect Commands

| Command | Purpose |
|---------|---------|
| `/arch-init` | Initialize project, set patterns, establish Architect role |
| `/arch-discuss` | Engage in architectural discussion, build understanding |
| `/arch-create-docs` | Create initial product documentation |
| `/arch-roadmap` | Create implementation roadmap |
| `/arch-sprint-plan` | Begin planning next sprint, propose initial scope |
| `/arch-feedback` | Process user feedback, extract deltas, align on scope |
| `/arch-sprint-finalize` | Finalize scope, write implementation plan and brief |
| `/arch-sprint-complete` | Process completed sprint, update docs, propose next sprint |
| `/arch-user-story` | Capture and discuss user stories |

### Implementor Commands

| Command | Purpose |
|---------|---------|
| `/impl-start` | Begin implementation, read brief, proceed |
| `/impl-finalize` | Wrap up implementation, complete log, write retrospective |

### Shared Commands

| Command | Purpose |
|---------|---------|
| `/pattern-add` | Add or update a project pattern in CLAUDE.md |

## Working with Two Sessions

This methodology works best with two separate Claude Code sessions:

1. **Architect Session**: Long-running session that maintains design context
2. **Implementor Session**: Separate session focused on execution

The sessions communicate through documents:
- Architect creates briefs and plans → Implementor reads them
- Implementor creates logs → Architect reads them

This separation:
- Keeps contexts focused and manageable
- Allows specialization (design thinking vs. implementation thinking)
- Creates natural handoff points for review

## Project Structure

After initialization, projects typically have:

```
your-project/
├── .claude/
│   └── CLAUDE.md          # Project patterns and context
├── docs/
│   ├── [product_docs]     # Product documentation (structure varies)
│   ├── roadmap.md         # Implementation roadmap
│   ├── delta_XX_*.md      # Design deltas
│   ├── implementation_plan_sprintX.md
│   ├── implementor_brief_sprintX.md
│   └── implementation_log_sprintX.md
└── [source code]
```

## Customization

### Project Patterns

Use `/arch-init` or `/pattern-add` to establish patterns like:
- Build tool preferences (bun, uv, cargo, etc.)
- Container behavior
- Testing conventions
- Code style

These are captured in `CLAUDE.md` and respected by both agents.

### Documentation Structure

The `/arch-create-docs` command encourages the Architect to recognize what documentation structure serves the project. It might be:
- A single comprehensive design doc
- Multiple focused documents
- Whatever fits the project's nature

## Tips

- **Let the feedback cycle work**: Your "rambling essay" of thoughts is valuable. The Architect will untangle it.
- **Trust the Implementor's reflections**: Their retrospective insights improve future sprints.
- **Keep deltas cheap**: Create them freely for exploration. They're working papers, not commitments.
- **Reconcile promptly**: Update docs after each sprint to keep them trustworthy.
- **Capture patterns as you discover them**: Use `/pattern-add` when you learn something the project should remember.

## Philosophy

This methodology embraces that:
- Complex projects need more structure than a single conversation
- Design and implementation are different modes of thinking
- Feedback and reflection drive evolution
- Documentation should reflect reality, not aspirations
- Claude is damn smart and can recognize what's needed

Work with Claude as a thinking partner, not just a tool.
