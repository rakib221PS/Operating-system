@ECHO OFF
del /s %1\S*
FOR /D %%p IN (%1\*) DO rmdir "%%p"