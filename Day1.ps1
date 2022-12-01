$Calories = Get-Content -Path "G:\My Drive\AoC\2022\Day1Input.txt"
$totals = New-Object System.Collections.ArrayList
$total = $null
$biggest = $null
foreach ($Calorie in $Calories)
{
    if ($Calorie -ne "")
    {
        $total += [int]$Calorie
    }
    elseif ($Calorie -eq "") 
    {
        [void]$totals.Add($total)
        $total = $null
    }
}

foreach ($total in $totals)
{
    if ($null -eq $biggest)
    {
        $biggest = $total
    }
    else 
    {
        if ($total -gt $biggest)
        {
            $biggest = $total
        }
    }
}

# Part 1
Write-Output "The Most Calories Carried is -"
$biggest

# Part 2
$totals = $totals | Sort-Object -Descending

$Top3 = $totals[0]+$totals[1]+$totals[2]

Write-Output "The Top 3 combined are"
$Top3