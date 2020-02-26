@ECHO OFF

REM Création des utilisateurs



set lastname=%1%
set name=%2%
set age=%3%
set sex=%4%
set profession=%5%
set department=%6%
set Class=%7%
set FilesName=%lastname:~0,4%%name:~0,3%
set FilesNameDoublon=%lastname:~0,4%%name:~0,3%1
set FilesNameTriple=%lastname:~0,4%%name:~0,3%2


IF EXIST Utilisateur\%FilesNameTriple% (
  echo Erreur :  %FilesNameTriple% >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
  GOTO Fin
  
) 

IF EXIST Utilisateur\%FilesNameDoublon% (
   echo Creation du dossier : %FilesNameTriple%
   md Utilisateur\%FilesNameTriple%\  
   echo Creation du dossier triplon  : %FilesNameTriple% >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt
   GOTO Fin
) 

IF EXIST Utilisateur\%FilesName% (
  echo Creation du dossier : %FilesNameDoublon%
  md Utilisateur\%FilesNameDoublon%\ 
  echo Creation du dossier doublon  : %FilesNameDoublon% >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt
  
) ELSE (
  echo Creation du dossier : %FilesName%
  md Utilisateur\%FilesName%\
  echo Creation du dossier : %FilesName% >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt 

)

:Fin
