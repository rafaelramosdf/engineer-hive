#!/usr/bin/env bash
# Engineer Hive — Update Script
# Atualiza apenas os arquivos do framework, preservando todas as customizações do projeto.
#
# O que é ATUALIZADO:
#   .github/agents/            — Todos os arquivos de definição de agentes
#   .github/copilot-instructions.md — Roteamento e protocolo central
#   .github/instructions/      — Padrões gerais (coding, docs, spec-writing)
#   .github/prompts/           — Templates de prompts
#   .github/skills/            — Arquivos de skills
#   specs/templates/           — Templates de spec
#   scripts/                   — Scripts de instalação e atualização
#
# O que é PRESERVADO:
#   .github/instructions/stack.instructions.md    — Config de stack do seu projeto
#   .github/instructions/language.instructions.md — Config de idioma do seu projeto
#   specs/features|tasks|bugfixes|hotfixes/        — Suas specs
#   docs/                                          — Sua documentação
#   .vscode/                                       — Suas configs de workspace

set -euo pipefail

REPO_URL="https://github.com/rafaelramosdf/engineer-hive"
DRY_RUN=false

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'

print_banner() {
  echo -e "${YELLOW}"
  echo "  ╔══════════════════════════════════════╗"
  echo "  ║       🐝 Engineer Hive — Update      ║"
  echo "  ║   AI-Native Engineering Framework    ║"
  echo "  ╚══════════════════════════════════════╝"
  echo -e "${NC}"
}

print_step()    { echo -e "${BLUE}[HIVE]${NC} $1"; }
print_ok()      { echo -e "${GREEN}  ✓${NC} $1"; }
print_skip()    { echo -e "${CYAN}  ↷${NC} $1 ${CYAN}(preservado)${NC}"; }
print_dry()     { echo -e "${YELLOW}  ~${NC} $1 ${YELLOW}(dry-run)${NC}"; }

# Parse args
for arg in "$@"; do
  case $arg in
    --dry-run) DRY_RUN=true ;;
    --help)
      echo "Uso: ./scripts/update.sh [--dry-run]"
      echo ""
      echo "  --dry-run   Mostra o que seria atualizado sem fazer alterações"
      exit 0
      ;;
  esac
done

# Verifica se está na raiz de um projeto com Hive instalado
if [ ! -f ".github/copilot-instructions.md" ]; then
  echo "  ✗ Engineer Hive não encontrado neste diretório."
  echo "    Execute este script a partir da raiz do projeto onde o Hive está instalado."
  exit 1
fi

print_banner

if $DRY_RUN; then
  echo -e "${YELLOW}  Modo dry-run: nenhuma alteração será feita.${NC}"
  echo ""
fi

# Clone para diretório temporário
print_step "Baixando versão mais recente do framework..."
TMPDIR_HIVE=$(mktemp -d)
trap 'rm -rf "$TMPDIR_HIVE"' EXIT

if ! command -v git &> /dev/null; then
  echo "  ✗ Git não encontrado. Instale o git e tente novamente."
  exit 1
fi

git clone --depth 1 "$REPO_URL" "$TMPDIR_HIVE" 2>/dev/null
print_ok "Framework baixado com sucesso"
echo ""

# Função auxiliar para copiar um diretório completo
copy_dir() {
  local src="$TMPDIR_HIVE/$1"
  local dst="./$1"
  local label="${2:-$1}"

  if [ ! -d "$src" ]; then
    return
  fi

  mkdir -p "$dst"

  if $DRY_RUN; then
    for f in $(find "$src" -type f); do
      rel="${f#$TMPDIR_HIVE/}"
      print_dry "$rel"
    done
  else
    cp -r "$src/." "$dst/"
    print_ok "$label"
  fi
}

# Função auxiliar para copiar um arquivo específico
copy_file() {
  local src="$TMPDIR_HIVE/$1"
  local dst="./$1"

  if [ ! -f "$src" ]; then
    return
  fi

  if $DRY_RUN; then
    print_dry "$1"
  else
    mkdir -p "$(dirname "$dst")"
    cp "$src" "$dst"
    print_ok "$1"
  fi
}

# --- Atualização dos arquivos do framework ---

print_step "Atualizando agentes..."
copy_dir ".github/agents" ".github/agents/ (todos os agentes)"

echo ""
print_step "Atualizando roteamento central..."
copy_file ".github/copilot-instructions.md"

echo ""
print_step "Atualizando padrões de código e documentação..."

# Padrões genéricos do framework — sempre atualizar
FRAMEWORK_INSTRUCTIONS=(
  "coding-standards.instructions.md"
  "documentation-standards.instructions.md"
  "spec-writing.instructions.md"
)

for file in "${FRAMEWORK_INSTRUCTIONS[@]}"; do
  copy_file ".github/instructions/$file"
done

# Arquivos de projeto — preservar
PROTECTED_INSTRUCTIONS=(
  "stack.instructions.md"
  "language.instructions.md"
)

for file in "${PROTECTED_INSTRUCTIONS[@]}"; do
  if [ -f ".github/instructions/$file" ]; then
    print_skip ".github/instructions/$file"
  fi
done

echo ""
print_step "Atualizando prompts..."
copy_dir ".github/prompts" ".github/prompts/ (todos os prompts)"

echo ""
print_step "Atualizando skills..."
copy_dir ".github/skills" ".github/skills/ (todas as skills)"

echo ""
print_step "Atualizando templates de spec..."
copy_dir "specs/templates" "specs/templates/ (todos os templates)"

echo ""
print_step "Atualizando scripts..."
copy_file "scripts/install.sh"
copy_file "scripts/install.ps1"
copy_file "scripts/update.sh"
copy_file "scripts/update.ps1"

# Preservados — apenas informativo
echo ""
print_step "Arquivos de projeto preservados:"
print_skip "specs/features/"
print_skip "specs/tasks/"
print_skip "specs/bugfixes/"
print_skip "specs/hotfixes/"
print_skip "docs/"
[ -d ".vscode" ] && print_skip ".vscode/"

# Resumo
echo ""
if $DRY_RUN; then
  echo -e "${YELLOW}══════════════════════════════════════════${NC}"
  echo -e "${YELLOW}  Dry-run concluído. Nenhum arquivo foi alterado.${NC}"
  echo -e "${YELLOW}  Execute sem --dry-run para aplicar as atualizações.${NC}"
  echo -e "${YELLOW}══════════════════════════════════════════${NC}"
else
  echo -e "${GREEN}══════════════════════════════════════════${NC}"
  echo -e "${GREEN}  Engineer Hive atualizado com sucesso! 🎉${NC}"
  echo -e "${GREEN}══════════════════════════════════════════${NC}"
  echo ""
  echo "  Suas customizações de projeto foram preservadas:"
  echo "  · stack.instructions.md (config de stack)"
  echo "  · language.instructions.md (config de idioma)"
  echo "  · specs/ (suas especificações)"
  echo "  · docs/ (sua documentação)"
fi
echo ""
