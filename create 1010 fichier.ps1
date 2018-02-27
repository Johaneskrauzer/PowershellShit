#créer dossier

mkdir C:\Users\caca\Desktop\Pl1DeFichier
#Creer 100 fichier txt

1..10000 | foreach {New-Item C:\Users\caca\Desktop\Pl1DeFichier\Ceciestlaproceduren.$_.txt -ItemType file}