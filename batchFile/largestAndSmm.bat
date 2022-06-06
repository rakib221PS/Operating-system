@ECHO OFF
SET /A smallest=%1
SET /A largest=%1
:while
IF [%1]==[] ( GOTO :end ) else ( IF [%1] LEQ [%smallest%] ( SET /A smallest=%1 ) )
IF [%1]==[] ( GOTO :end ) else ( IF [%1] GEQ [%largest%] ( SET /A largest=%1 ) )
SHIFT
GOTO :while
:end
ECHO smallest=%smallest%
ECHO largest=%largest%