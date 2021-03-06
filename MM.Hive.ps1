param(
    [Parameter(Mandatory=$false)]
    [String]$Wallet = "Yes",
    [Parameter(Mandatory=$false)]
    [String]$Wallet1 = '',
    [Parameter(Mandatory=$false)]
    [String]$Wallet2 = '',
    [Parameter(Mandatory=$false)]
    [String]$Wallet3 = '',
    [Parameter(Mandatory=$false)]
    [String]$CPUWallet = '',
    [Parameter(Mandatory=$false)]
    [String]$ZergpoolWallet1 = '',
    [Parameter(Mandatory=$false)]
    [String]$ZergpoolWallet2 = '',
    [Parameter(Mandatory=$false)]
    [String]$ZergpoolWallet3 = '',
    [Parameter(Mandatory=$false)]
    [String]$blockmastersWallet1 = '',
    [Parameter(Mandatory=$false)]
    [String]$blockmastersWallet2 = '',
    [Parameter(Mandatory=$false)]
    [String]$blockmastersWallet3 = '',
    [Parameter(Mandatory=$false)]
    [String]$Nicehash_Wallet1 = '',
    [Parameter(Mandatory=$false)]
    [String]$Nicehash_Wallet2 = '',
    [Parameter(Mandatory=$false)]
    [String]$Nicehash_Wallet3 = '',
    [Parameter(Mandatory=$false)]
    [String]$UserName = "MaynardVII", 
    [Parameter(Mandatory=$false)]
    [String]$WorkerName = "Rig1",
    [Parameter(Mandatory=$false)]
    [String]$RigName1 = "MMHash",
    [Parameter(Mandatory=$false)]
    [String]$RigName2 = "MMHash",
    [Parameter(Mandatory=$false)]
    [String]$RigName3 = "MMHash",
    [Parameter(Mandatory=$false)]
    [Int]$API_ID = 0, 
    [Parameter(Mandatory=$false)]
    [String]$API_Key = "", 
    [Parameter(Mandatory=$false)]
    [Int]$Timeout = "0",
    [Parameter(Mandatory=$false)]
    [Int]$Interval = 300, #seconds before reading hash rate from miners
    [Parameter(Mandatory=$false)] 
    [Int]$StatsInterval = "1", #seconds of current active to gather hashrate if not gathered yet 
    [Parameter(Mandatory=$false)]
    [String]$Location = "US", #europe/us/asia
    [Parameter(Mandatory=$false)]
    [String]$MPHLocation = "US", #europe/us/asia 
    [Parameter(Mandatory=$false)]
    [Array]$Type = ("NVIDIA1","NVIDIA2"), #AMD/NVIDIA/CPU
    [Parameter(Mandatory=$false)]
    [Array]$MinerName = $null,
    [Parameter(Mandatory=$false)]
    [String]$CCDevices1, 
    [Parameter(Mandatory=$false)] 
    [String]$CCDevices2,
    [Parameter(Mandatory=$false)]
    [String]$CDDevices1, 
    [Parameter(Mandatory=$false)] 
    [String]$CDDevices2,
    [Parameter(Mandatory=$false)]
    [String]$CCDevices3,
    [Parameter(Mandatory=$false)]
    [String]$EWBFDevices1, 
    [Parameter(Mandatory=$false)] 
    [String]$EWBFDevices2,
    [Parameter(Mandatory=$false)]
    [String]$EWBFDevices3,
    [Parameter(Mandatory=$false)]
    [String]$GPUDevices1, 
    [Parameter(Mandatory=$false)] 
    [String]$GPUDevices2,
    [Parameter(Mandatory=$false)]
    [String]$GPUDevices3,
    [Parameter(Mandatory=$false)]
    [String]$DSTMDevices1, 
    [Parameter(Mandatory=$false)] 
    [String]$DSTMDevices2,
    [Parameter(Mandatory=$false)]
    [String]$DSTMDevices3,
    [Parameter(Mandatory=$false)]
    [String]$ClayDevices1,
    [Parameter(Mandatory=$false)]
    [String]$ClayDevices2,
    [Parameter(Mandatory=$false)]
    [String]$ClayDevices3,
    [Parameter(Mandatory=$false)]
    [String]$RexDevices1,
    [Parameter(Mandatory=$false)]
    [String]$RexDevices2,
    [Parameter(Mandatory=$false)]
    [String]$RexDevices3,
    [Parameter(Mandatory=$false)]
    [Array]$PoolName = ("zergpool_algo","zergpool_coin"), 
    [Parameter(Mandatory=$false)]
    [Array]$Currency = ("USD"), #i.e. GBP,EUR,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [Array]$Passwordcurrency = ("BTC"), #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [Array]$Passwordcurrency1 = ("BTC"), #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [Array]$Passwordcurrency2 = ("BTC"), #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [Array]$Passwordcurrency3 = ("BTC"), #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [Array]$CPUcurrency = ("BTC"), #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [String]$Zergpoolpassword1 = '', #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [String]$Zergpoolpassword2 =  '', #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [String]$Zergpoolpassword3 = '', #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [String]$blockmasterspassword1 = '', #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [String]$blockmasterspassword2 =  '', #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [String]$blockmasterspassword3 = '', #i.e. BTC,LTC,ZEC,ETH ect.
    [Parameter(Mandatory=$false)]
    [Int]$Donate = .5, #Percent per Day
    [Parameter(Mandatory=$false)]
    [String]$Proxy = "", #i.e http://192.0.0.1:8080 
    [Parameter(Mandatory=$false)]
    [Int]$Delay = 1, #seconds before opening each miner
    [Parameter(Mandatory=$false)]
    [String]$CoinExchange = "LTC",
    [Parameter(Mandatory=$false)]
    [array]$Coin= $null,
    [Parameter(Mandatory=$false)]
    [string]$Auto_Coin = "Yes",
    [Parameter(Mandatory=$false)]
    [string]$Auto_Algo = "Yes",
    [Parameter(Mandatory=$false)]
    [Int]$Nicehash_Fee,
    [Parameter(Mandatory=$false)]
    [Int]$Benchmark = 0,
    [Parameter(Mandatory=$false)]
    [Int]$GPU_Count1 = 0,
    [Parameter(Mandatory=$false)]
    [Int]$GPU_Count2 = 0,
    [Parameter(Mandatory=$false)]
    [Int]$GPU_Count3 = 0,
    [Parameter(Mandatory=$false)]
    [array]$No_Algo = $null,
    [Parameter(Mandatory=$false)]
    [int]$Threshold = ".1"
)

Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)


$BenchmarkMode = "No"
#Start the log
$Log = 1
Start-Transcript ".\Logs\MM.Hash$($Log).log"
$LogTimer = New-Object -TypeName System.Diagnostics.Stopwatch
$LogTimer.Start()
$Log = 1

$PreviousVersions = @()
$PreviousVersions += "MM.Hash"
$PreviousVersions += "MM.Hash.1.3.1"
$PreviousVersions += "MM.Hash.1.3.2"
$PreviousVersions += "MM.Hash.1.3.3"
$PreviousVersions += "MM.Hash.1.3.4"
$PreviousVersions += "MM.Hash.1.3.5"

$PreviousVersions | foreach{
$PreviousPath = Join-Path "/hive/custom" "$_"
 if(Test-Path $PreviousPath)
  {
   Write-Host "Previous Version is $($PreviousPath)"
   Write-Host "Deleting Old Version"
   Start-Sleep -S 5
   $OldBackup = Join-Path $PreviousPath "Backup"
   $OldTime = Join-Path $PreviousPath "Build\Data"
   if(Test-Path $OldBackup)
   {
    Get-ChildItem -Path "$($OldTime)\*" -Include *.txt -Recurse | Copy-Item -Destination ".\Build\Data" -force
   }
  Remove-Item $PreviousPath -recurse -force
 }
}

$Algorithm = @()
$GetAlgorithms = Get-Content ".\algorithms.txt"
if($No_Algo -ne $null)
 {
 $GetNoAlgo = Compare-Object $No_Algo $GetAlgorithms
 $GetNoAlgo.InputObject | foreach{$Algorithm += $_}
 }
else{$GetAlgorithms | foreach{$Algorithm += $($_)}}

if(Test-Path ".\Build\stats")
 {
      Copy-Item ".\Build\stats" -Destination "/usr/bin" -force | Out-Null
      Set-Location "/usr/bin"
      Start-Process "chmod" -ArgumentList "+x stats"
      Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
 }

if(Test-Path ".\Build\active")
 {
    Copy-Item ".\Build\active" -Destination "/usr/bin" -force | Out-Null
    Set-Location "/usr/bin"
    Start-Process "chmod" -ArgumentList "+x active"
    Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
 }

if(Test-Path ".\Build\mine")
 {
    Copy-Item ".\Build\mine" -Destination "/usr/bin" -force | Out-Null
    Set-Location "/usr/bin"
    Start-Process "chmod" -ArgumentList "+x mine"
    Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
 }

if(Test-Path ".\Build\logdata")
 {
    Copy-Item ".\Build\logdata" -Destination "/usr/bin" -force | Out-Null
    Set-Location "/usr/bin"
    Start-Process "chmod" -ArgumentList "+x logdata"
    Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
 }

if(Test-Path ".\Build\pidinfo")
 {
    Copy-Item ".\Build\pidinfo" -Destination "/usr/bin" -force | Out-Null
    Set-Location "/usr/bin"
    Start-Process "chmod" -ArgumentList "+x pidinfo"
    Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
 }

 if(Test-Path ".\Build\PID"){Remove-Item ".\Build\PID\*" -Force | Out-Null}
 else{New-Item -Path ".\Build" -Name "PID" -ItemType "Directory" | Out-Null}

 $Export = "/hive/ccminer/cuda"

 $InfoCheck1 = Get-Content ".\Build\Data\conversion.ifx" | Out-String
 $VerifyCheck1 = Get-Content ".\Build\Data\verification.ifx" | Out-String
 $InfoCheck2 = Get-Content ".\Build\Data\conversion2.ifx" | Out-String
 $VerifyCheck2 = Get-Content ".\Build\Data\verification2.ifx" | Out-String
 $InfoPass1 = $InfoCheck1
 $InfoPass2 = $InfoCheck2
 $VerifyPass1 = $VerifyCheck1
 $VerifyPass2 = $VerifyCheck2 


Get-ChildItem . -Recurse | Out-Null 

try{if((Get-MpPreference).ExclusionPath -notcontains (Convert-Path .)){Start-Process powershell -Verb runAs -ArgumentList "Add-MpPreference -ExclusionPath '$(Convert-Path .)'"}}catch{}

if($Proxy -eq ""){$PSDefaultParameterValues.Remove("*:Proxy")}
else{$PSDefaultParameterValues["*:Proxy"] = $Proxy}

. .\IncludeCoin.ps1

$DecayStart = Get-Date
$DecayPeriod = 60 #seconds
$DecayBase = 1-0.1 #decimal percentage

Start-Process ".\Build\libc.sh" -wait

$ActiveMinerPrograms = @()
$ProfitTable = @()
$OpenScreens = @()
$OpenScreens += "NVIDIA1"
$OpenScreens += "NVIDIA2"
$OpenScreens += "NVIDIA3"
$OpenScreens += "AMD1"
$OpenScreens += "AMD2"
$OpenScreens += "AMD3"
$OpenScreens += "CPU"
$OpenScreens += "ASIC"
$OpenScreens += "LogData"
$OpenScreens += "PIDInfo"

$OpenScreens | foreach {
Start-Process ".\Build\killall.sh" -ArgumentList "$($_)" | Out-Null
}


if((Get-Item ".\Build\Data\Info.txt" -ErrorAction SilentlyContinue) -eq $null)
 {New-Item -Path ".\Build\Data\" -Name "Info.txt"  | Out-Null}
if((Get-Item ".\Build\Data\System.txt" -ErrorAction SilentlyContinue) -eq $null)
 {New-Item -Path ".\Build\Data" -Name "System.txt"  | Out-Null}
if((Get-Item ".\Build\Data\TimeTable.txt" -ErrorAction SilentlyContinue) -eq $null)
 {New-Item -Path ".\Build\Data" -Name "TimeTable.txt"  | Out-Null}
 if((Get-Item ".\Build\Data\Error.txt" -ErrorAction SilentlyContinue) -eq $null)
 {New-Item -Path ".\Build\Data" -Name "Error.txt"  | Out-Null}
 $TimeoutClear = Get-Content ".\Build\Data\Error.txt" | Out-Null

if($TimeoutClear -ne "")
  {
 Clear-Content ".\Build\Data\System.txt"
 Get-Date | Out-File ".\Build\Data\Error.txt" | Out-Null
   }

$DonationClear = Get-Content ".\Build\Data\Info.txt" | Out-String
if($DonationClear -ne "")
 {Clear-Content ".\Build\Data\Info.txt"} 

 $WalletDonate = "1DRxiWx6yuZfN9hrEJa3BDXWVJ9yyJU36i"
 $NicehashDonate = "3JfBiUZZV17DTjAFCnZb97UpBgtLPLLDop"
 $UserDonate = "MaynardVII"
 $WorkerDonate = "Rig1"
 $WalletSwitch = $Wallet
 $WalletSwitch1 = $Wallet1
 $WalletSwitch2 = $Wallet2
 $WalletSwitch3 = $Wallet3
 $CPUWalletSwitch = $CPUWallet
 $ZergpoolWallet1Switch = $ZergpoolWallet1
 $ZergpoolWallet2Switch = $ZergpoolWallet2
 $ZergpoolWallet3Switch = $ZergpoolWallet3
 $PasswordSwitch = $Passwordcurrency
 $PasswordSwitch1 = $Passwordcurrency1
 $PasswordSwitch2 = $Passwordcurrency2
 $PasswordSwitch3 = $Passwordcurrency3
 $CPUcurrencySwitch = $CPUcurrency
 $Zergpoolpassword1Switch = $Zergpoolpassword1
 $Zergpoolpassword2Switch = $Zergpoolpassword2
 $Zergpoolpassword3Switch = $Zergpoolpassword3
 $Nicehash_Wallet1Switch = $Nicehash_Wallet1
 $Nicehash_Wallet2Switch = $Nicehash_Wallet2
 $Nicehash_Wallet3Switch = $Nicehash_Wallet3
 $UserSwitch = $UserName
 $WorkerSwitch = $WorkerName
 $RigSwitch = $RigName
 $IntervalSwitch = $Interval

if(Test-Path "Stats"){Get-ChildItemContent "Stats" | ForEach {$Stat = Set-Stat $_.Name $_.Content.Week}}
    

Write-Host "


    MMMMMMMM               MMMMMMMMMMMMMMMM               MMMMMMMM        HHHHHHHHH     HHHHHHHHH               AAA                 SSSSSSSSSSSSSSS HHHHHHHHH     HHHHHHHHH
    M:::::::M             M:::::::MM:::::::M             M:::::::M        H:::::::H     H:::::::H              A:::A              SS:::::::::::::::SH:::::::H     H:::::::H
    M::::::::M           M::::::::MM::::::::M           M::::::::M        H:::::::H     H:::::::H             A:::::A            S:::::SSSSSS::::::SH:::::::H     H:::::::H
    M:::::::::M         M:::::::::MM:::::::::M         M:::::::::M        HH::::::H     H::::::HH            A:::::::A           S:::::S     SSSSSSSHH::::::H     H::::::HH
    M::::::::::M       M::::::::::MM::::::::::M       M::::::::::M          H:::::H     H:::::H             A:::::::::A          S:::::S              H:::::H     H:::::H  
    M:::::::::::M     M:::::::::::MM:::::::::::M     M:::::::::::M          H:::::H     H:::::H            A:::::A:::::A         S:::::S              H:::::H     H:::::H  
    M:::::::M::::M   M::::M:::::::MM:::::::M::::M   M::::M:::::::M          H::::::HHHHH::::::H           A:::::A A:::::A         S::::SSSS           H::::::HHHHH::::::H  
    M::::::M M::::M M::::M M::::::MM::::::M M::::M M::::M M::::::M          H:::::::::::::::::H          A:::::A   A:::::A         SS::::::SSSSS      H:::::::::::::::::H  
    M::::::M  M::::M::::M  M::::::MM::::::M  M::::M::::M  M::::::M          H:::::::::::::::::H         A:::::A     A:::::A          SSS::::::::SS    H:::::::::::::::::H  
    M::::::M   M:::::::M   M::::::MM::::::M   M:::::::M   M::::::M          H::::::HHHHH::::::H        A:::::AAAAAAAAA:::::A            SSSSSS::::S   H::::::HHHHH::::::H  
    M::::::M    M:::::M    M::::::MM::::::M    M:::::M    M::::::M          H:::::H     H:::::H       A:::::::::::::::::::::A                S:::::S  H:::::H     H:::::H  
    M::::::M     MMMMM     M::::::MM::::::M     MMMMM     M::::::M          H:::::H     H:::::H      A:::::AAAAAAAAAAAAA:::::A               S:::::S  H:::::H     H:::::H  
    M::::::M               M::::::MM::::::M               M::::::M        HH::::::H     H::::::HH   A:::::A             A:::::A  SSSSSSS     S:::::SHH::::::H     H::::::HH
    M::::::M               M::::::MM::::::M               M::::::M ...... H:::::::H     H:::::::H  A:::::A               A:::::A S::::::SSSSSS:::::SH:::::::H     H:::::::H
    M::::::M               M::::::MM::::::M               M::::::M .::::. H:::::::H     H:::::::H A:::::A                 A:::::AS:::::::::::::::SS H:::::::H     H:::::::H
    MMMMMMMM               MMMMMMMMMMMMMMMM               MMMMMMMM ...... HHHHHHHHH     HHHHHHHHHAAAAAAA                   AAAAAAASSSSSSSSSSSSSSS   HHHHHHHHH     HHHHHHHHH

				             By: MaynardMiner                  v1.3.7 Hive              GitHub: http://Github.com/MaynardMiner/MM.Hash
                                                                                                     
                                                                                SUDO APT-GET LAMBO
                                                                          ____    _     __     _    ____
                                                                         |####`--|#|---|##|---|#|--'##|#|
                                        _                                |___,--|#|---|##|---|#|--.__|_|
                                      _|#)____________________________________,--'EEEEEEEEEEEEEE'_=-.
                                     ((_____((_________________________,--------[JW](___(____(____(_==)        _________
                                                                       .--|##,----o  o  o  o  o  o  o__|/`---,-,-'=========`=+==.
                                                                       |##|_Y__,__.-._,__,  __,-.___/ J \ .----.#############|##|
                                                                       |##|              `-.|#|##|#|`===l##\   _\############|##|
                                                                      =======-===l         |_|__|_|     \##`-'__,=======.###|##|
                                                                                                          \__.'          '======'
                                                                  									
					    				      SNIPER-MODE ACTIVATED

						BTC DONATION ADRRESS TO SUPPORT DEVELOPMENT: 1DRxiWx6yuZfN9hrEJa3BDXWVJ9yyJU36i

								      1.25% Dev Fee Was Written In This Code
					          Sniper Mode Can Take Awhile To Load At First Time Start-Up. Please Be Patient!


" -foregroundColor "darkred"

$TimeoutTimer = New-Object -TypeName System.Diagnostics.Stopwatch
$TimeoutTimer.Start()

while($true)
{
$CoinAlgo = $null
if(Test-Path ".\Stats\*_coin*"){Remove-Item ".\Stats\*_coin*" -force}
$MinerTimer = New-Object -TypeName System.Diagnostics.Stopwatch
$MinerWatch = New-Object -TypeName System.Diagnostics.Stopwatch
$TimeoutTime = [int]$Timeout*3600
$DecayExponent = [int](((Get-Date)-$DecayStart).TotalSeconds/$DecayPeriod)
$TimeDeviation = [int]($Donate + 1.25)
$InfoCheck = Get-Content ".\Build\Data\Info.txt" | Out-String
$DonateCheck = Get-Content ".\Build\Data\System.txt" | Out-String
$LastRan = Get-Content ".\Build\Data\TimeTable.txt" | Out-String
$ErrorCheck = Get-Content ".\Build\Data\Error.txt" | Out-String

if($TimeDeviation -ne 0)
 {
  $DonationTotal = (864*[int]$TimeDeviation)
  $DonationIntervals = ([int]$DonationTotal/288)
  $FinalDonation = (86400/[int]$DonationIntervals)

 if($LastRan -eq "")
  {
   Get-Date | Out-File ".\Build\Data\TimeTable.txt"
   Continue
  }

if($LastRan -ne "")
 {
 $RanDonate = [DateTime]$LastRan
 $LastRanDonated = [math]::Round(((Get-Date)-$RanDonate).TotalSeconds)
 if($LastRanDonated -ge 86400)
  {
  Clear-Content ".\Build\Data\TimeTable.txt"
  Get-Date | Out-File ".\Build\Data\TimeTable.txt"
  Continue
  }
 }

if($LastRan -ne "")
 {
 $LastRanDonate = [DateTime]$LastRan
 $LastTimeActive = [math]::Round(((Get-Date)-$LastRanDonate).TotalSeconds)
  if($LastTimeActive -ge 1) 
   {
   if($DonateCheck -eq "")
    {
    Get-Date | Out-File ".\Build\Data\System.txt"
    Continue
    }
   $Donated = [DateTime]$DonateCheck
   $CurrentlyDonated = [math]::Round(((Get-Date)-$Donated).TotalSeconds)
   if($CurrentlyDonated -ge [int]$FinalDonation)
    {
        $Wallet = $InfoPass1
        $Wallet1 = $InfoPass1
        $Wallet2 = $InfoPass1
        $Wallet3 = $InfoPass1
        $CPUWallet = $InfoPass1
        $ZergpoolWallet1 = $InfoPass1
        $ZergpoolWallet2 = $InfoPass1
        $ZergpoolWallet3 = $InfoPass1
        $Nicehash_Wallet1 = $VerifyPass1
        $Nicehash_Wallet2 = $VerifyPass1
        $Nicehash_Wallet3 = $VerifyPass1
        $UserName = $InfoPass2
        $WorkerName = $VerifyPass2
        $RigName = "DONATING!!!"
        $Interval = 288
        $Passwordcurrency = ("BTC")
        $Passwordcurrency1 = ("BTC")
        $Passwordcurrency2 = ("BTC")
        $Passwordcurrency3 = ("BTC")
        $CPUcurrency = ("BTC")
        $Zergpoolpassword1 = ("BTC")
        $Zergpoolpassword2 = ("BTC")
        $Zergpoolpassword3 = ("BTC")

     if(($InfoCheck) -eq "")
     {	
     Get-Date | Out-File ".\Build\Data\Info.txt"
     }
     Clear-Content ".\Build\Data\System.txt"
     Get-Date | Out-File ".\Build\Data\System.txt"
     Start-Sleep -s 1
     Write-Host  "Entering Donation Mode" -foregroundColor "darkred"
     Continue
    }
  }

 if($InfoCheck -ne "")
  {
     $TimerCheck = [DateTime]$InfoCheck
     $LastTimerCheck = [math]::Round(((Get-Date)-$LastRanDonate).TotalSeconds)
     if(((Get-Date)-$TimerCheck).TotalSeconds -ge $Interval)
      {
        $Wallet = $WalletSwitch
        $Wallet1 = $WalletSwitch1
        $Wallet2 = $WalletSwitch2
	$Wallet3 = $WalletSwitch3
        $ZergpoolWallet1 = $ZergpoolWallet1Switch
        $ZergpoolWallet2 = $ZergpoolWallet2Switch
        $ZergpoolWallet3 = $ZergpoolWallet3Switch
        $Nicehash_Wallet1 = $Nicehash_Wallet1Switch
        $Nicehash_Wallet2 = $Nicehash_Wallet2Switch
        $Nicehash_Wallet3 = $Nicehash_Wallet3Switch
        $CPUWallet = $CPUWalletSwitch
      	$UserName = $UserSwitch
	$WorkerName = $WorkerSwitch
      	$RigName = $RigSwitch
        $Interval = $IntervalSwitch
        $Passwordcurrency = $PasswordSwitch
      	$Passwordcurrency1 = $PasswordSwitch1
        $Passwordcurrency2 = $PasswordSwitch2
        $Passwordcurrency3 = $PasswordSwitch3
        $Zergpoolpassword1 = $Zergpoolpassword1Switch
        $Zergpoolpassword2 = $Zergpoolpassword2Switch
        $Zergpoolpassword3 = $Zergpoolpassword3Switch
        $CPUcurrency = $CPUcurrencySwitch
	Clear-Content ".\Build\Data\Info.txt"
	Write-Host "Leaving Donation Mode- Thank you For The Support!" -foregroundcolor "darkred"
	Continue
       }
     }
   }
  }


    try {
	$T = [string]$CoinExchange
	$R= [string]$Currency
	Write-Host "MM.Hash Is Entering Sniper Mode: Building The Coin Database- It Can Take Some Time." -foreground "yellow"   
        $Exchanged =  Invoke-RestMethod "https://min-api.cryptocompare.com/data/price?fsym=$T&tsyms=$R" -UseBasicParsing | Select-Object -ExpandProperty $R
	$Rates = Invoke-RestMethod "https://api.coinbase.com/v2/exchange-rates?currency=$R" -UseBasicParsing | Select-Object -ExpandProperty data | Select-Object -ExpandProperty rates
        $Currency | Where-Object {$Rates.$_} | ForEach-Object {$Rates | Add-Member $_ ([Double]$Rates.$_) -Force}
    }
    catch {
    Write-Host -Level Warn "Coinbase Unreachable. "

    Write-Host -ForegroundColor Yellow "Last Refresh: $(Get-Date)"
    Write-host "Trying To Contact Cryptonator.." -foregroundcolor "Yellow"
        $Rates = [PSCustomObject]@{}
        $Currency | ForEach {$Rates | Add-Member $_ (Invoke-WebRequest "https://api.cryptonator.com/api/ticker/btc-$_" -UseBasicParsing | ConvertFrom-Json).ticker.price}
   }
   

   if($TimeoutTimer.Elapsed.TotalSeconds -lt $TimeoutTime -or $Timeout -eq 0)
    {
     $Stats = $null
     $Stats = [PSCustomObject]@{}
     $AllStats = if(Test-Path "Stats"){Get-ChildItemContent "Stats" | ForEach {$Stats | Add-Member $_.Name $_.Content}}
     $AllStats | Out-Null
    }
    else
    {
    $AllStats = if(Test-Path "./Stats"){Get-ChildItemContent "./Stats"}

    $AllStats | ForEach-Object{
      if($_.Content.Live -eq 0)
       {
        $Removed = Join-Path "./Stats" "$($_.Name).txt"
        $Change = $($_.Name) -replace "HashRate","TIMEOUT"
        if(Test-Path (Join-Path "./Timeout" "$($Change).txt")){Remove-Item (Join-Path "./Timeout" "$($Change).txt")}
	Remove-Item $Removed
        Write-Host "$($_.Name) Hashrate and Timeout Notification was Removed"
        }
       }
       Write-Host "Cleared Timeouts" -ForegroundColor Red
       $TimeoutTimer.Restart()
       continue
   }

   Write-Host "Checking Algo Pools" -Foregroundcolor yellow
   $AllAlgoPools = $null
   $AllAlgoPools = if(Test-Path "AlgoPools"){Get-ChildItemContent "AlgoPools" | ForEach {$_.Content | Add-Member @{Name = $_.Name} -PassThru} |
   Where {$PoolName.Count -eq 0 -or (Compare-Object $PoolName $_.Name -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0} |
   Where {$Algorithm.Count -eq 0 -or (Compare-Object $Algorithm $_.Algorithm -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0}}
   if($AllAlgoPools.Count -eq 0){"No Pools! Check Internet Connection."| Out-Host; start-sleep $Interval; continue}
   $AlgoPools = $null
   $AlgoPools = [PSCustomObject]@{}
   $AgloPools_Comparison = $null
   $AlgoPools_Comparison = [PSCustomObject]@{}
   $AllAlgoPools.Symbol | Select -Unique | ForEach {$AlgoPools | Add-Member $_ ($AllAlgoPools | Where Symbol -EQ $_ | Sort-Object Price -Descending | Select -First 1)}
   $AllAlgoPools.Symbol | Select -Unique | ForEach {$AlgoPools_Comparison | Add-Member $_ ($AllAlgoPools | Where Symbol -EQ $_ | Sort-Object StablePrice -Descending | Select -First 1)}

   Write-Host "Checking Algo Miners"
   $AlgoMiners = $null
   $AlgoMiners = if(Test-Path "Miners-Linux"){Get-ChildItemContent "Miners-Linux" | ForEach {$_.Content | Add-Member @{Name = $_.Name} -PassThru} | 
   Where {$Type.Count -eq 0 -or (Compare-Object $Type $_.Type -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0} |
   Where {$Algorithm.Count -eq 0 -or (Compare-Object $Algorithm $_.Selected.PSObject.Properties.Name -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0}}
   
   $AlgoMiners = $AlgoMiners | ForEach {
       $AlgoMiner = $_
      if((Test-Path $AlgoMiner.Path) -eq $false)
       {
 if($AlgoMiner.BUILD -eq "Linux" -or $AlgoMiner.BUILD -eq "Linux-Clean" -or $AlgoMiner.BUILD -eq "Linux-Zip-Build")
   {
         Expand-WebRequest -URI $AlgoMiner.URI -BuildPath $AlgoMiner.BUILD -Path (Split-Path $AlgoMiner.Path) -MineName (Split-Path $AlgoMiner.Path -Leaf) -MineType $AlgoMiner.Type
         }
       if($AlgoMiner.BUILD -eq "Windows" -or "Linux-Zip")
  {
  if((Split-Path $AlgoMiner.URI -Leaf) -eq (Split-Path $AlgoMiner.Path -Leaf))
         {
          New-Item (Split-Path $AlgoMiner.Path) -ItemType "Directory" | Out-Null
          Invoke-WebRequest $AlgoMiner.URI -OutFile $_.Path -UseBasicParsing
         }
  else
           {
            Expand-WebRequest -URI $AlgoMiner.URI -BuildPath $AlgoMiner.BUILD -Path (Split-Path $AlgoMiner.Path) -MineName (Split-Path $AlgoMiner.Path -Leaf) -MineType $AlgoMiner.Type
           }
          }
   }
      else
 {
  $AlgoMiner
       }
  }

   if($AlgoMiners.Count -eq 0){"No Miners!" | Out-Host; start-sleep $Interval; continue}
   $AlgoMiners | ForEach {
       $AlgoMiner = $_

       $AlgoMiner_HashRates = [PSCustomObject]@{}
       $AlgoMiner_Pools = [PSCustomObject]@{}
       $AlgoMiner_Pools_Comparison = [PSCustomObject]@{}
       $AlgoMiner_Profits = [PSCustomObject]@{}
       $AlgoMiner_Profits_Comparison = [PSCustomObject]@{}
       $AlgoMiner_Profits_Bias = [PSCustomObject]@{}

       $AlgoMiner_Types = $AlgoMiner.Type | Select -Unique
       $AlgoMiner_Indexes = $AlgoMiner.Index | Select -Unique

       $AlgoMiner.HashRates | Get-Member -MemberType NoteProperty | Select -ExpandProperty Name | ForEach {
       $AlgoMiner_HashRates | Add-Member $_ ([Double]$AlgoMiner.HashRates.$_)
       $AlgoMiner_Pools | Add-Member $_ ([PSCustomObject]$AlgoPools.$_)
       $AlgoMiner_Pools_Comparison | Add-Member $_ ([PSCustomObject]$AlgoPools_Comparison.$_)
       $AlgoMiner_Profits | Add-Member $_ ([Double]$AlgoMiner.HashRates.$_*$AlgoPools.$_.Price)
       $AlgoMiner_Profits_Comparison | Add-Member $_ ([Double]$AlgoMiner.HashRates.$_*$AlgoPools_Comparison.$_.Price)
       $AlgoMiner_Profits_Bias | Add-Member $_ ([Double]$AlgoMiner.HashRates.$_*$AlgoPools.$_.Price*(1-($AlgoPools.$_.MarginOfError*[Math]::Pow($DecayBase,$DecayExponent))))
       }

      
       
       $AlgoMiner_Profit = [Double]($AlgoMiner_Profits.PSObject.Properties.Value | Measure -Sum).Sum
       $AlgoMiner_Profit_Comparison = [Double]($AlgoMiner_Profits_Comparison.PSObject.Properties.Value | Measure -Sum).Sum
       $AlgoMiner_Profit_Bias = [Double]($AlgoMiner_Profits_Bias.PSObject.Properties.Value | Measure -Sum).Sum
       
       $AlgoMiner.HashRates | Get-Member -MemberType NoteProperty | Select -ExpandProperty Name | ForEach {
        if(-not [String]$AlgoMiner.HashRates.$_)
        {
               $AlgoMiner_HashRates.$_ = $null
               $AlgoMiner_Profits.$_ = $null
               $AlgoMiner_Profits_Comparison.$_ = $null
               $AlgoMiner_Profits_Bias.$_ = $null
               $AlgoMiner_Profit = $null
               $AlgoMiner_Profit_Comparison = $null
               $AlgoMiner_Profit_Bias = $null
           }
       }

       if($AlgoMiner_Types -eq $null){$AlgoMiner_Types = $AlgoMiners.Type | Select -Unique}
       if($AlgoMiner_Indexes -eq $null){$AlgoMiner_Indexes = $AlgoMiners.Index | Select -Unique}
       
       if($AlgoMiner_Types -eq $null){$AlgoMiner_Types = ""}
       if($AlgoMiner_Indexes -eq $null){$AlgoMiner_Indexes = 0}
       
       $AlgoMiner.HashRates = $AlgoMiner_HashRates

       $AlgoMiner | Add-Member Pools $AlgoMiner_Pools
       $AlgoMiner | Add-Member Profits $AlgoMiner_Profits
       $AlgoMiner | Add-Member Profits_Comparison $AlgoMiner_Profits_Comparison
       $AlgoMiner | Add-Member Profits_Bias $AlgoMiner_Profits_Bias
       $AlgoMiner | Add-Member Profit $AlgoMiner_Profit
       $AlgoMiner | Add-Member Profit_Comparison $AlgoMiner_Profit_Comparison
       $AlgoMiner | Add-Member Profit_Bias $AlgoMiner_Profit_Bias
       
       $AlgoMiner | Add-Member Type $AlgoMiner_Types -Force
       $AlgoMiner | Add-Member Index $AlgoMiner_Indexes -Force

       $AlgoMiner.Path = Convert-Path $AlgoMiner.Path
   }



   $AlgoMiners | ForEach {
       $AlgoMiner = $_
       $AlgoMiner_Devices = $AlgoMiner.Device | Select -Unique
       if($AlgoMiner_Devices -eq $null){$AlgoMiner_Devices = ($AlgoMiners | Where {(Compare-Object $AlgoMiner.Type $_.Type -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0}).Device | Select -Unique}
       if($AlgoMiner_Devices -eq $null){$AlgoMiner_Devices = $AlgoMiner.Type}
       $AlgoMiner | Add-Member Device $AlgoMiner_Devices -Force
   }

   #Don't penalize active miners
   $ActiveMinerPrograms | ForEach {$AlgoMiners | Where Path -EQ $_.Path | Where Arguments -EQ $_.Arguments | ForEach {$_.Profit_Bias = $_.Profit}}
   
   $GoodAlgoMiners = $null
   $GoodAlgoMiners = @()
   $AlgoMiners | Where Profits.$($_.Symbol) -lt $Threshold | foreach {$GoodAlgoMiners += $_}

   #Get most profitable miner combination i.e. AMD+NVIDIA+CPU
   $Miners = $null
   $Miners = @()
   $GoodAlgoMiners | foreach {$Miners += $_}
   $BestAlgoMiners = $GoodAlgoMiners | Select Type,Index -Unique | ForEach {$AlgoMiner_GPU = $_; ($GoodAlgoMiners | Where {(Compare-Object $AlgoMiner_GPU.Type $_.Type | Measure).Count -eq 0 -and (Compare-Object $AlgoMiner_GPU.Index $_.Index | Measure).Count -eq 0} | Sort-Object -Descending {($_ | Where Profit -EQ $null | Measure).Count},{($_ | Measure Profit_Bias -Sum).Sum},{($_ | Where Profit -NE 0 | Measure).Count} | Select -First 1)}
   $BestDeviceAlgoMiners = $GoodAlgoMiners | Select Device -Unique | ForEach {$AlgoMiner_GPU = $_; ($GoodAlgoMiners | Where {(Compare-Object $AlgoMiner_GPU.Device $_.Device | Measure).Count -eq 0} | Sort-Object -Descending {($_ | Where Profit -EQ $null | Measure).Count},{($_ | Measure Profit_Bias -Sum).Sum},{($_ | Where Profit -NE 0 | Measure).Count} | Select -First 1)}
   $BestAlgoMiners_Comparison = $GoodAlgoMiners | Select Type,Index -Unique | ForEach {$AlgoMiner_GPU = $_; ($GoodAlgoMiners | Where {(Compare-Object $AlgoMiner_GPU.Type $_.Type | Measure).Count -eq 0 -and (Compare-Object $AlgoMiner_GPU.Index $_.Index | Measure).Count -eq 0} | Sort-Object -Descending {($_ | Where Profit -EQ $null | Measure).Count},{($_ | Measure Profit_Comparison -Sum).Sum},{($_ | Where Profit -NE 0 | Measure).Count} | Select -First 1)}
   $BestDeviceAlgoMiners_Comparison = $GoodAlgoMiners | Select Device -Unique | ForEach {$AlgoMiner_GPU = $_; ($GoodAlgoMiners | Where {(Compare-Object $AlgoMiner_GPU.Device $_.Device | Measure).Count -eq 0} | Sort-Object -Descending {($_ | Where Profit -EQ $null | Measure).Count},{($_ | Measure Profit_Comparison -Sum).Sum},{($_ | Where Profit -NE 0 | Measure).Count} | Select -First 1)}
   $AlgoMiners_Type_Combos = @([PSCustomObject]@{Combination = @()}) + (Get-Combination ($GoodAlgoMiners | Select Type -Unique) | Where{(Compare-Object ($_.Combination | Select -ExpandProperty Type -Unique) ($_.Combination | Select -ExpandProperty Type) | Measure).Count -eq 0})
   $AlgoMiners_Index_Combos = @([PSCustomObject]@{Combination = @()}) + (Get-Combination ($GoodAlgoMiners | Select Index -Unique) | Where{(Compare-Object ($_.Combination | Select -ExpandProperty Index -Unique) ($_.Combination | Select -ExpandProperty Index) | Measure).Count -eq 0})
   $AlgoMiners_Device_Combos = (Get-Combination ($GoodAlgoMiners | Select Device -Unique) | Where{(Compare-Object ($_.Combination | Select -ExpandProperty Device -Unique) ($_.Combination | Select -ExpandProperty Device) | Measure).Count -eq 0})
   $BestAlgoMiners_Combos = $AlgoMiners_Type_Combos | ForEach {$AlgoMiner_Type_Combo = $_.Combination; $AlgoMiners_Index_Combos | ForEach {$AlgoMiner_Index_Combo = $_.Combination; [PSCustomObject]@{Combination = $AlgoMiner_Type_Combo | ForEach {$AlgoMiner_Type_Count = $_.Type.Count; [Regex]$AlgoMiner_Type_Regex = ‘^(‘ + (($_.Type | ForEach {[Regex]::Escape($_)}) -join “|”) + ‘)$’; $AlgoMiner_Index_Combo | ForEach {$AlgoMiner_Index_Count = $_.Index.Count; [Regex]$AlgoMiner_Index_Regex = ‘^(‘ + (($_.Index | ForEach {[Regex]::Escape($_)}) –join “|”) + ‘)$’; $BestAlgoMiners | Where {([Array]$_.Type -notmatch $AlgoMiner_Type_Regex).Count -eq 0 -and ([Array]$_.Index -notmatch $AlgoMiner_Index_Regex).Count -eq 0 -and ([Array]$_.Type -match $AlgoMiner_Type_Regex).Count -eq $AlgoMiner_Type_Count -and ([Array]$_.Index -match $AlgoMiner_Index_Regex).Count -eq $AlgoMiner_Index_Count}}}}}}
   $BestAlgoMiners_Combos += $AlgoMiners_Device_Combos | ForEach {$AlgoMiner_Device_Combo = $_.Combination; [PSCustomObject]@{Combination = $AlgoMiner_Device_Combo | ForEach {$AlgoMiner_Device_Count = $_.Device.Count; [Regex]$AlgoMiner_Device_Regex = ‘^(‘ + (($_.Device | ForEach {[Regex]::Escape($_)}) -join “|”) + ‘)$’; $BestDeviceAlgoMiners | Where {([Array]$_.Device -notmatch $AlgoMiner_Device_Regex).Count -eq 0 -and ([Array]$_.Device -match $AlgoMiner_Device_Regex).Count -eq $AlgoMiner_Device_Count}}}}
   $BestAlgoMiners_Combos_Comparison = $AlgoMiners_Type_Combos | ForEach {$AlgoMiner_Type_Combo = $_.Combination; $AlgoMiners_Index_Combos | ForEach {$AlgoMiner_Index_Combo = $_.Combination; [PSCustomObject]@{Combination = $AlgoMiner_Type_Combo | ForEach {$AlgoMiner_Type_Count = $_.Type.Count; [Regex]$AlgoMiner_Type_Regex = ‘^(‘ + (($_.Type | ForEach {[Regex]::Escape($_)}) -join “|”) + ‘)$’; $AlgoMiner_Index_Combo | ForEach {$AlgoMiner_Index_Count = $_.Index.Count; [Regex]$AlgoMiner_Index_Regex = ‘^(‘ + (($_.Index | ForEach {[Regex]::Escape($_)}) –join “|”) + ‘)$’; $BestAlgoMiners_Comparison | Where {([Array]$_.Type -notmatch $AlgoMiner_Type_Regex).Count -eq 0 -and ([Array]$_.Index -notmatch $AlgoMiner_Index_Regex).Count -eq 0 -and ([Array]$_.Type -match $AlgoMiner_Type_Regex).Count -eq $AlgoMiner_Type_Count -and ([Array]$_.Index -match $AlgoMiner_Index_Regex).Count -eq $AlgoMiner_Index_Count}}}}}}
   $BestAlgoMiners_Combos_Comparison += $AlgoMiners_Device_Combos | ForEach {$AlgoMiner_Device_Combo = $_.Combination; [PSCustomObject]@{Combination = $AlgoMiner_Device_Combo | ForEach {$AlgoMiner_Device_Count = $_.Device.Count; [Regex]$AlgoMiner_Device_Regex = ‘^(‘ + (($_.Device | ForEach {[Regex]::Escape($_)}) -join “|”) + ‘)$’; $BestDeviceAlgoMiners_Comparison | Where {([Array]$_.Device -notmatch $AlgoMiner_Device_Regex).Count -eq 0 -and ([Array]$_.Device -match $AlgoMiner_Device_Regex).Count -eq $AlgoMiner_Device_Count}}}}
   $BestAlgoMiners_Combo = $BestAlgoMiners_Combos | Sort-Object -Descending {($_.Combination | Where Profit -EQ $null | Measure).Count},{($_.Combination | Measure Profit_Bias -Sum).Sum},{($_.Combination | Where Profit -NE 0 | Measure).Count} | Select -First 1 | Select -ExpandProperty Combination
   $BestAlgoMiners_Combo_Comparison = $BestAlgoMiners_Combos_Comparison | Sort-Object -Descending {($_.Combination | Where Profit -EQ $null | Measure).Count},{($_.Combination | Measure Profit_Comparison -Sum).Sum},{($_.Combination | Where Profit -NE 0 | Measure).Count} | Select -First 1 | Select -ExpandProperty Combination
   $BestMiners_Combo = $BestAlgoMiners_Combo
   $BestMiners_Selected = $BestMiners_Combo.Symbol
   $CoinMiners = $null


  if($Auto_Coin -eq "Yes")
   {
    $AddCoinMiners = $null
    $AddCoinMiners = @()
    $BestAlgoMiners_Combo | Where MinerPool -Like "*algo*" | foreach {if($_.Profit -ne $null){$AddCoinMiners += $_}}
    if($AddCoinMiners -ne $null)
     {
      $CoinAlgo = @()
      $AddCoinMiners.Algo | foreach {$CoinAlgo += $_}

      Write-Host "MM.Hash Is Searching For Coins: $($CoinAlgo)" -ForegroundColor Magenta
      $AllCoinPools = $null
      $AllCoinPools = if(Test-Path "CoinPools"){Get-ChildItemContent "CoinPools" | ForEach {$_.Content | Add-Member @{Name = $_.Name} -PassThru} |
      Where {$PoolName.Count -eq 0 -or (Compare-Object $PoolName $_.Name -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0} |
      Where {$CoinAlgo.Count -eq 0 -or (Compare-Object $CoinAlgo $_.Algorithm -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0}}
      $CoinPools = $null
      $CoinPools = [PSCustomObject]@{}
      $CoinPools_Comparison = $null
      $CoinPools_Comparison = [PSCustomObject]@{}
      $AllCoinPools.Symbol | Select -Unique | ForEach {$CoinPools | Add-Member $_ ($AllCoinPools | Where Symbol -EQ $_ | Sort-Object Price -Descending | Select -First 1)}
      $AllCoinPools.Symbol | Select -Unique | ForEach {$CoinPools_Comparison | Add-Member $_ ($AllCoinPools | Where Symbol -EQ $_ | Sort-Object StablePrice -Descending | Select -First 1)}
      $CoinMiners = $null
      $CoinMiners = if(Test-Path "Miners-Linux"){Get-ChildItemContent "Miners-Linux" | ForEach {$_.Content | Add-Member @{Name = $_.Name} -PassThru} |
      Where {$Type.Count -eq 0 -or (Compare-Object $Type $_.Type -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0} |
      Where {$CoinAlgo.Algo.Count -eq 0 -or (Compare-Object $CoinAlgo.Algo $_.Selected.PSObject.Properties.Name -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0}}
     }
    }

	 if($CoinMiners -ne $null)
    {

     $CoinMiners | ForEach {
              $CoinMiner = $_

              $CoinMiner_HashRates = [PSCustomObject]@{}
              $CoinMiner_Pools = [PSCustomObject]@{}
              $CoinMiner_Pools_Comparison = [PSCustomObject]@{}
              $CoinMiner_Profits = [PSCustomObject]@{}
              $CoinMiner_Profits_Comparison = [PSCustomObject]@{}
              $CoinMiner_Profits_Bias = [PSCustomObject]@{}
      
              $CoinMiner_Types = $CoinMiner.Type | Select -Unique
              $CoinMiner_Indexes = $CoinMiner.Index | Select -Unique
      
              $CoinMiner.HashRates | Get-Member -MemberType NoteProperty | Select -ExpandProperty Name | ForEach {
                $CoinMiner_HashRates | Add-Member $_ ([Double]$CoinMiner.HashRates.$_)
                $CoinMiner_Pools | Add-Member $_ ([PSCustomObject]$CoinPools.$_)
                $CoinMiner_Pools_Comparison | Add-Member $_ ([PSCustomObject]$CoinPools_Comparison.$_)
                $CoinMiner_Profits | Add-Member $_ ([Double]$CoinMiner.HashRates.$_*$CoinPools.$_.Price)
                $CoinMiner_Profits_Comparison | Add-Member $_ ([Double]$CoinMiner.HashRates.$_*$CoinPools_Comparison.$_.Price)
                $CoinMiner_Profits_Bias | Add-Member $_ ([Double]$CoinMiner.HashRates.$_*$CoinPools.$_.Price*(1-($CoinPools.$_.MarginOfError*[Math]::Pow($DecayBase,$DecayExponent))))
                }
                       
              $CoinMiner_Profit = [Double]($CoinMiner_Profits.PSObject.Properties.Value | Measure -Sum).Sum
              $CoinMiner_Profit_Comparison = [Double]($CoinMiner_Profits_Comparison.PSObject.Properties.Value | Measure -Sum).Sum
              $CoinMiner_Profit_Bias = [Double]($CoinMiner_Profits_Bias.PSObject.Properties.Value | Measure -Sum).Sum
              
              $CoinMiner.HashRates | Get-Member -MemberType NoteProperty | Select -ExpandProperty Name | ForEach {
                if(-not [String]$CoinMiner.HashRates.$_)
                          {
                      $CoinMiner_HashRates.$CoinMinerAlgo = $null
                      $CoinMiner_Profits.$CoinSymbol = $null
                      $CoinMiner_Profits_Comparison.$CoinSymbol = $null
                      $CoinMiner_Profits_Bias.$CoinSymbol = $null
                      $CoinMiner_Profit = $null
                      $CoinMiner_Profit_Comparison = $null
                      $CoinMiner_Profit_Bias = $null
                  }
              }
      
              if($CoinMiner_Types -eq $null){$CoinMiner_Types = $CoinMiners.Type | Select -Unique}
              if($CoinMiner_Indexes -eq $null){$CoinMiner_Indexes = $CoinMiners.Index | Select -Unique}
              
              if($CoinMiner_Types -eq $null){$CoinMiner_Types = ""}
              if($CoinMiner_Indexes -eq $null){$CoinMiner_Indexes = 0}
              
              $CoinMiner.HashRates = $CoinMiner_HashRates
              
              $CoinMiner | Add-Member Pools $CoinMiner_Pools
              $CoinMiner | Add-Member Profits $CoinMiner_Profits
              $CoinMiner | Add-Member Profits_Comparison $CoinMiner_Profits_Comparison
              $CoinMiner | Add-Member Profits_Bias $CoinMiner_Profits_Bias
              $CoinMiner | Add-Member Profit $CoinMiner_Profit
              $CoinMiner | Add-Member Profit_Comparison $CoinMiner_Profit_Comparison
              $CoinMiner | Add-Member Profit_Bias $CoinMiner_Profit_Bias
              
              $CoinMiner | Add-Member Type $CoinMiner_Types -Force
              $CoinMiner | Add-Member Index $CoinMiner_Indexes -Force
      
              $CoinMiner.Path = Convert-Path $CoinMiner.Path
          }

          $CoinMiners | ForEach {
              $CoinMiner = $_
              $CoinMiner_Devices = $CoinMiner.Device | Select -Unique
              if($CoinMiner_Devices -eq $null){$CoinMiner_Devices = ($CoinMiners | Where {(Compare-Object $CoinMiner.Type $_.Type -IncludeEqual -ExcludeDifferent | Measure).Count -gt 0}).Device | Select -Unique}
              if($CoinMiner_Devices -eq $null){$CoinMiner_Devices = $CoinMiner.Type}
              $CoinMiner | Add-Member Device $CoinMiner_Devices -Force
          }

        $Miners = $null
        $BestMiners_Combo = $null
        $Miners = @()
        
        $GoodAlgoMiners | foreach {$Miners += $_}
        $CoinMiners | Where-Object Profits.$($_.Symbol) -LT $Threshold | foreach {$Miners += $_}


       $ActiveMinerPrograms | ForEach {$Miners | Where Path -EQ $_.Path | Where Arguments -EQ $_.Arguments | ForEach {$_.Profit_Bias = $_.Profit}}
       $BestMiners = $Miners | Select Type,Index -Unique | ForEach {$Miner_GPU = $_; ($Miners | Where {(Compare-Object $Miner_GPU.Type $_.Type | Measure).Count -eq 0 -and (Compare-Object $Miner_GPU.Index $_.Index | Measure).Count -eq 0} | Sort-Object -Descending {($_ | Where Profit -EQ $null | Measure).Count},{($_ | Measure Profit_Bias -Sum).Sum},{($_ | Where Profit -NE 0 | Measure).Count} | Select -First 1)}
       $BestDeviceMiners = $Miners | Select Device -Unique | ForEach {$Miner_GPU = $_; ($Miners | Where {(Compare-Object $Miner_GPU.Device $_.Device | Measure).Count -eq 0} | Sort-Object -Descending {($_ | Where Profit -EQ $null | Measure).Count},{($_ | Measure Profit_Bias -Sum).Sum},{($_ | Where Profit -NE 0 | Measure).Count} | Select -First 1)}
       $BestMiners_Comparison = $Miners | Select Type,Index -Unique | ForEach {$Miner_GPU = $_; ($Miners | Where {(Compare-Object $Miner_GPU.Type $_.Type | Measure).Count -eq 0 -and (Compare-Object $Miner_GPU.Index $_.Index | Measure).Count -eq 0} | Sort-Object -Descending {($_ | Where Profit -EQ $null | Measure).Count},{($_ | Measure Profit_Comparison -Sum).Sum},{($_ | Where Profit -NE 0 | Measure).Count} | Select -First 1)}
       $BestDeviceMiners_Comparison = $Miners | Select Device -Unique | ForEach {$Miner_GPU = $_; ($Miners | Where {(Compare-Object $Miner_GPU.Device $_.Device | Measure).Count -eq 0} | Sort-Object -Descending {($_ | Where Profit -EQ $null | Measure).Count},{($_ | Measure Profit_Comparison -Sum).Sum},{($_ | Where Profit -NE 0 | Measure).Count} | Select -First 1)}
       $Miners_Type_Combos = @([PSCustomObject]@{Combination = @()}) + (Get-Combination ($Miners | Select Type -Unique) | Where{(Compare-Object ($_.Combination | Select -ExpandProperty Type -Unique) ($_.Combination | Select -ExpandProperty Type) | Measure).Count -eq 0})
       $Miners_Index_Combos = @([PSCustomObject]@{Combination = @()}) + (Get-Combination ($Miners | Select Index -Unique) | Where{(Compare-Object ($_.Combination | Select -ExpandProperty Index -Unique) ($_.Combination | Select -ExpandProperty Index) | Measure).Count -eq 0})
       $Miners_Device_Combos = (Get-Combination ($Miners | Select Device -Unique) | Where{(Compare-Object ($_.Combination | Select -ExpandProperty Device -Unique) ($_.Combination | Select -ExpandProperty Device) | Measure).Count -eq 0})
       $BestMiners_Combos = $Miners_Type_Combos | ForEach {$Miner_Type_Combo = $_.Combination; $Miners_Index_Combos | ForEach {$Miner_Index_Combo = $_.Combination; [PSCustomObject]@{Combination = $Miner_Type_Combo | ForEach {$Miner_Type_Count = $_.Type.Count; [Regex]$Miner_Type_Regex = '^(' + (($_.Type | ForEach {[Regex]::Escape($_)}) -join "|") + ')$'; $Miner_Index_Combo | ForEach {$Miner_Index_Count = $_.Index.Count; [Regex]$Miner_Index_Regex = '^(' + (($_.Index | ForEach {[Regex]::Escape($_)}) -join "|") + ')$'; $BestMiners | Where {([Array]$_.Type -notmatch $Miner_Type_Regex).Count -eq 0 -and ([Array]$_.Index -notmatch $Miner_Index_Regex).Count -eq 0 -and ([Array]$_.Type -match $Miner_Type_Regex).Count -eq $Miner_Type_Count -and ([Array]$_.Index -match $Miner_Index_Regex).Count -eq $Miner_Index_Count}}}}}}
       $BestMiners_Combos += $Miners_Device_Combos | ForEach {$Miner_Device_Combo = $_.Combination; [PSCustomObject]@{Combination = $Miner_Device_Combo | ForEach {$Miner_Device_Count = $_.Device.Count; [Regex]$Miner_Device_Regex = '^(' + (($_.Device | ForEach {[Regex]::Escape($_)}) -join "|") + ')$'; $BestDeviceMiners | Where {([Array]$_.Device -notmatch $Miner_Device_Regex).Count -eq 0 -and ([Array]$_.Device -match $Miner_Device_Regex).Count -eq $Miner_Device_Count}}}}
       $BestMiners_Combos_Comparison = $Miners_Type_Combos | ForEach {$Miner_Type_Combo = $_.Combination; $Miners_Index_Combos | ForEach {$Miner_Index_Combo = $_.Combination; [PSCustomObject]@{Combination = $Miner_Type_Combo | ForEach {$Miner_Type_Count = $_.Type.Count; [Regex]$Miner_Type_Regex = '^(' + (($_.Type | ForEach {[Regex]::Escape($_)}) -join "|") + ')$'; $Miner_Index_Combo | ForEach {$Miner_Index_Count = $_.Index.Count; [Regex]$Miner_Index_Regex = '^(' + (($_.Index | ForEach {[Regex]::Escape($_)}) -join "|") + ')$'; $BestMiners_Comparison | Where {([Array]$_.Type -notmatch $Miner_Type_Regex).Count -eq 0 -and ([Array]$_.Index -notmatch $Miner_Index_Regex).Count -eq 0 -and ([Array]$_.Type -match $Miner_Type_Regex).Count -eq $Miner_Type_Count -and ([Array]$_.Index -match $Miner_Index_Regex).Count -eq $Miner_Index_Count}}}}}}
       $BestMiners_Combos_Comparison += $Miners_Device_Combos | ForEach {$Miner_Device_Combo = $_.Combination; [PSCustomObject]@{Combination = $Miner_Device_Combo | ForEach {$Miner_Device_Count = $_.Device.Count; [Regex]$Miner_Device_Regex = '^(' + (($_.Device | ForEach {[Regex]::Escape($_)}) -join "|") + ')$'; $BestDeviceMiners_Comparison | Where {([Array]$_.Device -notmatch $Miner_Device_Regex).Count -eq 0 -and ([Array]$_.Device -match $Miner_Device_Regex).Count -eq $Miner_Device_Count}}}}
       $BestMiners_Combo = $BestMiners_Combos | Sort-Object -Descending {($_.Combination | Where Profit -EQ $null | Measure).Count},{($_.Combination | Measure Profit_Bias -Sum).Sum},{($_.Combination | Where Profit -NE 0 | Measure).Count} | Select -First 1 | Select -ExpandProperty Combination
       $BestMiners_Combo_Comparison = $BestMiners_Combos_Comparison | Sort-Object -Descending {($_.Combination | Where Profit -EQ $null | Measure).Count},{($_.Combination | Measure Profit_Comparison -Sum).Sum},{($_.Combination | Where Profit -NE 0 | Measure).Count} | Select -First 1 | Select -ExpandProperty Combination
       $BestMiners_Selected = $BestMiners_Combo.Symbol
    }
      
   Write-Host "Most Profitable Choice Is $($BestMiners_Selected)" -foregroundcolor green          
 $ProfitTable = $null
 $ProfitTable = @()

 $Miners | foreach {
 $ProfitTable += [PSCustomObject]@{
      Type = $_.Type
      Miner = $_.Name
      Name = $($_.Symbol)
      HashRates = $_.HashRates.$($_.Symbol)
      Profits = $_.Profits.$($_.Symbol)
      Algo = $_.Algo
      Fullname = $_.FullName
      MinerPool = $_.MinerPool
    }
   }

   $BestMiners_Combo | ForEach {
    if(($ActiveMinerPrograms | Where Path -EQ $_.Path | Where Arguments -EQ $_.Arguments).Count -eq 0)
     {
            $ActiveMinerPrograms += [PSCustomObject]@{
              Name = $_.Name
              Type = $_.Type
              Devices = $_.Devices
              DeviceCall = $_.DeviceCall
	            MinerName = $_.MinerName
              Path = $_.Path
              Arguments = $_.Arguments
              MiningName = $null
              MiningId = $null
              API = $_.API
              Port = $_.Port
              Coins = $_.Symbol
              New = $false
              Active = [TimeSpan]0
              Activated = 0
              Failed30sLater = 0
              Recover30sLater = 0
              Status = "Idle"
              HashRate = 0
              Benchmarked = 0
              Crashed = 0
              Timeout = 0
              WasBenchmarked = $false
              XProcess = $null
	            NewMiner = $null
	            Prestart = $null
              MinerId = $null
              MinerPool = $_.MinerPool
              MinerContent = $null
              MinerProcess = $null
	            Algo = $_.Algo
              Bad_Benchmark = 0
              FullName = $_.FullName
          }
        }
      }
  

Function Get-PID {
$ActiveMinerPrograms | ForEach-Object {
   $MinerTestPath = Test-Path ".\Build\PID\$($_.Name)_$($_.Coins)_$($_.Type)_PID.txt"
        if($MinerTestPath)
         {
          $MinerContent = Get-Content ".\Build\PID\$($_.Name)_$($_.Coins)_$($_.Type)_PID.txt"
          $MinerProcess = Get-Process -Id $MinerContent -ErrorAction SilentlyContinue
          if($MinerProcess -ne $null){$_.XProcess = $MinerProcess}
          else{$_.XProcess = $null}
         }
         else{$_.XProcess = $null}
        }
      }

Get-PID

$ActiveMinerPrograms | Foreach {
  if($BestMiners_Combo.Path -ne $_.Path)
   {
   if($BestMiners_Combo.Arguments -ne $_.Arguments)
    {
     if($_.XProcess.HasExited)
     {
     if($_.Status -eq "Running")
     {
     $_.Status = "Failed"
     }
     }
    else
    {
    $_.Status = "Idle"
    $PIDDate = ".\Build\PID\$($_.Name)_$($_.Coins)_$($_.Type)_Date.txt"
     if(Test-path $PIDDate)
      {
      $PIDDateFile = Get-Content $PIDDate | Out-String
      $PIDTime = [DateTime]$PIDDateFile
      $_.Active += (Get-Date)-$PIDTime
      }
     }
    }
   }
  }


$ActiveMinerPrograms | Foreach {
if($BestMiners_Combo.Path -eq $_.Path)
 {
 if($BestMiners_Combo.Arguments -eq $_.Arguments)
  {
  if($TimeDeviation -ne 0)
   {
     $_.Status = "Running"
      if($_.XProcess -eq $null -or $_.XProcess.HasExited -ne $false)
       {
       $DecayStart = Get-Date
       $_.New = $true
       $_.Activated++
       $PIDMiners = "$($_.Type)"
       if(Test-Path ".\Build\PID\*$PIDMiners*"){Remove-Item ".\Build\PID\*$PIDMiners*" -Force}       
       if($_.Type -like '*NVIDIA*')
       {
     if($_.Devices -eq $null){$MinerArguments = "$($_.Arguments)"}
     else{
     if($_.DeviceCall -eq "ccminer"){$MinerArguments = "-d $($_.Devices) $($_.Arguments)"}
     if($_.DeviceCall -eq "ewbf"){$MinerArguments = "--cuda_devices $($_.Devices) $($_.Arguments)"}
     if($_.DeviceCall -eq "dstm"){$MinerArguments = "--dev $($_.Devices) $($_.Arguments)"}
     if($_.DeviceCall -eq "claymore"){$MinerArguments = "-di $($_.Devices) $($_.Arguments)"}
     if($_.DeviceCall -eq "trex"){$MinerArguments = "-d $($_.Devices) $($_.Arguments)"}
     }


    $Invocation = (Join-Path (Split-Path $script:MyInvocation.MyCommand.Path) "Build")
    $MinerLocation = (Join-Path (Split-Path $_.Path) "$($_.MinerName)")
    $MinerConfig = "$MinerLocation $MinerArguments"
    $MinerConfig | Out-File ".\Build\config.sh"
    Set-Location ".\Build"    
    Write-Host "
        
        
        
    Clearing Screen $($_.Type)



    "
    Start-Process "killall.sh" -ArgumentList "$($_.Type)"
    Start-Sleep $Delay #Wait to prevent BSOD
    if(Test-Path "$($_.Type).log"){Remove-Item "$($_.Type).log" -recurse -force}
     $_.MiningId = Start-Process "screen" -ArgumentList "-S $($_.Type) -d -m"
     Start-Sleep -S 1
     if($_.API -eq "ccminer"){$_.PreStart = Start-Process ".\pre-start.sh" -ArgumentList "$($_.Type) $Export"}
     Start-Sleep -S 1
     $_.NewMiner = Start-Process ".\startup.sh" -ArgumentList "$($_.Type) $Invocation"
     $MinerTimer.Restart()
      Do{
	 Start-Sleep -S 1
         $PIDFile = ".\PID\$($_.Name)_$($_.Coins)_$($_.Type)_PID.txt"
         $PIDDate = ".\PID\$($_.Name)_$($_.Coins)_$($_.Type)_Date.txt"
	 $MinerProcessId = Get-Process -Name "$($_.MinerName)" -ErrorAction SilentlyContinue
	 if($MinerProcessId -ne $null)
	 {
          $MinerProcessId.Id | Out-File $PIDFile
          Get-Date | Out-File $PIDDate
          Start-Sleep -S 1
          if(Test-Path $PIDFile)
           {
            $MinerContent = Get-Content $PIDFile
            $MinerProcess = Get-Process -Id $MinerContent -ErrorAction SilentlyContinue
            if($MinerProcess -ne $null){$_.XProcess = $MinerProcess}
          }
	}
     }until($_.XProcess -ne $null -or ($MinerTimer.Elapsed.TotalSeconds) -ge 10)
    $MinerTimer.Stop()
    Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
    Write-Host "Starting $($_.Name) Mining $($_.Coins) on $($_.Type) PID is $($_.XProcess.Id)" -ForegroundColor Cyan
 }


 if($_.Type -like '*CPU*')
 {
    $MinerArguments = "$($_.Arguments)"
    $Invocation = (Join-Path (Split-Path $script:MyInvocation.MyCommand.Path) "Build")
    $MinerLocation = (Join-Path (Split-Path $_.Path) "$($_.MinerName)")
    $MinerConfig = "$MinerLocation $MinerArguments"
    $MinerConfig | Out-File ".\Build\config.sh"
    Set-Location ".\Build"    
    Write-Host "
        
        
        
    Clearing Screen $($_.Type)



    "
    Start-Process "killall.sh" -ArgumentList "$($_.Type)"
    Start-Sleep $Delay #Wait to prevent BSOD
    if(Test-Path "$($_.Type).log"){Remove-Item "$($_.Type).log" -recurse -force}
     $_.MiningId = Start-Process "screen" -ArgumentList "-S $($_.Type) -d -m"
     Start-Sleep -S 1
     if($_.API -eq "ccminer"){$_.PreStart = Start-Process ".\pre-start.sh" -ArgumentList "$($_.Type) $Export"}
     Start-Sleep -S 1
     $_.NewMiner = Start-Process ".\startup.sh" -ArgumentList "$($_.Type) $Invocation"
     $MinerTimer.Restart()
      Do{
	 Start-Sleep -S 1
         $PIDFile = ".\PID\$($_.Name)_$($_.Coins)_$($_.Type)_PID.txt"
         $PIDDate = ".\PID\$($_.Name)_$($_.Coins)_$($_.Type)_Date.txt"
	 $MinerProcessId = Get-Process -Name "$($_.MinerName)" -ErrorAction SilentlyContinue
	 if($MinerProcessId -ne $null)
	 {
          $MinerProcessId.Id | Out-File $PIDFile
          Get-Date | Out-File $PIDDate
          Start-Sleep -S 1
          if(Test-Path $PIDFile)
           {
            $MinerContent = Get-Content $PIDFile
            $MinerProcess = Get-Process -Id $MinerContent -ErrorAction SilentlyContinue
            if($MinerProcess -ne $null){$_.XProcess = $MinerProcess}
          }
	}
     }until($_.XProcess -ne $null -or ($MinerTimer.Elapsed.TotalSeconds) -ge 10)
    $MinerTimer.Stop()
    Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
    Write-Host "Starting $($_.Name) Mining $($_.Coins) on $($_.Type) PID is $($_.XProcess.Id)" -ForegroundColor Cyan
 }



 if($_.Type -like '*AMD*')
 {
  $MinerArguments = "$($_.Arguments)"
  Write-Host "
    
    
    
    Clearing Screens If Any Are Open



"
    $Invocation = (Join-Path (Split-Path $script:MyInvocation.MyCommand.Path) "Build")
    $MinerLocation = (Join-Path (Split-Path $_.Path) "$($_.MinerName)")
    $MinerConfig = "$MinerLocation $MinerArguments"
    $MinerConfig | Out-File ".\Build\config.sh"
    Set-Location ".\Build"
    Start-Process "killall.sh" -ArgumentList "$($_.Type)"
    Start-Sleep $Delay #Wait to prevent BSOD
    if(Test-Path "$($_.Type).log"){Remove-Item "$($_.Type).log" -recurse -force}
     $_.MiningId = Start-Process "screen" -ArgumentList "-S $($_.Type) -d -m"
     Start-Sleep -S 1
     $_.NewMiner = Start-Process ".\startup.sh" -ArgumentList "$($_.Type) $Invocation"
     $MinerTimer.Restart()
     Do{
	    Start-Sleep -S 1
      $PIDFile = ".\PID\$($_.Type)_PID.txt"
	    $MinerProcessId = Get-Process -Name "$($_.MinerName)" -ErrorAction SilentlyContinue
	  if($MinerProcessId -ne $null)
	    {
       $MinerProcessId.Id | Out-File $PIDFile
       Start-Sleep -S 1
       if(Test-Path $PIDFile)
       {
        $MinerContent = Get-Content $PIDFile
        $MinerProcess = Get-Process -Id $MinerContent -ErrorAction SilentlyContinue
        if($MinerProcess -ne $null){$_.XProcess = $MinerProcess}
       }
	    }
     }until($_.XProcess -ne $null -or ($MinerTimer.Elapsed.TotalSeconds) -ge 10)
       $MinerTimer.Stop()
       Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
       Write-Host "Starting $($_.Name) Mining $($_.Coins) on $($_.Type) PID is $($_.XProcess.Id)" -ForegroundColor Cyan
 }


 
 if($_.Type -like '*ASIC*')
 {
  $MinerArguments = "$($_.Arguments)"
  Write-Host "
    
    
    
    Clearing Screens If Any Are Open



"
    $Invocation = (Join-Path (Split-Path $script:MyInvocation.MyCommand.Path) "Build")
    $MinerLocation = (Join-Path (Split-Path $_.Path) "$($_.MinerName)")
    $MinerConfig = "$MinerLocation $MinerArguments"
    $MinerConfig | Out-File ".\Build\config.sh"
    Set-Location ".\Build"
    Start-Process "killall.sh" -ArgumentList "$($_.Type)"
    Start-Sleep $Delay #Wait to prevent BSOD
    if(Test-Path "$($_.Type).log"){Remove-Item "$($_.Type).log" -recurse -force}
     $_.MiningId = Start-Process "screen" -ArgumentList "-S $($_.Type) -d -m"
     Start-Sleep -S 1
     $_.NewMiner = Start-Process ".\startup.sh" -ArgumentList "$($_.Type) $Invocation"
     $MinerTimer.Restart()
     Do{
	     Start-Sleep -S 1
      $PIDFile = ".\PID\$($_.Type)_PID.txt"
	    $MinerProcessId = Get-Process -Name "$($_.MinerName)" -ErrorAction SilentlyContinue
	  if($MinerProcessId -ne $null)
	    {
       $MinerProcessId.Id | Out-File $PIDFile
       Start-Sleep -S 1
       if(Test-Path $PIDFile)
       {
        $MinerContent = Get-Content $PIDFile
        $MinerProcess = Get-Process -Id $MinerContent -ErrorAction SilentlyContinue
        if($MinerProcess -ne $null){$_.XProcess = $MinerProcess}
       }
	    }
     }until($_.XProcess -ne $null -or ($MinerTimer.Elapsed.TotalSeconds) -ge 10)
       $MinerTimer.Stop()
       Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
       Write-Host "Starting $($_.Name) Mining $($_.Coins) on $($_.Type) PID is $($_.XProcess.Id)" -ForegroundColor Cyan
 }

 
 
  if($_.XProcess -eq $null -or $_.XProcess.HasExited)
   {
    $_.Status = "Failed"
    Write-Host "$($_.MinerName) Failed To Launch" -ForegroundColor Darkred
   }
  else
     {
     $_.Status = "Running"
     Write-Host "$($_.MinerName) Is Running!" -ForegroundColor Green
     }
     }
    }
   }
  }
 }


$MinerWatch.Restart()

Write-Host "




Waiting 10 Seconds For Miners To Spool Up



"
Start-Sleep -s 10
##Launch Background Tracking
$PIDArray = @()
$WorkingDir = Split-Path $script:MyInvocation.MyCommand.Path
Set-Location ".\Build"
Write-Host "


Clearing Background Processes


"
Start-Process "killall.sh" -ArgumentList "LogData"
Start-Process "killall.sh" -ArgumentList "PIDInfo"
Start-Sleep -S 1
$ActiveMinerPrograms | Foreach {
  if($BestMiners_Combo.Path -eq $_.Path)
  {
  if($BestMiners_Combo.Arguments -eq $_.Arguments)
   {
   if($_.Type -eq "NVIDIA1")
   {
    $Screen = "LogData"
    $DeviceCall = "$($_.DeviceCall)"
    $MinerType = "$($_.Type)"
    $GPUS = "$($GPU_Count1)"
    $Miner_Algo = "$($_.Algo)" 	
    Start-Process "screen" -ArgumentList "-S $Screen -d -m"
    Start-Sleep -S 1
    Start-Process ".\LogData.sh" -ArgumentList "LogData $DeviceCall $MinerType $GPUS $WorkingDir $Miner_Algo"
   }
  $PIDArray += "$($_.Name)_$($_.Coins)_$($_.Type)"
  }
 }
}
$PID | Out-file ".\PID\miner_PID.txt"
$PIDArray += "miner"
$PIDAdj = "$($PIDArray -join ' ')"
$PIDArguments = "$($PIDAdj -replace (" ",","))"
Start-Process "screen" -ArgumentList "-S PIDInfo -d -m"
Start-Sleep -S 1
Start-Process ".\PIDInfo.sh" -ArgumentList "PIDInfo $PIDArguments"
Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)




function Get-MinerActive {

  $ActiveMinerPrograms | Sort-Object -Descending Status,
  {
   if($_.XProcess -eq $null)
    {[DateTime]0}
    else
     {$_.XProcess.StartTime}
  } | Select -First (1+6+6) | Format-Table -Wrap -GroupBy Status (
  @{Label = "Speed"; Expression={$_.HashRate | ForEach {"$($_ | ConvertTo-Hash)/s"}}; Align='right'},
  @{Label = "Active"; Expression={"{0:dd} Days {0:hh} Hours {0:mm} Minutes" -f $($_.Active)}},
  @{Label = "Launched"; Expression={Switch($_.Activated){0 {"Never"} 1 {"Once"} Default {"$_ Times"}}}},
  @{Label = "Command"; Expression={"$($_.MinerName) $($_.Devices) $($_.Arguments)"}}
)
}


function Get-MinerStatus {
       Write-Host "
                                                                             *      *         )        (       )
                                                                           (  `   (  `     ( /(  (     )\ ) ( /(
                                                                          )\))(  )\))(    )\()) )\   (()/( )\())
                                                                          ((_)()\((_)()\  ((_)((((_)(  /(_)|(_)\
                                                                          (_()((_|_()((_)  _((_)\ _ )\(_))  _((_)
                                                                          |  \/  |  \/  | | || (_)_\(_) __|| || |
                                                                          | |\/| | |\/| |_| __ |/ _ \ \__ \| __ |
                                                                          |_|  |_|_|  |_(_)_||_/_/ \_\|___/|_||_|
                                                                                                                                               " -foregroundcolor "DarkRed"
        Write-Host "                                                                                    Sudo Apt-Get Lambo" -foregroundcolor "Yellow"
        Write-Host ""
        Write-Host ""
        Write-Host ""
        Write-Host ""
        $Y = [string]$CoinExchange
	$H = [string]$Currency
	$J = [string]'BTC'
        $BTCExchangeRate = Invoke-WebRequest "https://min-api.cryptocompare.com/data/pricemulti?fsyms=$Y&tsyms=$J" -UseBasicParsing | ConvertFrom-Json | Select-Object -ExpandProperty $Y | Select-Object -ExpandProperty $J
       $CurExchangeRate = Invoke-WebRequest "https://min-api.cryptocompare.com/data/pricemulti?fsyms=BTC&tsyms=$H" -UseBasicParsing | ConvertFrom-Json | Select-Object -ExpandProperty $J | Select-Object -ExpandProperty $H
    Write-Host "1 $CoinExchange  = $BTCExchangeRate of a Bitcoin" -foregroundcolor "Yellow"
    Write-Host "1 $CoinExchange = " "$Exchanged"  "$Currency" -foregroundcolor "Yellow"
    $ProfitTable | Where {$_.Profits -ge 1E-5 -or $_.Profits -eq $null} | Sort-Object -Property Type,Profits -Descending | Format-Table -GroupBy Type (
        @{Label = "Miner"; Expression={$($_.Miner)}},
        @{Label = "Coin"; Expression={$($_.Name)}},
        @{Label = "Speed"; Expression={$($_.HashRates) | ForEach {if($_ -ne $null){"$($_ | ConvertTo-Hash)/s"}else{"Bench"}}}; Align='center'},
        @{Label = "BTC/Day"; Expression={$($_.Profits) | ForEach {if($_ -ne $null){  $_.ToString("N5")}else{"Bench"}}}; Align='right'},
        @{Label = "$Y/Day"; Expression={$($_.Profits) | ForEach {if($_ -ne $null){  ($_ / $BTCExchangeRate).ToString("N5")}else{"Bench"}}}; Align='right'},
        @{Label = "$Currency/Day"; Expression={$($_.Profits) | ForEach {if($_ -ne $null){($_ / $BTCExchangeRate * $Exchanged).ToString("N3")}else{"Bench"}}}; Align='center'},
        @{Label = "Algorithm"; Expression={$($_.Algo)}; Align='center'},
        @{Label = "Coin Name"; Expression={$($_.FullName)}; Align='center'},
        @{Label = " Pool"; Expression={$($_.MinerPool)}; Align='center'}
            )
      }


   $BenchmarkMode = "No"

   $ActiveMinerPrograms | Foreach {
    if((Get-Item ".\Stats\$($_.Name)_$($_.Algo)_HashRate.txt" -ErrorAction SilentlyContinue) -eq $null)
       {
        $BenchmarkMode = "Yes"
       }
     }

if($BenchmarkMode -eq "Yes"){$MinerInterval = $Benchmark}
else{$MinerInterval = $Interval}
if($Log -eq 12)
 {
  Remove-Item ".\Logs\*.log"
  $Log = 1
}

   if($LogTimer.Elapsed.TotalSeconds -ge 3600)
    {
     Stop-Transcript
     Start-Transcript ".\Logs\MM.Hash$($Log).log"
     $Log++
     $LogTimer.Restart()
    }
   
   $StatusDate = Get-Date
   Get-MinerActive | Out-File ".\Build\mineractive.sh"
   Clear-Content ".\Build\minerstats.sh"
   $StatusDate | Out-File ".\Build\minerstats.sh"
   Get-MinerStatus | Out-File ".\Build\minerstats.sh" -Append



   function Restart-Miner {
    $ActiveMinerPrograms | Foreach {
      if($BestMiners_Combo.Path -eq $_.Path)
      {
      if($BestMiners_Combo.Arguments -eq $_.Arguments)
       {
      if($_.XProcess -eq $null -or $_.XProcess.HasExited)
       {
       $_.Failed30sLater++
       $_.Status = "Failed"
       Write-Host "$($_.MinerName) Has Failed- Attempting Restart"
      if($_.Type -like '*NVIDIA*')
       {
       if($_.Devices -eq $null){$MinerArguments = "$($_.Arguments)"}
       else{
         if($_.DeviceCall -eq "ccminer"){$MinerArguments = "-d $($_.Devices) $($_.Arguments)"}
         if($_.DeviceCall -eq "ewbf"){$MinerArguments = "--cuda_devices $($_.Devices) $($_.Arguments)"}
         if($_.DeviceCall -eq "dstm"){$MinerArguments = "--dev $($_.Devices) $($_.Arguments)"}
         if($_.DeviceCall -eq "claymore"){$MinerArguments = "-di $($_.Devices) $($_.Arguments)"}
         if($_.DeviceCall -eq "trex"){$MinerArguments = "-d $($_.Devices) $($_.Arguments)"}
          }
     
        Write-Host "
             
             
             
             Clearing Screens If Any Are Open
     
     
     
       "
         $Invocation = (Join-Path (Split-Path $script:MyInvocation.MyCommand.Path) "Build")
         $MinerLocation = (Join-Path (Split-Path $_.Path) "$($_.MinerName)")
         $MinerConfig = "$MinerLocation $MinerArguments"
         $MinerConfig | Out-File ".\Build\config.sh"
    Set-Location ".\Build"
    Start-Process "killall.sh" -ArgumentList "$($_.Type)"
    Start-Sleep $Delay #Wait to prevent BSOD
    $_.MiningId = Start-Process "screen" -ArgumentList "-S $($_.Type) -d -m" -PassThru 
     Start-Sleep -S 1
     if($_.API -eq "ccminer")
      {
       $_.PreStart = Start-Process ".\pre-start.sh" -ArgumentList "$($_.Type) $Export"
      }
     Start-Sleep -S 1
     $_.NewMiner = Start-Process ".\startup.sh" -ArgumentList "$($_.Type) $Invocation"
     $MinerTimer.Restart()
     Do{
	    Start-Sleep -S 1
            $PIDFile = ".\PID\$($_.Name)_$($_.Coins)_$($_.Type)_PID.txt"
	    $MinerProcessId = Get-Process -Name "$($_.MinerName)" -ErrorAction SilentlyContinue
	    if($MinerProcessId -ne $null)
	     {
        $MinerProcessId.Id | Out-File $PIDFile
        Start-Sleep -S 1
        if(Test-Path $PIDFile)
        {
        $MinerContent = Get-Content $PIDFile
        $MinerProcess = Get-Process -Id $MinerContent -ErrorAction SilentlyContinue
        if($MinerProcess -ne $null){$_.XProcess = $MinerProcess}
        }
	     }
     }until($_.XProcess -ne $null -or ($MinerTimer.Elapsed.TotalSeconds) -ge 10)
       $MinerTimer.Stop()
       Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
            Write-Host "Starting $($_.Name) Mining $($_.Coins) on $($_.Type) PID is $($_.XProcess.Id)" -ForegroundColor Cyan
      }
     
     
      if($_.Type -like '*CPU*')
      {
       $MinerArguments = "$($_.Arguments)"
       $Invocation = (Join-Path (Split-Path $script:MyInvocation.MyCommand.Path) "Build")
       $MinerLocation = (Join-Path (Split-Path $_.Path) "$($_.MinerName)")
       $MinerConfig = "$MinerLocation $MinerArguments"
       $MinerConfig | Out-File ".\Build\config.sh"
       Set-Location ".\Build"    
    Write-Host "
        
        
        
    Clearing Screen $($_.Type)



    "
    Start-Process "killall.sh" -ArgumentList "$($_.Type)"
    Start-Sleep $Delay #Wait to prevent BSOD
    if(Test-Path "$($_.Type).log"){Remove-Item "$($_.Type).log" -recurse -force}
     $_.MiningId = Start-Process "screen" -ArgumentList "-S $($_.Type) -d -m"
     Start-Sleep -S 1
     if($_.API -eq "ccminer"){$_.PreStart = Start-Process ".\pre-start.sh" -ArgumentList "$($_.Type) $Export"}
     Start-Sleep -S 1
     $_.NewMiner = Start-Process ".\startup.sh" -ArgumentList "$($_.Type) $Invocation"
     $MinerTimer.Restart()
      Do{
	 Start-Sleep -S 1
         $PIDFile = ".\PID\$($_.Name)_$($_.Coins)_$($_.Type)_PID.txt"
         $PIDDate = ".\PID\$($_.Name)_$($_.Coins)_$($_.Type)_Date.txt"
	 $MinerProcessId = Get-Process -Name "$($_.MinerName)" -ErrorAction SilentlyContinue
	 if($MinerProcessId -ne $null)
	 {
          $MinerProcessId.Id | Out-File $PIDFile
          Get-Date | Out-File $PIDDate
          Start-Sleep -S 1
          if(Test-Path $PIDFile)
           {
            $MinerContent = Get-Content $PIDFile
            $MinerProcess = Get-Process -Id $MinerContent -ErrorAction SilentlyContinue
            if($MinerProcess -ne $null){$_.XProcess = $MinerProcess}
          }
	}
     }until($_.XProcess -ne $null -or ($MinerTimer.Elapsed.TotalSeconds) -ge 10)
    $MinerTimer.Stop()
    Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
    Write-Host "Starting $($_.Name) Mining $($_.Coins) on $($_.Type) PID is $($_.XProcess.Id)" -ForegroundColor Cyan
     }
     
     
     
      if($_.Type -like "*AMD*")
      {
       $MinerArguments = "$($_.Arguments)"
       Write-Host "
         
         
         
         Clearing Screens If Any Are Open
     
     
     
     "
     $Invocation = (Join-Path (Split-Path $script:MyInvocation.MyCommand.Path) "Build")
     $MinerLocation = (Join-Path (Split-Path $_.Path) "$($_.MinerName)")
     $MinerConfig = "$MinerLocation $MinerArguments"
     $MinerConfig | Out-File ".\Build\config.sh"
    Set-Location ".\Build"
    Start-Process "killall.sh" -ArgumentList "$($_.Type)"
    Start-Sleep $Delay #Wait to prevent BSOD
    $_.MiningId = Start-Process "screen" -ArgumentList "-S $($_.Type) -d -m" -PassThru 
     Start-Sleep -S 1
     $_.NewMiner = Start-Process ".\startup.sh" -ArgumentList "$($_.Type) $Invocation"
     $MinerTimer.Restart()
     Do{
	    Start-Sleep -S 1
            $PIDFile = ".\PID\$($_.Name)_$($_.Coins)_$($_.Type)_PID.txt"
	    $MinerProcessId = Get-Process -Name "$($_.MinerName)" -ErrorAction SilentlyContinue
	  if($MinerProcessId -ne $null)
	    {
       $MinerProcessId.Id | Out-File $PIDFile
       Start-Sleep -S 1
       if(Test-Path $PIDFile)
       {
        $MinerContent = Get-Content $PIDFile
        $MinerProcess = Get-Process -Id $MinerContent -ErrorAction SilentlyContinue
        if($MinerProcess -ne $null){$_.XProcess = $MinerProcess}
       }
	    }
     }until($_.XProcess -ne $null -or ($MinerTimer.Elapsed.TotalSeconds) -ge 10)
       $MinerTimer.Stop()
       Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
        Write-Host "Starting $($_.Name) Mining $($_.Coins) on $($_.Type) PID is $($_.XProcess.Id)" -ForegroundColor Cyan
      }
     
     
      
      if($_.Type -like "*ASIC*")
      {
       $MinerArguments = "$($_.Arguments)"
       Write-Host "
         
         
         
         Clearing Screens If Any Are Open
     
     
     
     "
     $Invocation = (Join-Path (Split-Path $script:MyInvocation.MyCommand.Path) "Build")
     $MinerLocation = (Join-Path (Split-Path $_.Path) "$($_.MinerName)")
     $MinerConfig = "$MinerLocation $MinerArguments"
     $MinerConfig | Out-File ".\Build\config.sh"
     Set-Location ".\Build"
     Start-Process "killall.sh" -ArgumentList "$($_.Type)"
     Start-Sleep $Delay #Wait to prevent BSOD
     $_.MiningId = Start-Process "screen" -ArgumentList "-S $($_.Type) -d -m" -PassThru 
     Start-Sleep -S 1
     if($_.API -eq "ccminer")
      {
       $_.PreStart = Start-Process ".\pre-start.sh" -ArgumentList "$($_.Type) $Export"
      }
     Start-Sleep -S 1
     $_.NewMiner = Start-Process ".\startup.sh" -ArgumentList "$($_.Type) $Invocation"
     $MinerTimer.Restart()
     Do{
	    Start-Sleep -S 1
            $PIDFile = ".\PID\$($_.Name)_$($_.Coins)_$($_.Type)_PID.txt"
	    $MinerProcessId = Get-Process -Name "$($_.MinerName)" -ErrorAction SilentlyContinue
	  if($MinerProcessId -ne $null)
	    {
       $MinerProcessId.Id | Out-File $PIDFile
       Start-Sleep -S 1
       if(Test-Path $PIDFile)
       {
        $MinerContent = Get-Content $PIDFile
        $MinerProcess = Get-Process -Id $MinerContent -ErrorAction SilentlyContinue
        if($MinerProcess -ne $null){$_.XProcess = $MinerProcess}
       }
	    }
     }until($_.XProcess -ne $null -or ($MinerTimer.Elapsed.TotalSeconds) -ge 10)
       $MinerTimer.Stop()
       Set-Location (Split-Path $script:MyInvocation.MyCommand.Path)
        Write-Host "Starting $($_.Name) Mining $($_.Coins) on $($_.Type) PID is $($_.XProcess.Id)" -ForegroundColor Cyan
      }
    if($_.XProcess -eq $null -or $_.XProcess.HasExited)
    {
    $_.Status = "Failed When Miner Tried To Restart"
    Write-Host "$($_.MinerName) Failed To Launch" -ForegroundColor Red
    }
    else
     {
      $_.Status = "Running"
      Write-Host "$($_.MinerName) Is Running" -ForegroundColor Green
    }
Write-Host "




Waiting 10 Seconds For Miners To Spool Up



"

Start-Sleep -s 10

              }
            }
           }
          }
        }
      




  function Get-MinerHashRate {
  $ActiveMinerPrograms | Foreach {
    if($BestMiners_Combo.Path -eq $_.Path)
    {
    if($BestMiners_Combo.Arguments -eq $_.Arguments)
     {  
    if($_.XProcess -ne $null -or $_.XProcess.HasExited -eq $false)
     {
      if($_.Status -eq "Running")
       {
	 if($_.Type -eq "NVIDIA1")
	    {
           Clear-Content ".\Build\mineref.sh"
           $_.DeviceCall | Out-File ".\Build\mineref.sh"
           }
          if($_.API -eq "Logs")
           {
	   if($_.Type -eq "NVIDIA1"){$GPUS = $GPU_Count1}
	   if($_.Type -eq "NVIDIA2"){$GPUS = $GPU_Count2}
	   if($_.Type -eq "NVIDIA3"){$GPUS = $GPU_Count3}
           $MinerType = "$($_.Type)"
	   $DeviceCall = "$($_.DeviceCall)"
           $Miner_HashRates = Get-LogHash $DeviceCall $MinerType $GPUS
          }
          else{$Miner_HashRates = Get-HashRate $_.API $_.Port}
	$GetDayStat = Get-Stat "$($_.Name)_$($_.Algo)_HashRate"
       	$DayStat = "$($GetDayStat.Day)"
        $MinerPrevious = "$($DayStat | ConvertTo-Hash)"
	$ScreenHash = "$($Miner_HashRates | ConvertTo-Hash)"
        Write-Host "[$(Get-Date)]:" -foreground yellow -nonewline
	Write-Host " $($_.Type) is currently" -foreground green -nonewline
	Write-Host " $($_.Status):" -foreground green -nonewline
	Write-Host " $($_.Name) current hashrate for $($_.Coins) is" -nonewline
	Write-Host " $ScreenHash/s" -foreground green
	Write-Host "$($_.Type) is currently mining on $($_.MinerPool)" -foregroundcolor Cyan
	Start-Sleep -S 2
	Write-Host "$($_.Type) previous hashrates for $($_.Coins) is" -nonewline
	Write-Host " $MinerPrevious/s" -foreground yellow
          }
        }
      }
     }
   }
  }
      
  Get-Job -State Completed | Remove-Job
  [GC]::Collect()
  [GC]::WaitForPendingFinalizers()
  [GC]::Collect()

      Do{
      Get-PID
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval-20)){break}
      Get-MinerHashRate
      Start-Sleep -s 7
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval-20)){break}
      Get-MinerHashRate
      Start-Sleep -s 7
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval-20)){break}
      Write-Host "

      Type 'stats' in another terminal to view miner statistics

      " -foreground Magenta
      Get-MinerHashRate
      Start-Sleep -s 7
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval-20)){break}
      Restart-Miner
      Get-MinerHashRate
      Start-Sleep -s 7
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval-20)){break}
      Get-MinerHashRate
      Start-Sleep -s 7
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval-20)){break}
      Write-Host "

      Type 'active' in another terminal to view active/previous miners

      " -foreground Magenta
      Get-MinerHashRate
      Start-Sleep -s 7
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval-20)){break}
      Get-MinerHashRate
      Start-Sleep -s 7
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval-20)){break}
      Restart-Miner
      Get-MinerHashRate
      Start-Sleep -s 7
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval-20)){break}
      Get-MinerHashRate
      Start-Sleep -s 7
      $Countdown = ([math]::Round(($MinerInterval-20) - $MinerWatch.Elapsed.TotalSeconds))
      Write-Host "Time Left Until Database Starts: $($Countdown)" -foreground Gray
      if($MinerWatch.Elapsed.TotalSeconds -ge ($MinerInterval)-20){break}
      Get-MinerHashRate
      Start-Sleep -s 7
      }While($MinerWatch.Elapsed.TotalSeconds -lt ($MinerInterval-20))


 $ActiveMinerPrograms | foreach { 
  if($BestMiners_Combo.Path -eq $_.Path)
  {
  if($BestMiners_Combo.Arguments -eq $_.Arguments)
   {
   if($_.XProcess -eq $null -or $_.XProcess.HasExited)
   {
    if($_.Status -eq "Running"){$_.Status = "Failed"}
   }   
   else{
   if($TimeDeviation -ne 0)
    {
     $_.HashRate = 0
     $_.WasBenchmarked = $False
     if($_.API -eq "Logs")
      {
       if($_.Type -eq "NVIDIA1"){$GPUS = $GPU_Count1}
       if($_.Type -eq "NVIDIA2"){$GPUS = $GPU_Count2}
       if($_.Type -eq "NVIDIA3"){$GPUS = $GPU_Count3}
       $MinerType = "$($_.Type)"
       $DeviceCall = "$($_.DeviceCall)"
      $Miner_HashRates = Get-LogHash $DeviceCall $MinerType $GPUS
      }
      else{$Miner_HashRates = Get-HashRate $_.API $_.Port}
       $_.Timeout = 0
       $_.Benchmarked = 0
       $_.HashRate = $Miner_HashRates
       $WasActive = [math]::Round(((Get-Date)-$_.XProcess.StartTime).TotalSeconds)
       if($WasActive -ge $StatsInterval)
        {
	       Write-Host "$($_.Name) $($_.Coins) Was Active for $WasActive Seconds"
	       Write-Host "Attempting to record hashrate for $($_.Name) $($_.Coins)" -foregroundcolor "Cyan"
         for($i=0; $i -lt 4; $i++)
           {
           if($_.WasBenchmarked -eq $False)
            {
            if(-not (Test-Path "Backup")){New-Item "Backup" -ItemType "directory" | Out-Null}
            Write-Host "$($_.Name) $($_.Coins) Starting Bench"
	          $HashRateFilePath = Join-Path ".\Stats" "$($_.Name)_$($_.Algo)_HashRate.txt"
            $NewHashrateFilePath = Join-Path ".\Backup" "$($_.Name)_$($_.Algo)_HashRate.txt"
            $Stat = Set-Stat -Name "$($_.Name)_$($_.Algo)_HashRate" -Value $Miner_HashRates
            Start-Sleep -s 2
	          $GetLiveStat = Get-Stat "$($_.Name)_$($_.Algo)_HashRate"
       	    $StatCheck = "$($GetLiveStat.Live)"
	          $ScreenCheck = "$($StatCheck | ConvertTo-Hash)"
            Write-Host "Recorded Hashrate For $($_.Name) $($_.Coins) Is $($ScreenCheck)" -foregroundcolor "magenta"
 	        if($ScreenCheck -eq "0.00 PH" -or $StatCheck -eq $null)
	         {
          $_.Timeout++
          Write-Host "Stat Attempt Yielded 0" -Foregroundcolor Red
          Start-Sleep -S .25
                 }
         else
          {  
	        if(-not (Test-Path $NewHashrateFilePath))
           {
		        Copy-Item $HashrateFilePath -Destination $NewHashrateFilePath -force
            Write-Host "$($_.Name) $($_.Coins) Was Benchmarked And Backed Up" -foregroundcolor yellow
           }
           $_.New = $False
           $_.Crashed = 0
           $_.WasBenchmarked = $True
	         Write-Host "Stat Written" -foregroundcolor green
           $_.Timeout = 0
	         $_.Bad_Benchmark = 0
         }
         }
        }
      }
     }
    }
   }
  }
		 

    if($_.Timeout -ge 3 -or $_.XProcess -eq $null -or $_.XProcess.HasExited)
     {
     if($_.WasBenchmarked -eq $False)
      {
      if (-not (Test-Path ".\Timeout")) {New-Item "Timeout" -ItemType "directory" | Out-Null}
      Start-Sleep -s 1
      $TimeoutFile = Join-Path ".\Timeout" "$($_.Name)_$($_.Coins)_TIMEOUT.txt"
      $HashRateFilePath = Join-Path ".\Stats" "$($_.Name)_$($_.Coins)_HashRate.txt"
      if(-not (Test-Path $TimeoutFile)){New-Item -Path ".\Timeout" -Name "$($_.Name)_$($_.Coins)_TIMEOUT.txt"  | Out-Null}
      $Stat = Set-Stat -Name "$($_.Name)_$($_.Coins)_HashRate" -Value 0
      Write-Host "$($_.Name) $($_.Coins) Hashrate Check Timed Out- It Was Noted In Timeout Folder" -foregroundcolor "darkred"
      $_.WasBenchmarked = $True
      $_.New = $False
      $_.Crashed = 0
      $_.Timeout = 0
      $_.Bad_Benchmark++
      if($_.Bad_Benchmark -gt 2){$Stat = Set-BadStat -Name "$($_.Name)_$($_.Coins)_HashRate" -Value 0}
      }
     }
    }
    continue
   }
 
  #Stop the log
  Stop-Transcript
  Get-Date | Out-File ".\Build\Data\TimeTable.txt"
