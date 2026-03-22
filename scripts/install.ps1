# Engineer Hive — Install Script (PowerShell)
# Installs the Engineer Hive framework into the current project directory.

$ErrorActionPreference = "Stop"
$HIVE_VERSION = "1.0.0"
$REPO_URL = "https://github.com/rafaelramosdf/engineer-hive"

function Write-Banner {
    Write-Host ""
    Write-Host "  +======================================+" -ForegroundColor Yellow
    Write-Host "  |        Engineer Hive v$HIVE_VERSION          |" -ForegroundColor Yellow
    Write-Host "  |   AI-Native Engineering Framework    |" -ForegroundColor Yellow
    Write-Host "  +======================================+" -ForegroundColor Yellow
    Write-Host ""
}

function Write-Step($message) {
    Write-Host "[HIVE] $message" -ForegroundColor Blue
}

function Write-Ok($message) {
    Write-Host "  + $message" -ForegroundColor Green
}

function Write-Warn($message) {
    Write-Host "  ! $message" -ForegroundColor Yellow
}

# Check existing installation
if (Test-Path ".github/copilot-instructions.md") {
    Write-Warn "Engineer Hive appears to be already installed in this project."
    $confirm = Read-Host "  Continue and overwrite? (y/N)"
    if ($confirm -ne "y" -and $confirm -ne "Y") {
        Write-Host "  Aborted."
        exit 0
    }
}

Write-Banner

# Create directory structure
Write-Step "Creating directory structure..."

$dirs = @(
    ".github/agents",
    ".github/instructions",
    ".github/prompts",
    ".github/skills/hive-initializer/references",
    ".github/skills/architecture/references",
    ".github/hooks",
    "specs/templates",
    "specs/features",
    "specs/tasks",
    "specs/bugfixes",
    "specs/hotfixes",
    "docs/architecture/decisions",
    "docs/api",
    "docs/guides",
    "docs/design-system",
    "docs/changelog"
)

foreach ($dir in $dirs) {
    New-Item -ItemType Directory -Path $dir -Force | Out-Null
    Write-Ok "$dir/"
}

# Download framework files
Write-Step "Downloading Engineer Hive framework files..."

$git = Get-Command git -ErrorAction SilentlyContinue
if ($git) {
    $tmpdir = Join-Path ([System.IO.Path]::GetTempPath()) "engineer-hive-$(Get-Random)"
    git clone --depth 1 $REPO_URL $tmpdir 2>$null

    Copy-Item -Path "$tmpdir/.github/*" -Destination ".github/" -Recurse -Force -ErrorAction SilentlyContinue
    Copy-Item -Path "$tmpdir/specs/*" -Destination "specs/" -Recurse -Force -ErrorAction SilentlyContinue
    Copy-Item -Path "$tmpdir/docs/*" -Destination "docs/" -Recurse -Force -ErrorAction SilentlyContinue

    Remove-Item -Path $tmpdir -Recurse -Force -ErrorAction SilentlyContinue
    Write-Ok "Framework files downloaded successfully"
} else {
    Write-Warn "Git not found. Please clone the repository manually:"
    Write-Host "  git clone $REPO_URL (temp folder)"
    Write-Host "  Copy .github/, specs/, and docs/ to your project"
    exit 1
}

# Add .gitkeep files
$keepDirs = @("specs/features", "specs/tasks", "specs/bugfixes", "specs/hotfixes",
              "docs/architecture/decisions", "docs/api", "docs/design-system", "docs/changelog")

foreach ($dir in $keepDirs) {
    $items = Get-ChildItem -Path $dir -ErrorAction SilentlyContinue
    if (-not $items -or $items.Count -eq 0) {
        New-Item -ItemType File -Path "$dir/.gitkeep" -Force | Out-Null
    }
}

# Summary
Write-Host ""
Write-Host "  ==========================================" -ForegroundColor Green
Write-Host "  Engineer Hive installed successfully!" -ForegroundColor Green
Write-Host "  ==========================================" -ForegroundColor Green
Write-Host ""
Write-Host "  Next steps:"
Write-Host ""
Write-Host "  1. Open your editor's AI chat"
Write-Host "  2. Run: @hive-initializer Setup this project"
Write-Host "     (or use the /init-project prompt)"
Write-Host "  3. The initializer will configure the framework"
Write-Host "     for your project's stack and conventions"
Write-Host ""
Write-Host "  Documentation: docs/guides/getting-started.md"
Write-Host "  Specs guide:   specs/README.md"
Write-Host ""
