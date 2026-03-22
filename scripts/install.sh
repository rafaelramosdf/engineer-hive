#!/usr/bin/env bash
# Engineer Hive — Install Script
# Installs the Engineer Hive framework into the current project directory.

set -euo pipefail

HIVE_VERSION="1.0.0"
REPO_URL="https://github.com/rafaelramosdf/engineer-hive"

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

print_banner() {
  echo -e "${YELLOW}"
  echo "  ╔══════════════════════════════════════╗"
  echo "  ║        🐝 Engineer Hive v${HIVE_VERSION}        ║"
  echo "  ║   AI-Native Engineering Framework    ║"
  echo "  ╚══════════════════════════════════════╝"
  echo -e "${NC}"
}

print_step() {
  echo -e "${BLUE}[HIVE]${NC} $1"
}

print_success() {
  echo -e "${GREEN}  ✓${NC} $1"
}

print_warning() {
  echo -e "${YELLOW}  ⚠${NC} $1"
}

print_error() {
  echo -e "${RED}  ✗${NC} $1"
}

# Check if directory already has Engineer Hive
check_existing() {
  if [ -f ".github/copilot-instructions.md" ]; then
    echo ""
    print_warning "Engineer Hive appears to be already installed in this project."
    read -p "  Continue and overwrite? (y/N): " confirm
    if [[ ! "$confirm" =~ ^[Yy]$ ]]; then
      echo "  Aborted."
      exit 0
    fi
  fi
}

# Create directory structure
create_structure() {
  print_step "Creating directory structure..."

  local dirs=(
    ".github/agents"
    ".github/instructions"
    ".github/prompts"
    ".github/skills/hive-initializer/references"
    ".github/skills/architecture/references"
    ".github/hooks"
    "specs/templates"
    "specs/features"
    "specs/tasks"
    "specs/bugfixes"
    "specs/hotfixes"
    "docs/architecture/decisions"
    "docs/api"
    "docs/guides"
    "docs/design-system"
    "docs/changelog"
  )

  for dir in "${dirs[@]}"; do
    mkdir -p "$dir"
    print_success "$dir/"
  done
}

# Download framework files from repository
download_files() {
  print_step "Downloading Engineer Hive framework files..."

  if command -v git &> /dev/null; then
    # Clone to temp directory and copy files
    local tmpdir
    tmpdir=$(mktemp -d)
    git clone --depth 1 "$REPO_URL" "$tmpdir" 2>/dev/null

    # Copy framework files (not project-specific ones)
    cp -r "$tmpdir/.github/"* ".github/" 2>/dev/null || true
    cp -r "$tmpdir/specs/"* "specs/" 2>/dev/null || true
    cp -r "$tmpdir/docs/"* "docs/" 2>/dev/null || true

    rm -rf "$tmpdir"
    print_success "Framework files downloaded successfully"
  elif command -v curl &> /dev/null; then
    print_warning "Git not found. Please clone the repository manually:"
    echo "  git clone $REPO_URL /tmp/engineer-hive"
    echo "  cp -r /tmp/engineer-hive/.github/* .github/"
    echo "  cp -r /tmp/engineer-hive/specs/* specs/"
    echo "  cp -r /tmp/engineer-hive/docs/* docs/"
    exit 1
  else
    print_error "Neither git nor curl found. Please install git and try again."
    exit 1
  fi
}

# Add .gitkeep files to empty directories
add_gitkeep() {
  local dirs=(
    "specs/features"
    "specs/tasks"
    "specs/bugfixes"
    "specs/hotfixes"
    "docs/architecture/decisions"
    "docs/api"
    "docs/design-system"
    "docs/changelog"
  )

  for dir in "${dirs[@]}"; do
    if [ -z "$(ls -A "$dir" 2>/dev/null)" ]; then
      touch "$dir/.gitkeep"
    fi
  done
}

# Print summary
print_summary() {
  echo ""
  echo -e "${GREEN}══════════════════════════════════════════${NC}"
  echo -e "${GREEN}  Engineer Hive installed successfully! 🎉${NC}"
  echo -e "${GREEN}══════════════════════════════════════════${NC}"
  echo ""
  echo "  Next steps:"
  echo ""
  echo "  1. Open your editor's AI chat"
  echo "  2. Run: @hive-initializer Setup this project"
  echo "     (or use the /init-project prompt)"
  echo "  3. The initializer will configure the framework"
  echo "     for your project's stack and conventions"
  echo ""
  echo "  Documentation: docs/guides/getting-started.md"
  echo "  Specs guide:   specs/README.md"
  echo ""
}

# Main
main() {
  print_banner
  check_existing
  create_structure
  download_files
  add_gitkeep
  print_summary
}

main "$@"
