@ECHO OFF

IF NOT EXIST %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt (
echo ========== SUCCES ========== >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt 
)

 IF NOT EXIST %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt (
 echo ========== ERROR ========== >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
)

IF NOT EXIST ScanUtilisateur.bat (
 echo Erreur : Programme ScanUtilisateur non trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
) ELSE (
  echo Succes : Programme ScanUtilisateur trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt
)

IF NOT EXIST CreeUtilisateur.bat (
 echo Erreur : Programme CreeUtilisateur non trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
) ELSE (
  echo Succes : Programme CreeUtilisateur trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt
)

IF NOT EXIST BD (
 echo Erreur : Dossier BD non trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
) ELSE (
  echo Succes : Dossier BD trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt
)

IF NOT EXIST BD\Class.txt (
 echo Erreur : Class.txt non trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
) ELSE (
  echo Succes : Fichier Class.txt trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt
)


IF NOT EXIST BD\SIO1.txt (
 echo Erreur : SIO1.txt non trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt   
) ELSE (
  echo Succes : Fichier SIO1.txt trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt
)


IF NOT EXIST BD\SIO2.txt (
 echo Erreur : SIO2.txt non trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt  
) ELSE (
  echo Succes : Fichier SIO2.txt trouve >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt
)

IF NOT EXIST Utilisateur (
md Utilisateur
echo Succès : Dossier Utilisateur crée >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Succeslog.txt 
)


echo Appuyer sur Entree pour lancer le scan
pause

FOR /f "delims=; tokens=1" %%a in (BD\Class.txt) do (
  CALL ScanUtilisateur %%a 

)
echo ========== FIN =============
echo Creation des dossiers terminer



pause

