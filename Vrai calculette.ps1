clear


#Je demande le 1er nombre
[int]$nb1 = Read-Host "
                ########################################################
                ##                                                    ##
                ##            Taper votre premier nombre              ##
                ##                                                    ##
                ########################################################
                                     "
                                       
#je check si c'est bon   
if ($nb1 -eq $FALSE)
{
$GROKAKA = Read-Host "*

                     ##############################################
                     ###     TU N'AS PAS RENTRER DE NOMBRE      ###
                     ##     Appuyer sur Entrée pour fermer       ##
                     #                                            #
                     ##############################################"

exit 0
}                                  
                                                                                                  
# le comparateur
$comp = Read-Host "
#########################################################################################
##                                                                                     ##
##Que voulez-bous faire ? (multipliez (*), Additionez (+), Soustraire (-), Divisez (/))##
##                                                                                     ##
#########################################################################################
                                        "
#je check                                        
switch ($comp){
    *{ }
    /{ }    
    +{ }    
    -{ }


default{
    $GROKAKA2 = Read-Host "*

                     ##############################################
                     ###   TU N'AS PAS RENTRER UN OPERATEUR     ###
                     ##     Appuyer sur Entrée pour fermer       ##
                     #                                            #
                     ##############################################"
    exit 0
    }           
}                                 
#Je demande le 2eme nombre
[int]$nb2 = Read-Host "
                ########################################################
                ##                                                    ##
                ##            Taper votre second nombre               ##
                ##                                                    ##
                ########################################################
                                     "
                                       
#je check si c'est bon   
if ($nb2 -eq [int32])
{
$GROKAKA2 = Read-Host "*

                     ##############################################
                     ###     TU N'AS PAS RENTRER DE NOMBRE      ###
                     ##     Appuyer sur Entrée pour fermer       ##
                     #                                            #
                     ##############################################"
exit 0
}                                  
    
switch ($comp)
{
    *{
    $nbFin = $nb1 * $nb2
    }
    /{
    $nbFin = $nb1 / $nb2
    }    
    +{
    $nbFin = $nb1 + $nb2
    }    
    -{
    $nbFin = $nb1 - $nb2
    }
    Default{
    Write-Host "Mauvaise valeur pd"
    powershell.exe ".\vrai calculette"
    }
}

    
Write-Host "

                   ##################################################
                   ##########                             ###########
                   #####                                        #####
                   ##                                              ##
                      Votre résultat est :"$nbFin 
                      
                                   
#équivalent de la pause en powershell pour montrer le résultat      
$pause = Read-Host "*

                     ##############################################
                     ##     Appuyer sur Entrée pour fermer       ##
                     #                                            #"