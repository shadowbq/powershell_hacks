# powershell_hacks
My hacks on making powershell based exe

References from PowerSploit

## usage

https://github.com/metalx1000/Powershell-to-EXE/blob/master/shell_scripts/powershell_remote.sh

https://github.com/mattifestation/PowerSploit/blob/master/ScriptModification/

## Out-CompressedDll

Compresses, Base-64 encodes, and outputs generated code to load a managed dll in memory.

## Out-EncodedCommand

Compresses, Base-64 encodes, and generates command-line output for a PowerShell payload script.

## Out-EncryptedScript

will encrypt a script (or any text file for that
matter) and output the results to a minimally obfuscated script -
evil.ps1 by default.

## Remove-Comments

Remove-Comments strips out comments and unnecessary whitespace from a script. This is best used in conjunction with Out-EncodedCommand when the size of the script to be encoded might be too big. A major portion of this code was taken from the Lee Holmes' Show-ColorizedContent script. You rock, Lee!

