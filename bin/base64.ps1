# Base64 Encoder
$sc = Get-Content ./foo2.ps1
$bytes = [System.Text.Encoding]::Unicode.GetBytes($sc)
$enco = [Convert]::ToBase64String($bytes)
$enco| out-file "msg.b64"