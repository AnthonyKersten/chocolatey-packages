﻿$ErrorActionPreference = 'Stop';
$toolsDir     = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url          = 'https://cdn.iobit.com/dl/driver_booster_setup.exe'
$checksum     = '5862108F8E4DEDE469491AC05B1C5B217E8E05C11A8B89B1927CD43A42A07DB5'

$checksumType = 'sha256'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'Driver Booster*'
  fileType      = 'exe'
  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0,3010)
  url           = $url
  checksum      = $checksum
  checksumType  = $checksumType
  destination   = $toolsDir
}

Install-ChocolateyPackage @packageArgs
