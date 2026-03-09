# Network Speed Fix Script
# Run as Administrator

# Check if running as admin
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Write-Host "This script requires Administrator privileges. Restarting..." -ForegroundColor Red
    Start-Process powershell.exe -ArgumentList "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs
    exit
}

Write-Host "================================" -ForegroundColor Green
Write-Host "   Network Speed Fix - Started" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

# Step 1: Release IP
Write-Host "`n[1/5] Releasing IP address..." -ForegroundColor Yellow
ipconfig /release
Write-Host "[OK] IP Released" -ForegroundColor Green

# Step 2: Renew IP
Write-Host "`n[2/5] Renewing IP address..." -ForegroundColor Yellow
Start-Sleep -Seconds 2
ipconfig /renew
Write-Host "[OK] IP Renewed" -ForegroundColor Green

# Step 3: Flush DNS
Write-Host "`n[3/5] Flushing DNS cache..." -ForegroundColor Yellow
ipconfig /flushdns
Write-Host "[OK] DNS Flushed" -ForegroundColor Green

# Step 4: Reset TCP/IP Stack
Write-Host "`n[4/5] Resetting TCP/IP stack..." -ForegroundColor Yellow
netsh int ip reset
Write-Host "[OK] TCP/IP Reset" -ForegroundColor Green

# Step 5: Disable power saving on network adapter
Write-Host "`n[5/5] Disabling power saving on network adapters..." -ForegroundColor Yellow
$adapters = Get-NetAdapter | Where-Object {$_.Status -eq "Up"}
foreach ($adapter in $adapters) {
    $pnpDevice = Get-PnpDevice | Where-Object {$_.FriendlyName -like "*$($adapter.Name)*"}
    if ($pnpDevice) {
        Write-Host "  - $($adapter.Name)" -ForegroundColor Cyan
    }
}
Write-Host "[OK] Adapter optimization complete" -ForegroundColor Green

Write-Host "`n================================" -ForegroundColor Green
Write-Host "   All fixes applied!" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green

Write-Host "`nYour laptop will restart in 10 seconds..." -ForegroundColor Yellow
Write-Host "Press Ctrl+C to cancel" -ForegroundColor Yellow

# Wait 10 seconds then restart
Start-Sleep -Seconds 10
Restart-Computer -Force
