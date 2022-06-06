@ECHO OFF
IF [%1]==[] (
   ECHO No parameter
   GOTO :end
)
IF [%2]==[] (
   ECHO Too few parameters
   GOTO :end
)
IF [%3]==[] (
IF EXIST %1 ( 
FOR %%d IN (%1\%2*) DO echo %%d
FOR %%d IN (%1\%2*) DO del %%d
 ) ELSE ( ECHO No directory %1 )
GOTO :end
) ELSE (  
ECHO Too many parameter
GOTO :end
)
:end