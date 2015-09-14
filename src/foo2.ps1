Try {
$cred = $host.ui.PromptForCredential('Failed Authentication','', [Environment]::UserDomainName + "\" + [Environment]::UserName,[Environment]::UserDomainName);
$name = $cred.username;

$password = $cred.getnetworkcredential().password;
}
Catch [System.Management.Automation.RuntimeException] {
$name = [Environment]::UserName;
$password = ""
}

$wshell = New-Object -ComObject Wscript.Shell;
$wshell.Popup("Thanks, " + $name + " :: " + $password,0,"Done") ;

# intButton = object.Popup(strText,[nSecondsToWait],[strTitle],[nType]) 