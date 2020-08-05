$sysPrepPath = 'C:\Windows\System32\Sysprep\Sysprep.exe'
$arguments = '/generalize /oobe /shutdown /quiet'
Invoke-Command -ScriptBlock {param($sysPrepPath,$arguments) Start-Process -FilePath $sysPrepPath -ArgumentList $arguments} -ArgumentList $sysPrepPath,$arguments