
$TARGETDIR = '.paket'

if(!(Test-Path -Path '.paket' )){
    New-Item -ItemType directory -Path '.paket'
}

if(!(Test-Path -Path '.paket\paket.bootstrapper.exe')){
    Invoke-WebRequest https://github.com/fsprojects/Paket/releases/download/5.133.0/paket.bootstrapper.exe -OutFile '.paket\paket.bootstrapper.exe'
}
