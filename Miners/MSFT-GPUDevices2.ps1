$Path = '.\Bin\MSFTserver\2'
$Uri = 'https://github.com/MSFTserver/ccminer.git'
$Build = "CCMiner"

[string]$Devices = $GPUDevices2

$Name = (Get-Item $script:MyInvocation.MyCommand.Path).BaseName

$Algorithms = [PSCustomObject]@{
    Lyra2z = 'lyra2z'
    #Equihash = 'equihash' #not supported
    Cryptonight = 'cryptonight'
    #Ethash = 'ethash' #not supported
    #Sia = 'sia'
    #Yescrypt = 'yescrypt'
    #BlakeVanilla = 'vanilla'
    #Lyra2RE2 = 'lyra2v2'
    #Skein = 'skein'
    #Qubit = 'qubit'
    #NeoScrypt = 'neoscrypt'
    #X11 = 'x11'
    #MyriadGroestl = 'myr-gr'
    #Groestl = 'groestl'
    #Keccak = 'keccak'
    #Scrypt = 'scrypt'
    Bitcore = 'bitcore'
    #Blake2s = 'blake2s'
    #Sib = 'sib'
    #X17 = 'x17'
    #Quark = 'quark'
    Hmq1725 = 'hmq1725'
    #Veltor = 'veltor'
    #X11evo = 'x11evo'
    Timetravel = 'timetravel'
    #Blakecoin = 'blakecoin'
    #Lbry = 'lbry'
    Jha = 'jha'
    #Skunk = 'skunk'
    #Tribus = 'tribus'
    #Phi = 'phi'
    #Hsr = 'hsr'
    #Polytimos = 'polytimos'
    Decred = 'decred'
    #X16r = 'x16r'
}

$Optimizations = [PSCustomObject]@{
    Lyra2z = [string]"-d $Devices"
    Equihash = ''
    Cryptonight = [string]"-i 10 -d $Devices"
    Ethash = ''
    Sia = ''
    Yescrypt = ''
    BlakeVanilla = ''
    Lyra2RE2 = ''
    Skein = ''
    Qubit = ''
    NeoScrypt = ''
    X11 = ''
    MyriadGroestl = ''
    Groestl = ''
    Keccak = ''
    Scrypt = ''
    Bitcore = ''
    Blake2s = ''
    Sib = ''
    X17 = ''
    Quark = ''
    Hmq1725 = [string]"-d $Devices"
    Veltor = ''
    X11evo = ''
    Timetravel = [string]"-d $Devices"
    Blakecoin = ''
    Lbry = ''
    Jha = [string]"-d $Devices"
    Skunk = ''
    Tribus = ''
    Phi = [string]"-i 23 -d $Devices"
    Hsr = ''
    Polytimos = ''
    Decred = [string]"-d $Devices"
    X16r = ''    
}

$Algorithms | Get-Member -MemberType NoteProperty | Select-Object -ExpandProperty Name | ForEach-Object {
    [PSCustomObject]@{
        MinerName = "ccminer"
        Type = "NVIDIA2"
        Path = $Path
        Arguments = "-a $_ -o stratum+tcp://$($Pools.(Get-Algorithm($_)).Host):$($Pools.(Get-Algorithm($_)).Port) -b 0.0.0.0:4070 -u $($Pools.(Get-Algorithm($_)).User2) -p $($Pools.(Get-Algorithm($_)).Pass2) $($Optimizations.$_)"
        HashRates = [PSCustomObject]@{(Get-Algorithm($_)) = $Stats."$($Name)_$(Get-Algorithm($_))_HashRate".Day}
        API = "Ccminer"
        Port = 4070
        Wrap = $false
        URI = $Uri
	BUILD = $Build
     }
}
                     
