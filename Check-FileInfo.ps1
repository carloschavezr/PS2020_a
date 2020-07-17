$LenPos = 22  #start position of length
$DatePos = 33 #start position of date
$LenLength = $DatePos-$LenPos
Get-Content FileInfo.txt |
foreach {
    $Name = $_.SubString(0,$LenPos).trim()
    $Len = $_.SubString($LenPos, $LenLength).Trim()
    $Date = $_.SubString($DatePos).Trim()
    Write-Host "Name='$Name' Len='$Len' Date='$Date'"
}