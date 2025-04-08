$domain = "lab.local"
$password = "{{password}}" | ConvertTo-SecureString -asPlainText -Force
$username = "$domain\administrator"
$strOU = "OU=GoldenImages,OU=VDI,DC=lab,DC=local"
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -OUPath $strOU -Credential $credential -Restart -force