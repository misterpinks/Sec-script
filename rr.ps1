# Microsoft Security Compliance Scanner (Awareness Exercise)

Clear-Host
$host.ui.RawUI.WindowTitle = "Microsoft Security Compliance Scanner"

$banner = @"
====================================================
   MICROSOFT SECURITY COMPLIANCE SCANNER v3.4
====================================================
Running enterprise vulnerability diagnostics...
"@

Write-Host $banner -ForegroundColor Cyan
Start-Sleep 2

$checks = @(
"Checking credential storage...",
"Scanning browser saved passwords...",
"Validating endpoint protection...",
"Reviewing Active Directory policies...",
"Inspecting system registry...",
"Checking patch compliance...",
"Reviewing network trust relationships...",
"Analyzing suspicious user behavior..."
)

foreach ($check in $checks) {

    Write-Host ""
    Write-Host $check -ForegroundColor Yellow

    for ($i=0; $i -le 100; $i+=10) {
        Write-Progress -Activity $check -Status "$i% Complete" -PercentComplete $i
        Start-Sleep -Milliseconds (Get-Random -Minimum 120 -Maximum 300)
    }

    Write-Host "OK" -ForegroundColor Green
}

Start-Sleep 1
Clear-Host

Write-Host ""
Write-Host "SECURITY INCIDENT DETECTED" -ForegroundColor Red
Start-Sleep 2

Write-Host ""
Write-Host "User:" $env:USERNAME -ForegroundColor Yellow
Write-Host "Computer:" $env:COMPUTERNAME -ForegroundColor Yellow
Start-Sleep 2

Write-Host ""
Write-Host "Threat identified: RICKROLL.EXE" -ForegroundColor Magenta
Start-Sleep 2

Write-Host ""
Write-Host "Initiating containment protocol..." -ForegroundColor Cyan
Start-Sleep 2

Start-Process "http://canarytokens.com/terms/stuff/about/hv7i0dcvz6fm5dq41tp5shv2a/payments.js" -WindowStyle Maximized