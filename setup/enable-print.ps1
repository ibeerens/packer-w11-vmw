<#
Author: Ivo Beerens
Date: 16-05-2022
Version: 0.1
Changelog:
    0.1 Initial creation
#>

$log = "c:\TMP\shutdown.log"
Start-Transcript $log


Function test-reg {
    [CmdletBinding()]
    param(
        [string]$regkey,
        [string]$regname
    )
try {
    Get-ItemPropertyValue -Path $regkey -Name $regname -ErrorAction:SilentlyContinue
} catch {
    Write-Host "The following regkey: $regkey\$regname is not found" -ForegroundColor Red
} finally {
    }
}

Function set-reg {
    [CmdletBinding()]
    param(
        [string]$regkey,
        [string]$regname,
		[string]$regvalue,
		[string]$regtype
    )
try {
	Set-ItemProperty -Path $regkey -Name $regname -Value $regvalue -Type $regtype -Force
	
} catch {
    Write-Host "The following regkey: $regkey\$regname is not found" -ForegroundColor Red
} finally {
    }
}

# Set print
#    Write-Host "---------------------------------------------------------------"
#    Write-Host "FXLogix / Ivanti Workspace does not load fix" -ForegroundColor Green
$regkey = "HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Printers\PointAndPrint"
$regname = "Restricted"
$regtype  = 'DWORD'
$regvalue = '1'

New-Item -Path $regkey -Force 
$output = set-reg $regkey $regname $regvalue $regtype
Write-Host "Current value is:" $output -ForegroundColor Yellow
test-reg $regkey $regname

	
 #   $regkey = "HKLM:\System\CurrentControlSet\Services\RESWAS"
 #   $regname = "Start"
 #   $regvalue = '4'
 #   $regtype  = 'DWORD'
 #   Set-ItemProperty -Path $regkey -Name $regname -Value $regvalue -Type $regtype -Force


