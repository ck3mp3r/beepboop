# beepboop

A fully-fledged AI agent harness built with Rust, rig.rs, and SurrealDB.

## Overview

beepboop is a complete AI interaction framework featuring an orchestrator/sub-agent architecture, tool calling capabilities, MCP integration, responsive TUI, and persistent session management. Think pi, opencode, or crush - but built with modern Rust tooling.

## Features

- **Orchestrator/Sub-Agent Architecture**: Hierarchical agent system with specialized sub-agents (Executor, Validator, Reporter, Chat)
- **LLM Integration**: Unified provider interface via rig.rs supporting GitHub Copilot and 20+ LLM providers
- **Tool Calling**: Native JSON schema-based tool calling with multi-turn conversations
- **MCP Integration**: Built-in MCP server support for extensible tooling
- **Responsive TUI**: Adaptive terminal interface built with ratatui
- **Session Management**: Persistent sessions with SurrealDB, including vector support for future RAG capabilities
- **SOLID Architecture**: Trait-based design with no dynamic dispatch, following TDD principles

## Quick Start

### Prerequisites

- [Nix](https://nixos.org/) with flakes enabled

### Development

```bash
# Enter development shell
nix develop

# Or use direnv (recommended)
echo "use flake" > .envrc
direnv allow
```

### Building

```bash
# Build the project
nix build
```

## Project Structure

```
beepboop/
├── flake.nix          # Nix flake definition
├── nix/               # Nix shell configurations
│   ├── dev.nix        # Development shell
│   └── ci.nix         # CI shell
└── .github/           # GitHub workflows
    └── workflows/
```

## Configuration

Configuration details will be added as the project evolves.

## Contributing

This project is in early development. Contribution guidelines will be established as the project matures.

## License

TBD
