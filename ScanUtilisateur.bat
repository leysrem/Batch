@ECHO OFF

set Class=%1%

FOR /f "delims=; tokens=1,2,3,4,5,6" %%a in (BD\Class.txt) do (
    echo Classe trouver : %%a %%b
  ) 
  

IF EXIST BD\%Class%.txt (

  

  FOR /f "delims=; tokens=1,2,3,4,5,6" %%a in (BD\%Class%.txt) do (
    CALL CreerUtilisateur %%a %%b %%c %%d %%e %%f  %Class%
  )
) 

IF NOT EXIST BD (
 echo Erreur : Dossier BD non trouvé >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
)

IF NOT EXIST BD\Class.txt (
 echo Erreur : Class.txt non trouvé >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
)


IF NOT EXIST BD\SIO1.txt (
 echo Erreur : SIO1.txt non trouvé >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
)


IF NOT EXIST BD\SIO2.txt (
 echo Erreur : SIO2.txt non trouvé >> %date:~0,2%_%date:~3,2%_%date:~6,4%_Errorlog.txt 
)


