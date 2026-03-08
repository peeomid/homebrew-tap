# Homebrew Tap

## Available Formulas

### prj

Local git repository scanner & project dashboard for the terminal. Scans your dev folders, extracts metadata (tech stack, commits, status, deployment, TODOs), and reports from terminal.

```bash
brew tap peeomid/tap
brew install prj
```

```bash
prj add ~/Development
prj scan
prj list
prj dash
```

### todosmd

A terminal-based task manager for Markdown files with vim keybindings.

```bash
brew tap peeomid/tap
brew install todosmd
```

```bash
tmd --help
tmd init
tmd interactive
```

### trove

CLI for managing Obsidian vault ideas, projects, sessions, builds, and knowledge.

```bash
brew tap peeomid/tap
brew install peeomid/tap/trove
```

```bash
trove version
trove project list
trove session list
```

## Available Casks

### devboard

Local project dashboard for macOS — a native desktop companion for `prj`. Reads `~/.prj/projects.json` and shows a visual dashboard with search, filters, and quick actions. Built with Tauri v2 + React.

Inspired by [your-project-dashboard](https://github.com/aviflombaum/your-project-dashboard) by Avi Flombaum.

```bash
brew tap peeomid/tap
brew install --cask devboard
```

## More Info

- [prj on GitHub](https://github.com/peeomid/prj)
- [trove release assets](https://github.com/peeomid/homebrew-tap/releases)
- [devboard on GitHub](https://github.com/peeomid/devboard)
- [todosmd on GitHub](https://github.com/peeomid/todos.md)
- [todosmd on npm](https://www.npmjs.com/package/todosmd)
