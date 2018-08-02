$Path = ".\Bin\EWBF-Linux-EWBFDevices3\miner-NVIDIA3"
$Uri = "https://github.com/MaynardMiner/MM.Compiled-Miners/releases/download/v1.0/EWBF-Linux.zip"
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
      Symbol = (Get-Algorithm($_))
	    MinerName = "miner-NVIDIA3"
        Type = "NVIDIA3"
        Path = $Path
	      Distro =  $Distro
        Devices = $Devices
        DeviceCalle = "ewbf"
        Arguments = "--api 0.0.0.0:42002 --server $($Pools.$_.Host) --port $($Pools.$_.Port) --user $($Pools.$_.User3) --pass $($Pools.$_.Pass3) $($Commands.$_)"
        HashRates = [PSCustomObject]@{$_ = $Stats."$($Name)_$($_)_HashRate".Day}
        Selected = [PSCustomObject]@{$($Pools.$_.Algorithm) = ""}
	MinerPool = "$($Pools.(Get-Algorithm($_)).Name)"
        API = "EWBF"
        Port = 42002
        Wrap = $false
        URI = $Uri
        BUILD = $Build
      }
    }
  }

  
