# Engineer Hive — Update Script (PowerShell)
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

param(
    [switch]$DryRun,
    [switch]$Help
)

$ErrorActionPreference = "Stop"
$REPO_URL = "https://github.com/rafaelramosdf/engineer-hive"

if ($Help) {
    Write-Host "Uso: .\scripts\update.ps1 [-DryRun]"
    Write-Host ""
    Write-Host "  -DryRun   Mostra o que seria atualizado sem fazer alterações"
    exit 0
}

function Write-Banner {
    Write-Host ""
    Write-Host "  +======================================+" -ForegroundColor Yellow
    Write-Host "  |    Engineer Hive — Update            |" -ForegroundColor Yellow
    Write-Host "  |   AI-Native Engineering Framework    |" -ForegroundColor Yellow
    Write-Host "  +======================================+" -ForegroundColor Yellow
    Write-Host ""
}

function Write-Step($msg)  { Write-Host "[HIVE] $msg" -ForegroundColor Blue }
function Write-Ok($msg)    { Write-Host "  + $msg" -ForegroundColor Green }
function Write-Skip($msg)  { Write-Host "  > $msg (preservado)" -ForegroundColor Cyan }
function Write-Dry($msg)   { Write-Host "  ~ $msg (dry-run)" -ForegroundColor Yellow }

# Verifica se está na raiz de um projeto com Hive instalado
if (-not (Test-Path ".github\copilot-instructions.md")) {
    Write-Host "  x Engineer Hive nao encontrado neste diretorio." -ForegroundColor Red
    Write-Host "    Execute este script a partir da raiz do projeto onde o Hive esta instalado."
    exit 1
}

Write-Banner

if ($DryRun) {
    Write-Host "  Modo dry-run: nenhuma alteracao sera feita." -ForegroundColor Yellow
    Write-Host ""
}

# Verificar git
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Host "  x Git nao encontrado. Instale o git e tente novamente." -ForegroundColor Red
    exit 1
}

# Clone para diretório temporário
Write-Step "Baixando versao mais recente do framework..."
$TmpDir = Join-Path ([System.IO.Path]::GetTempPath()) "engineer-hive-update-$(Get-Random)"
git clone --depth 1 $REPO_URL $TmpDir 2>$null
Write-Ok "Framework baixado com sucesso"
Write-Host ""

function Copy-HiveDir($RelPath, $Label) {
    $src = Join-Path $TmpDir $RelPath
    $dst = Join-Path "." $RelPath

    if (-not (Test-Path $src)) { return }

    New-Item -ItemType Directory -Path $dst -Force | Out-Null

    if ($DryRun) {
        Get-ChildItem -Path $src -Recurse -File | ForEach-Object {
            $rel = $_.FullName.Substring($TmpDir.Length + 1)
            Write-Dry $rel
        }
    } else {
        Copy-Item -Path "$src\*" -Destination $dst -Recurse -Force
        Write-Ok ($Label ?? $RelPath)
    }
}

function Copy-HiveFile($RelPath) {
    $src = Join-Path $TmpDir $RelPath
    $dst = Join-Path "." $RelPath

    if (-not (Test-Path $src)) { return }

    if ($DryRun) {
        Write-Dry $RelPath
    } else {
        $dstDir = Split-Path $dst -Parent
        New-Item -ItemType Directory -Path $dstDir -Force | Out-Null
        Copy-Item -Path $src -Destination $dst -Force
        Write-Ok $RelPath
    }
}

# --- Atualização dos arquivos do framework ---

Write-Step "Atualizando agentes..."
Copy-HiveDir ".github\agents" ".github/agents/ (todos os agentes)"

Write-Host ""
Write-Step "Atualizando roteamento central..."
Copy-HiveFile ".github\copilot-instructions.md"

Write-Host ""
Write-Step "Atualizando padroes de codigo e documentacao..."

$FrameworkInstructions = @(
    "coding-standards.instructions.md",
    "documentation-standards.instructions.md",
    "spec-writing.instructions.md"
)

foreach ($file in $FrameworkInstructions) {
    Copy-HiveFile ".github\instructions\$file"
}

$ProtectedInstructions = @(
    "stack.instructions.md",
    "language.instructions.md"
)

foreach ($file in $ProtectedInstructions) {
    if (Test-Path ".github\instructions\$file") {
        Write-Skip ".github/instructions/$file"
    }
}

Write-Host ""
Write-Step "Atualizando prompts..."
Copy-HiveDir ".github\prompts" ".github/prompts/ (todos os prompts)"

Write-Host ""
Write-Step "Atualizando skills..."
Copy-HiveDir ".github\skills" ".github/skills/ (todas as skills)"

Write-Host ""
Write-Step "Atualizando templates de spec..."
Copy-HiveDir "specs\templates" "specs/templates/ (todos os templates)"

Write-Host ""
Write-Step "Atualizando scripts..."
Copy-HiveFile "scripts\install.sh"
Copy-HiveFile "scripts\install.ps1"
Copy-HiveFile "scripts\update.sh"
Copy-HiveFile "scripts\update.ps1"

# Preservados — apenas informativo
Write-Host ""
Write-Step "Arquivos de projeto preservados:"
Write-Skip "specs/features/"
Write-Skip "specs/tasks/"
Write-Skip "specs/bugfixes/"
Write-Skip "specs/hotfixes/"
Write-Skip "docs/"
if (Test-Path ".vscode") { Write-Skip ".vscode/" }

# Limpeza do diretório temporário
Remove-Item -Path $TmpDir -Recurse -Force -ErrorAction SilentlyContinue

# Resumo
Write-Host ""
if ($DryRun) {
    Write-Host "  ==========================================" -ForegroundColor Yellow
    Write-Host "  Dry-run concluido. Nenhum arquivo foi alterado." -ForegroundColor Yellow
    Write-Host "  Execute sem -DryRun para aplicar as atualizacoes." -ForegroundColor Yellow
    Write-Host "  ==========================================" -ForegroundColor Yellow
} else {
    Write-Host "  ==========================================" -ForegroundColor Green
    Write-Host "  Engineer Hive atualizado com sucesso!" -ForegroundColor Green
    Write-Host "  ==========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "  Suas customizacoes de projeto foram preservadas:"
    Write-Host "  · stack.instructions.md (config de stack)"
    Write-Host "  · language.instructions.md (config de idioma)"
    Write-Host "  · specs/ (suas especificacoes)"
    Write-Host "  · docs/ (sua documentacao)"
}
Write-Host ""
