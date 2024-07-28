$version = 25.6
[string]$sapCode = 'PHSP'
$hostname = HOSTNAME.EXE
$registryKey = (Get-ItemProperty -Path "HKLM:\SOFTWARE\WOW6432Node\Microsoft\Windows\CurrentVersion\Uninstall\$sapCode*")
if ($registryKey.DisplayVersion -lt $version) {
    exit 0
} elseif ($hostname -like "rr*ip01") {
    Write-Output "Detected for Named User License"
} else {
    Write-Output "Detected for Shared Device License"
}