#!/bin/bash
#
StatsInterval=1 				                         #1 for Dynamic Benchmarking Of Devices, 1000 For Static (Benchmarks once, then doesn't do it again)
UserName=MaynardVII				                         #Username For Pools Which Require It
WorkerName=Rig1				                                 #Workername For Pools Which Require It
RigName=MMHash				                                 #Personal Nickname Of Your Mining Rig (for tracking purposes)
Currency=USD				                                 #Fiat Currency You Prefer
Passwordcurrency=RVN		                                         #Coin You Want To Exchange To For Pools Which Offer Mining Coin Exchange...See Your Mining Pool For More Information
CoinExchange=RVN							 #Excange Quote From CryptoExchange. Keep PasswordCurrency Symbol, unless coin symbol on exchange is different!
Interval=300				                                 #Seconds Miner Runs Before Switching (5 minutes is reccommended, 10+ for slower devices)
Delay=2					                                 #Delay Before Miner Switches (Leave alone- EXPERT/DEBUG MODE ONLY!)
Wallet=RKirUe978mBoa2MRWqeMGqDzVAKTafKh8H                                #Wallet Address- Should Be Address Of PasswordCurrency
Location=US				        	                 #Your Country
PoolName=zergpool		          	                         #Name of Pool You Wish To Mine In (See "Pools" dir To See Available Pools ex: zergpool,zpool,ahashpool)
Type=NVIDIA				        	                 #Devices You Are Mining With (NVIDIA,CPU,AMD) (CAREFULL COMBINING DEVICES!!
Algorithm=Bitcore                                    #Algos To Mine
Donate=5                                                                #Donation Time In Minutes You Wish Mine For Further App Development- Will Only Activate Once A Day
Proxy='""'                                                                #Proxy Address (If You Are Using Proxy)
#
#
#
#
#
#
#####ADVANCED OPTIONS (DO NOT USE UNLESS YOU KNOW WHAT YOU ARE DOING!)
#
#Type= NVIDIA1,NVIDIA2,NVIDIA3,NVIDIA4,NVIDIA5,NVIDIA6,NVIDIA7,NVIDIA8   # Place # in front of above 'Type', and use this one instead.
#
#GPUDevices1=GTX1070#1,GTX1070#2,GTX1070#3
#Wallet1=RKirUe978mBoa2MRWqeMGqDzVAKTafKh8H
#PasswordCurrency1=RVN
#
#GPUDevices2=GTX1050ti#1,GTX1050ti#2,GTX1050ti#3,GTX1050ti#4,GTX1050ti#5,GTX1050#6,GTX1050#7,GTX1050#8
#Wallet2=RKirUe978mBoa2MRWqeMGqDzVAKTafKh8H
#PasswordCurrency2=RVN
#
#GPUDevices3=
#Wallet3=RKirUe978mBoa2MRWqeMGqDzVAKTafKh8H
#PasswordCurrency3=RVN
#
#GPUDevices4=0,1,2
#Wallet4=RKirUe978mBoa2MRWqeMGqDzVAKTafKh8H
#PasswordCurrency4=RVN
#
#GPUDevices5=GTX1050ti#1,GTX1050ti#2,GTX1050ti#3,GTX1050ti#4,GTX1050ti#5,GTX1050#6,GTX1050#7,GTX1050#8
#Wallet5=RKirUe978mBoa2MRWqeMGqDzVAKTafKh8H
#PasswordCurrency5=RVN
#
#GPUDevices6=GTX1050ti#1,GTX1050ti#2,GTX1050ti#3,GTX1050ti#4,GTX1050ti#5,GTX1050#6,GTX1050#7,GTX1050#8
#Wallet6=RKirUe978mBoa2MRWqeMGqDzVAKTafKh8H
#PasswordCurrency6=RVN
#
#GPUDevices7=GTX1050ti#1,GTX1050ti#2,GTX1050ti#3,GTX1050ti#4,GTX1050ti#5,GTX1050#6,GTX1050#7,GTX1050#8
#Wallet7=RKirUe978mBoa2MRWqeMGqDzVAKTafKh8H
#PasswordCurrency7=RVN
#
#GPUDevices8=GTX1050ti#1,GTX1050ti#2,GTX1050ti#3,GTX1050ti#4,GTX1050ti#5,GTX1050#6,GTX1050#7,GTX1050#8
#Wallet8=RKirUe978mBoa2MRWqeMGqDzVAKTafKh8H
#PasswordCurrency8=RVN
#
########COMMANDS- DO NOT TOUCH!
a=$StatsInterval
b=$UserName
c=$WorkerName
d=$RigName
e=($Currency)
f=($Passwordcurrency)
g=$Interval
h=$Delay
i=$Wallet
j=$Location
k=$PoolName
l=$Type
m=$Algorithm
n=$Donate
o=$Proxy
p=$CoinExchange
#
s=$GPUDevices1
u=$Wallet1
v=$PasswordCurrency1
#
x=$GPUDevices2
z=$Wallet2
aa=$PasswordCurrency2
#
bb=$GPUDevices3
dd=$Wallet3
ee=$PasswordCurrency3
#
ff=$GPUDevices4
hh=$Wallet4
ii=$PasswordCurrency4
#
jj=$GPUDevices5
LL=$Wallet5
MM=$PasswordCurrency5
#
NN=$GPUDevices6
PP=$Wallet6
QQ=$PasswordCurrency6
#
RR=$GPUDevices7
TT=$Wallet7
UU=$PasswordCurrency7
#
VV=$GPUDevices8
XX=$Wallet8
YY=$PasswordCurrency8
#
#
#
#COMMAND: Move Quotation after $p to the last $PasswordCurrency you need, and remove # sign leaving only 1 space between $p and -GPUDevices1 (no whitespace) if using advanced Settings.
#
pwsh -command "&.\MM.Hash.ps1 -StatsInterval $a -Username $b -WorkerName $c -RigName $d -Currency $e -Passwordcurrency $f -Interval $g -Delay $h -Wallet $i -Location $j -Poolname $k -Type $l -Algorithm $m -Donate $n -Proxy $o -CoinExchange $p" #-GPUDevices1 $s -Type1 $t -Wallet1 $u -PasswordCurrency1 $v -GPUDevices2 $x -Type2 $y -Wallet2 $z -PasswordCurrency2 $aa"