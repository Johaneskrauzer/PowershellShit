<#Algo

Choisi pierre papier ou ciseau

le pc choisi pierre papier ciseau en random

combat entre les deux gens

calcul des scores entre chaque

#>

#Initialisation des scores
[int]$ordi = 0
[int]$User = 0


Do{
#Créer tableau ppc
    $PPC_User = ("Pierre", "Papier", "Ciseaux")
#demander ppc a utilisateur
    do{
    $wrong=0
    $ChoixUtil = Read-Host "
    -----------------------------
    Pierre, papier ou ciseaux ?"
    switch ($Choixutil){
       "Pierre" {$PPC_User = $PPC_User[0]}
       "Papier" {$PPC_User = $PPC_User[1]}
       "Ciseaux" {$PPC_User = $PPC_User[2]}
       default {Write-Host "tu as mal rentré la valeur, recomence" 
        $wrong=1}
        }
    Write-Host "$PPC"
    } while ($wrong -eq 1)

    #generer un ppc au pc (get-random)
    $PPC_PC = ("Pierre", "Papier", "Ciseaux")
    $ChoixPC = Get-Random $PPC_PC
    $ChoixPC

    #comparer les résultat
       if ($ChoixUtil -eq "Pierre" -and $choixPc -eq "Papier") {write-host "Ordi gagne" -ForegroundColor Red
       $Ordi++}  
       elseif ($ChoixUtil -eq "Pierre" -and $choixPc -eq "Ciseaux") {write-host "User gagne" -ForegroundColor Green
       $User++}
       elseif ($ChoixUtil -eq "Papier" -and $choixPc -eq "Pierre") {write-host "user gagne" -ForegroundColor Green
       $User++}
       elseif ($ChoixUtil -eq "Papier" -and $choixPc -eq "Ciseaux") {write-host "ordi gagne" -ForegroundColor Red
       $Ordi++}
       elseif ($ChoixUtil -eq "Ciseaux" -and $choixPc -eq "Pierre") {write-host "ordi gagne" -ForegroundColor Red
       $Ordi++}
       elseif ($ChoixUtil -eq "Ciseaux" -and $choixPc -eq "Papier") {write-host "user gagne" -ForegroundColor Green
       $User++}
       else {Write-Host "Equality"}

    #calculer les scores
    write-host "
    l'ordi à $ordi point
    l'user à $user point"

    if (($User -match 5) -or ($Ordi -match 5)){
        if ($user -eq 5){
            write-host "Tu as gagné, bravo"-ForegroundColor Green}
        elseif ($Ordi -eq 5){
            Write-Host "L'ordi à gagné, t'es faible" -ForegroundColor Red}
        Read-Host "Appuie sur entré pour fermer"
        exit 0
        }
}while ($true)