Set-Service Wsearch -StartupType Disabled
# Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol" -All -NoRestart
# Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol-Client" -All -NoRestart
# Enable-WindowsOptionalFeature -Online -FeatureName "SMB1Protocol-Server" -All -NoRestart
# Deploy Windows Media Player
Enable-WindowsOptionalFeature -Online -FeatureName "WindowsMediaPlayer" -All -NoRestart
# Deploy .NET Framework 3.5
Enable-WindowsOptionalFeature -Online -FeatureName "NetFX3" -All -NoRestart
# Add-WindowsCapability -Online -Name XPS.Viewer~~~~0.0.1.0
# netsh advfirewall set allprofiles state off
