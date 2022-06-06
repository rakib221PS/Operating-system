@ECHO OFF
FOR /D %%d IN (%1\*) DO echo %%d

FOR %%d IN (%1\*.bat) DO echo %%d
