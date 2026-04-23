# Agent Documentation for beepboop

This document provides guidance for AI assistants working on the beepboop project.

## Project Overview

beepboop is a test harness framework designed for orchestrating and validating complex system behavior. The project is in its initial setup phase.

## Technology Stack

- **Build System**: Nix with flakes
- **Language**: TBD (likely Rust based on flake structure)
- **CI/CD**: GitHub Actions

## Development Workflow

### Branch Strategy

- **main**: Production-ready code
- **feature/***: Feature development branches
- Always create a feature branch before making changes
- Never commit directly to main

### Making Changes

1. Ensure you're on a feature branch
2. Make incremental changes
3. Test changes locally with `nix build` or `nix develop`
4. Ask permission before committing

### Testing

- Run `nix flake check` to validate the flake structure
- Run `nix build` to test the build
- When code is added, follow TDD principles (RED → GREEN → REFACTOR)

## Project Structure

```
beepboop/
├── flake.nix              # Main Nix flake
├── nix/
│   ├── dev.nix            # Development shell configuration
│   └── ci.nix             # CI shell configuration
├── .github/workflows/     # GitHub Actions workflows
├── README.md              # User-facing documentation
└── AGENTS.md              # This file
```

## Nix Development Shells

- **default shell** (`nix develop`): For local development with all tools
- **ci shell** (`nix develop .#ci`): Minimal CI environment for builds

## CI/CD

### Workflows

- **ci.yaml**: Runs on non-main branches, validates flake and builds
- **update-flake-lock.yaml**: Weekly automated flake.lock updates
- **dependabot-auto-merge.yaml**: Auto-merges patch updates from Dependabot

### Secrets Required

- `BOT_ID`: GitHub App ID for automation
- `BOT`: GitHub App private key for automation

## Code Style

- Follow `.editorconfig` settings for consistent formatting
- Use `nix fmt` (alejandra) for Nix code formatting
- Keep code simple, readable, and maintainable

## Common Tasks

### Update Dependencies

Dependencies are managed via `flake.lock`. To update:

```bash
nix flake update
```

### Test Local Changes

```bash
# Check flake structure
nix flake check

# Build the project
nix build

# Enter development shell
nix develop
```

### Format Code

```bash
nix fmt
```

## Architecture Decisions

As the project evolves, document significant architectural decisions here.

## Getting Help

- Check `README.md` for user-facing documentation
- Review `flake.nix` and `nix/*.nix` for build configuration
- Examine GitHub workflows in `.github/workflows/`

## Notes for Future Development

- When adding Rust code, follow SOLID principles
- Consider TDD for all new features
- Keep functions focused and small
- Add comprehensive tests for all functionality
