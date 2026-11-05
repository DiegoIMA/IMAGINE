param([switch]$Staged, [string]$Privado = "$env:USERPROFILE\Desktop\IMAGINE_DADOS_PESSOAIS_NAO_VERSIONAR\substituicoes.tsv", [string]$Git = 'git')
# Barra commit com dado pessoal. Le a lista de valores de um arquivo fora do repositorio.
$u = [Text.Encoding]::UTF8; $raiz = (& $Git rev-parse --show-toplevel).Trim(); Set-Location -LiteralPath $raiz
$arqs = if ($Staged) { @(& $Git -c core.quotepath=false diff --cached --name-only --diff-filter=ACMR) } else { @(& $Git -c core.quotepath=false ls-files) + @(& $Git -c core.quotepath=false ls-files -o --exclude-standard) }
$rx = [ordered]@{ email = '[\w.\-]+@[\w\-]+\.[A-Za-z][\w.\-]+'; telefone = '(?<![\d.,/])(?:\+?55[\s-]?)?\(?\b[1-9]\d\)?[\s.-]?9\d{4}[\s.-]?\d{4}\b(?![\d/])'; cpf = '(?<!\d)\d{3}\.\d{3}\.\d{3}-\d{2}(?!\d)'; rg = '(?i)\bRG\b\s*[:nº.]*\s*\d[\d.\-]{4,}'; link = '(?i)(drive|docs)\.google\.com/|trello\.com/[bc]/' }
$permitidos = 'contato@seuemail.com.br', 'noreply@anthropic.com'
$vals = @(); if (Test-Path -LiteralPath $Privado) { foreach ($l in [IO.File]::ReadAllLines($Privado, $u)) { if ($l.Trim()) { $c = $l -split "`t"; $vals += '(?<![\p{L}\p{N}])' + ([regex]::Escape($c[2]) -replace '\\ ', '\s+') + '(?![\p{L}\p{N}])' } } } else { 'AVISO: lista privada nao encontrada; so os padroes foram verificados.' }
$erros = 0
foreach ($a in $arqs) {
  if ([IO.Path]::GetExtension($a).ToLower() -in '.pdf', '.xlsx', '.xlsm', '.docx', '.pptx', '.jpg', '.jpeg', '.png', '.csv', '.tsv') { "BLOQUEADO tipo de arquivo: $a"; $erros++; continue }
  if (-not (Test-Path -LiteralPath $a)) { continue }
  $t = if ($Staged) { (& $Git show ":$a") -join "`n" } else { [IO.File]::ReadAllText((Join-Path $raiz $a), $u) }
  foreach ($k in $rx.Keys) { foreach ($m in [regex]::Matches($t, $rx[$k])) { if ($permitidos -contains $m.Value.ToLower()) { continue }; "BLOQUEADO $k em ${a}"; $erros++ } }
  $i = 0; foreach ($v in $vals) { $i++; $n = [regex]::Matches($t, $v, 'IgnoreCase').Count; if ($n) { "BLOQUEADO dado privado (linha $i da lista) em ${a}: $n vez(es)"; $erros++ } }
}
if ($erros) { "Encontrados: $erros. Commit barrado."; exit 1 }
"Sem dado pessoal em $($arqs.Count) arquivos."; exit 0