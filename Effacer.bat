@ECHO OFF
echo voulez-vous effacer tous les fichiers ?
pause 


FOR /D %%a in (Utilisateur\*) DO (
del /q %%a
rd /S /Q %%a
)
Echo Tous les fichiers ont ete supprimer avec succes !
pause
