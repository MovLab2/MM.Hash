﻿. .\IncludeCoin.ps1

$Name = Get-Item $MyInvocation.MyCommand.Path | Select-Object -ExpandProperty BaseName 
 
 
 $blazepool_Request = [PSCustomObject]@{} 
 
 
 try { 
     $blazepool_Request = Invoke-RestMethod "http://api.blazepool.com/status" -UseBasicParsing -TimeoutSec 10 -ErrorAction Stop 
 } 
 catch { 
     Write-Warning "MM.Hash contacted ($Name) for a failed API check. " 
     return 
 }
 
 if (($blazepool_Request | Get-Member -MemberType NoteProperty -ErrorAction Ignore | Measure-Object Name).Count -le 1) { 
     Write-Warning "MM.Hash contacted ($Name) but ($Name) Pool API had issues. " 
     return 
 } 
  
$Location = "US"

$blazepool_Request | Get-Member -MemberType NoteProperty -ErrorAction Ignore | Select-Object -ExpandProperty Name | ForEach-Object {

    $blazepool_Algorithm = Get-Algorithm $blazepool_Request.$_.name
    $blazepool_Host = "$_.mine.blazepool.com"
    $blazepool_Port = $blazepool_Request.$_.port
    $blazepool_Symbol = "$($blazepool_Algorithm)-ALGO"
    $Divisor = (1000000*$blazepool_Request.$_.mbtc_mh_factor)

  if($Algorithm -eq $blazepool_Algorithm)
      {
    if((Get-Stat -Name "$($Name)_$($blazepool_Symbol)_Profit") -eq $null){$Stat = Set-Stat -Name "$($Name)_$($blazepool_Symbol)_Profit" -Value ([Double]$blazepool_Request.$_.estimate_last24h/$Divisor*(1-($blazepool_Request.$_.fees/100)))}
    else{$Stat = Set-Stat -Name "$($Name)_$($blazepool_Symbol)_Profit" -Value ([Double]$blazepool_Symbol.$_.estimate_current/$Divisor *(1-($blazepool_Symbol.$_.fees/100)))}
      }

       if($Wallet)
	{
        [PSCustomObject]@{
            Symbol = $blazepool_Symbol
            Mining = $blazepool_Algorithm
            Algorithm = $blazepool_Algorithm
            Price = $Stat.Live
            StablePrice = $Stat.Week
            MarginOfError = $Stat.Fluctuation
            Protocol = "stratum+tcp"
            Host = $blazepool_Host
            Port = $blazepool_Port
            User1 = $Wallet1
	    User2 = $Wallet2
            User3 = $Wallet3
            CPUser = $CPUWallet
            CPUPass = "c=$CPUcurrency,ID=Rig01"
            Pass1 = "c=$Passwordcurrency1,ID=Rig01"
            Pass2 = "c=$Passwordcurrency2,ID=Rig01"
	    Pass3 = "c=$Passwordcurrency3,ID=Rig01"
            Location = $Location
            SSL = $false
        }
     }
   
 }
