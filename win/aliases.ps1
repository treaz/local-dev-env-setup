# Powershell profiles are generated like this
# In <userhome>\Documents\WindowsPowerShell you'll find the profile file

function Remove-AllContainers {  
    docker ps -aq | foreach {docker rm $_ -f}
}
 
 
function Remove-AllImages{  
    docker images -aq | foreach {docker rmi $_ -f}
}
 
function AWS-ECR-Login{
    aws ecr get-login-password | docker login --username AWS --password-stdin <ecr_account>
}

# Source: https://adamtheautomator.com/sysinternals-handle/
function Find-LockedFileProcess {
    param(
        [Parameter(Mandatory)]
        [string]$FileName,

        [Parameter()]
        [string]$HandleFilePath = 'C:\Users\hconstantin\dev\SysinternalsSuite\handle64.exe'
    )

    $splitter = '------------------------------------------------------------------------------'
    $handleProcess = ((& $HandleFilePath) -join "`n") -split $splitter | Where-Object {$_ -match [regex]::Escape($FileName) }
    (($handleProcess -split "`n")[2] -split ' ')[0]
}
 
Set-Alias drmf Remove-AllContainers
Set-Alias drmif Remove-AllImages
Set-Alias awslogin AWS-ECR-Login
