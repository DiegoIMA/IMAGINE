# Instala a verificacao de dados pessoais antes de cada commit neste clone do repositorio.
# Uso, na raiz do repositorio: powershell -NoProfile -ExecutionPolicy Bypass -File ferramentas/instalar-protecao.ps1
param([string]$Git = 'git')
$ErrorActionPreference = 'Stop'
$raiz = (& $Git rev-parse --show-toplevel).Trim(); $dirGit = (& $Git rev-parse --absolute-git-dir).Trim()
$gancho = @'
#!/bin/sh
SHELLPS=powershell.exe
command -v pwsh >/dev/null 2>&1 && SHELLPS=pwsh
"$SHELLPS" -NoProfile -ExecutionPolicy Bypass -File ferramentas/verificar-dados-pessoais.ps1 -Staged -Git "$(cygpath -w "$(command -v git)" 2>/dev/null || echo git)"
'@
$d = Join-Path $dirGit 'hooks'; if (-not (Test-Path -LiteralPath $d)) { [void](New-Item -ItemType Directory -Force -Path $d) }
[IO.File]::WriteAllText((Join-Path $d 'pre-commit'), ($gancho.Replace("`r`n", "`n") + "`n"), (New-Object Text.UTF8Encoding($false)))
"Verificacao instalada em $raiz."
$lista = "$env:USERPROFILE\Desktop\IMAGINE_DADOS_PESSOAIS_NAO_VERSIONAR\substituicoes.tsv"
if (Test-Path -LiteralPath $lista) { 'Lista privada encontrada: nomes e valores tambem serao verificados.' } else { 'AVISO: lista privada nao encontrada. Serao verificados so os padroes, como telefone, e-mail e CPF.' }
