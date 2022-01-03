$candy = Get-Content ".\Powershell\sprintname\candy.txt"
$spices = Get-Content ".\Powershell\sprintname\spices.txt"

function Get-sprintname {
$spices = $spices -split ","
write-host ""
$candy = $candy -split ","

$spices = Get-Random $spices
$candy = Get-Random $candy 
Write-host $spices$candy
}

foreach ($i in 1..10){
Get-sprintname
}
