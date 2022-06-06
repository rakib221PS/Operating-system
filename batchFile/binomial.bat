@ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION
SET /A n=%1
SET /A k=%2
SET /A m=%n%-%k%
SET /A ns=1
SET /A ks=1
SET /A ms=1
for /L %%x IN (1, 1, %n%) do (
SET /A ns=!ns!*%%x
)

for /l %%x IN (1, 1, %k%) do (
SET /A ks=!ks!*%%x
)

for /l %%x IN (1, 1, %m%) do (
SET /A ms=!ms!*%%x
)
ECHO %ms% and %ks% and %ns%

SET /A binomial=%ns%/(%ks%*%ms%)
ECHO %binomial%