---
description: Add or update a project pattern in CLAUDE.md. Discuss the pattern and its implications before committing.
allowed-tools: Read, Write, Edit, Bash, Glob, Grep
---

# Add/Update Project Pattern

You are working on this project (as either Architect or Implementor). A new pattern has been identified that should be captured for future work.

## Your Task

### 1. Understand the Pattern

The user is proposing a pattern. Understand:
- What is the pattern?
- Why is it needed?
- When does it apply?
- What are the implications?

### 2. Discuss and Clarify

Before committing to `CLAUDE.md`:
- Ask clarifying questions if needed
- Consider if this might conflict with existing patterns
- Discuss any implications or edge cases
- Confirm the pattern is well-understood

### 3. Update CLAUDE.md

Once aligned, update `CLAUDE.md`:
- Add the pattern to the appropriate section
- If a new section is needed, create it
- Be clear and specific in the documentation
- Include rationale where helpful

### 4. Confirm the Update

Show the user what you've added and confirm it looks right.

## Pattern Categories

Common pattern categories (add new ones as needed):

- **Build & Runtime**: Package managers, build tools, how to run/test
- **Code Conventions**: Style, structure, testing patterns
- **Architecture**: Design patterns, component organization
- **Environment**: Container behavior, deployment considerations
- **Process**: How work should flow, conventions for collaboration

## Example Patterns

```markdown
### Build & Runtime
- Use `bun` instead of `npm` for all package management
- Use `uv` for Python package management
- If the app runs in containers, rebuild and restart containers instead of running `bun run dev` locally

### Code Conventions
- All new code should have unit tests
- Use TypeScript strict mode
- Prefer functional patterns over classes

### Architecture
- API endpoints go in `src/api/`
- Shared types live in `src/types/`
```

## Handling Conflicts

If the new pattern conflicts with an existing one:
- Surface the conflict
- Discuss which should take precedence
- Update or remove the old pattern if superseded
- Note the change in version history if maintaining one

## Begin

Discuss the proposed pattern with the user, then update `CLAUDE.md` when aligned.

---

$ARGUMENTS
