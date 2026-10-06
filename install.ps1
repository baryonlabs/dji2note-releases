<#
DJI2Note 한 줄 설치 (Windows 10/11, 관리자 권한 불필요)

  irm https://baryonlabs.github.io/dji2note-releases/install.ps1 | iex

최신 DJI2NoteSetup.exe 를 GitHub Releases에서 받아 조용히 설치한다.
PowerShell로 받은 파일에는 '인터넷에서 받은 파일' 표시(MOTW)가 붙지 않아 SmartScreen 경고 없이 설치된다.
설치 위치: %LOCALAPPDATA%\Baryon.DJI2Note (엔진은 %LOCALAPPDATA%\DJI2Note)  ·  시작 메뉴와 바탕 화면에 바로 가기가 생긴다.
#>
$ErrorActionPreference = "Stop"
$ProgressPreference = "SilentlyContinue"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

$url = "https://github.com/baryonlabs/dji2note-releases/releases/latest/download/DJI2NoteSetup.exe"
$dir = Join-Path $env:TEMP ("dji2note-setup-" + [Guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Force -Path $dir | Out-Null
$setup = Join-Path $dir "DJI2NoteSetup.exe"

if ([Environment]::Is64BitOperatingSystem -eq $false) {
    Write-Host "DJI2Note은 64비트(x64) Windows가 필요합니다." -ForegroundColor Red
    return
}

Write-Host "DJI2Note 내려받는 중… / Downloading DJI2Note…"
Invoke-WebRequest -Uri $url -OutFile $setup -UseBasicParsing

Write-Host "설치 중… / Installing…"
$p = Start-Process -FilePath $setup -ArgumentList "--silent" -PassThru -Wait
Remove-Item -Recurse -Force $dir -ErrorAction SilentlyContinue

$exe = Join-Path $env:LOCALAPPDATA "Baryon.DJI2Note\current\DJI2Note.exe"
if ($p.ExitCode -eq 0 -and (Test-Path $exe)) {
    Write-Host "✅ 설치 완료 — 시작 메뉴에서 DJI2Note를 실행하세요. / Installed — launch DJI2Note from the Start menu." -ForegroundColor Green
    Start-Process -FilePath $exe
} else {
    Write-Host "설치하지 못했습니다 (코드 $($p.ExitCode)). https://baryonlabs.github.io/dji2note-releases/ 에서 직접 받아 주세요." -ForegroundColor Red
}
