$Path = ".\Bin\TRex-Linux-CCDevices2\t-rex-NVIDIA2"
$Uri = "https://github.com/MaynardMiner/MM.Compiled-Miners/releases/download/v1.0/t-rex-Linux.zip"
$Build = "Zip"

if($RexDevices2 -ne ''){$Devices = $RexDevices2}
if($GPUDevices2 -ne ''){$Devices = $GPUDevices2}

$Name = (Get-Item $script:MyInvocation.MyCommand.Path).BaseName

$Commands = [PSCustomObject]@{
"tribus" = ''
"phi" = ''
"c11" = ''
"hsr" = ''
}


if($CoinAlgo -eq $null)
{
$Commands | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name | ForEach-Object {
 if($Algorithm -eq "$($AlgoPools.(Get-Algorithm($_)).Algorithm)")
  {
        [PSCustomObject]@{
        Symbol = "$(Get-Algorithm($_))"
        MinerName = "t-rex-NVIDIA2"
	Type = "NVIDIA2"
        Path = $Path
        Devices = $Devices
        DeviceCall = "trex"
        Arguments = "-a $_ -o stratum+tcp://$($AlgoPools.(Get-Algorithm($_)).Host):$($AlgoPools.(Get-Algorithm($_)).Port) -b 0.0.0.0:4069 -u $($AlgoPools.(Get-Algorithm($_)).User2) -p $($AlgoPools.(Get-Algorithm($_)).Pass2) $($Commands.$_)"
        HashRates = [PSCustomObject]@{(Get-Algorithm($_)) = $Stats."$($Name)_$(Get-Algorithm($_))_HashRate".Day}
	Selected = [PSCustomObject]@{(Get-Algorithm($_)) = ""}
        MinerPool = "$($AlgoPools.(Get-Algorithm($_)).Name)"
        FullName = "$($AlgoPools.(Get-Algorithm($_)).Mining)"
	Port = 4069
        API = "Logs"
        Wrap = $false
        URI = $Uri
        BUILD = $Build
        Algo = "$($_)"
        NewAlgo = ''
        }
      }
    }
 }
    else{
        $CoinPools | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name |
        Where {$($Commands.$($CoinPools.$_.Algorithm)) -NE $null} |
        foreach {
        [PSCustomObject]@{   
         Symbol = "$($CoinPools.$_.Symbol)"
         MinerName = "t-rex-NVIDIA2"
         Type = "NVIDIA2"
         Path = $Path
         Devices = $Devices
         DeviceCall = "trex"
         Arguments = "-a $($CoinPools.$_.Algorithm) -o stratum+tcp://$($CoinPools.$_.Host):$($CoinPools.$_.Port) -b 0.0.0.0:4069 -u $($CoinPools.$_.User2) -p $($CoinPools.$_.Pass2) $($Commands.$($CoinPools.$_.Algorithm))"
         HashRates = [PSCustomObject]@{$CoinPools.$_.Symbol= $Stats."$($Name)_$($CoinPools.$_.Algorithm)_HashRate".Day}
         API = "Logs"
         Selected = [PSCustomObject]@{$($CoinPools.$_.Algorithm) = ""}
         FullName = "$($CoinPools.$_.Mining)"
	 MinerPool = "$($CoinPools.$_.Name)"
         Port = 4069
         Wrap = $false
         URI = $Uri
         BUILD = $Build
	 Algo = "$($CoinPools.$_.Algorithm)"
         }
        }
       }