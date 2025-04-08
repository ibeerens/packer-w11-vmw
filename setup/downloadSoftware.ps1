[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

# Ivanti AM client
# $url = "http://10.21.0.203:8081/Ivanti Automation Agent+(x64) 10.6.100.0.msi"
# $output = "c:\install\Ivanti Automation Agent+(x64) 10.6.100.0.msi"
# $ProgressPreference = 'SilentlyContinue'
# Invoke-WebRequest -Uri $url -UseBasicParsing -OutFile $output

# Ivanti AM client
$url = "http://10.21.0.203:8081/ivanti/Ivanti Automation Agent+(x64) 10.17.0.0.msi"
$output = "c:\install\Ivanti Automation Agent+(x64) 10.17.0.0.msi"
$ProgressPreference = 'SilentlyContinue'
Invoke-WebRequest -Uri $url -UseBasicParsing -OutFile $output
