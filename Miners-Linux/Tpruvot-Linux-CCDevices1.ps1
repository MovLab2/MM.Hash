$Path = ".\Bin\tpruvot-Linux-CCDevices1\ccminer-NVIDIA1"
$Uri = "https://github.com/MaynardMiner/MM.Compiled-Miners/releases/download/v1.0/tpruvot-9-1.zip"
$Build = "Zip"

if($CCDevices1 -ne ''){$Devices = $CCDevices1}
if($GPUDevices1 -ne ''){$Devices = $GPUDevices1}

$Name = (Get-Item $script:MyInvocation.MyCommand.Path).BaseName

#Algorithms
#Lyra2v2 
#Keccak
#Skunk
#Tribus
#Phi
#Keccakc
#Quark (Not Used)
#X12
#Phi
#Sib

$Commands = [PSCustomObject]@{
"qubit" = ''
"keccak" = ''
"blakecoin" = ''
"skunk" = ''
"keccakc" = ''
"x12" = ''
"sib" = ''
}


if($CoinAlgo -eq $null)
{
$Commands | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name | ForEach-Object {
 if($Algorithm -eq "$($AlgoPools.(Get-Algorithm($_)).Algorithm)")
  {
    [PSCustomObject]@{
    Symbol = "$(Get-Algorithm($_))"
    MinerName = "ccminer-NVIDIA1"
    Type = "NVIDIA1"
    Path = $Path
    Devices = $Devices
    DeviceCall = "ccminer"
    Arguments = "-a $_ -o stratum+tcp://$($AlgoPools.(Get-Algorithm($_)).Host):$($AlgoPools.(Get-Algorithm($_)).Port) -b 0.0.0.0:4068 -u $($AlgoPools.(Get-Algorithm($_)).User1) -p $($AlgoPools.(Get-Algorithm($_)).Pass1) $($Commands.$_)"
    HashRates = [PSCustomObject]@{(Get-Algorithm($_)) = $Stats."$($Name)_$(Get-Algorithm($_))_HashRate".Day}
    Selected = [PSCustomObject]@{(Get-Algorithm($_)) = ""}
  MinerPool = "$($AlgoPools.(Get-Algorithm($_)).Name)"
  FullName = "$($AlgoPools.(Get-Algorithm($_)).Mining)"
    Port = 4068
    API = "Ccminer"
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
   MinerName = "ccminer-NVIDIA1"
   Type = "NVIDIA1"
   Path = $Path
   Devices = $Devices
   DeviceCall = "ccminer"
   Arguments = "-a $($CoinPools.$_.Algorithm) -o stratum+tcp://$($CoinPools.$_.Host):$($CoinPools.$_.Port) -b 0.0.0.0:4068 -u $($CoinPools.$_.User1) -p $($CoinPools.$_.Pass1) $($CoinPools.$Commands.$($CoinPools.$_.Algorithm))"
   HashRates = [PSCustomObject]@{$CoinPools.$_.Symbol= $Stats."$($Name)_$($CoinPools.$_.Algorithm)_HashRate".Day}
   API = "Ccminer"
   Selected = [PSCustomObject]@{$CoinPools.$_.Algorithm = ""}
   FullName = "$($CoinPools.$_.Mining)"
	 MinerPool = "$($CoinPools.$_.Name)"
   Port = 4068
   Wrap = $false
   URI = $Uri
   BUILD = $Build
	 Algo = "$($CoinPools.$_.Algorithm)"
   }
  }
 }