$Path = ".\Bin\EWBF-Windows-EWBFDevices3-Algo\miner.exe"
$Uri = "https://github.com/MaynardMiner/MM.Compiled-Miners/releases/download/v2.0/EWBF-Windows.zip"
$Build = "Zip"

if($EWBFDevices3 -ne ''){$Devices = $EWBFDevices3}
if($GPUDevices3 -ne '')
 {
  $GPUEDevices3 = $GPUDevices3 -replace ',',' '
  $Devices = $GPUEDevices3
 }

#Equihash192

$Commands = [PSCustomObject]@{
  "Equihash192" = '--algo 192_7 --pers ZERO_PoW' #Equihash192
  "Equihash144xsg" =  '--algo 144_5 --pers sngemPoW'
  "Equihash144btcz" = '--algo 144_5 --pers BitcoinZ'
  "Equihash144zel" = '--algo 144_5 --pers ZelProof'
  "Equihash-BTG" = '--algo 144_5 --pers BgoldPoW'
  "Equihash144safe" = '--algo 144_5 --pers Safecoin'
  }

$Name = (Get-Item $script:MyInvocation.MyCommand.Path).BaseName

$Commands | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name | ForEach-Object {
  if($Algorithm -eq "$($Pools.(Get-Algorithm($_)).Algorithm)")
  {
    [PSCustomObject]@{
	    MinerName = "miner"
        Type = "NVIDIA3"
        Path = $Path
	      Distro =  $Distro
        Devices = $Devices
        DeviceCalle = "ewbf"
        Arguments = "--api 0.0.0.0:42003 --server $($Pools.(Get-Algorithm($_)).Host) --port $($Pools.(Get-Algorithm($_)).Port) --user $($Pools.(Get-Algorithm($_)).User3) --pass $($Pools.(Get-Algorithm($_)).Pass3) $($Commands.$_)"
        HashRates = [PSCustomObject]@{(Get-Algorithm($_)) = $Stats."$($Name)_$(Get-Algorithm($_))_HashRate".Day}
        Selected = [PSCustomObject]@{(Get-Algorithm($_)) = ""}
              	MinerPool = "$($Pools.(Get-Algorithm($_)).Name)"
        API = "EWBF"
        Port = 42003
        Wrap = $false
        URI = $Uri
        BUILD = $Build
      }
    }
  }

