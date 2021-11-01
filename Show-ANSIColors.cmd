@ECHO OFF
ECHO.
SETLOCAL ENABLEDELAYEDEXPANSION
FOR %%p IN (%*) DO IF [%%p] == [-Full] SET Full=True
FOR /F "tokens=1,2 delims=#" %%a IN ('"PROMPT #$H#$E# & ECHO ON & FOR %%b IN (1) DO REM"') DO SET Esc=%%b
FOR /F "tokens=* USEBACKQ" %%o IN (`CHCP`) DO SET CodePage=%%o
SET CodePage=%CodePage:~26%
CHCP 65001 > NUL
SET Ex=  •••  
IF DEFINED Full SET Ex=•••
SET Line=%Esc%[0m     
IF DEFINED Full (
	FOR /L %%b IN (40, 1, 47) DO SET Line=!Line!%Esc%[1m%%bm%Esc%[22m 
	FOR /L %%b IN (100, 1, 107) DO SET Line=!Line!%Esc%[1m%%bm%Esc%[22m 
	SET Line=!Line:~0,-1!
)	ELSE (
	SET Line=!Line!           
	FOR /L %%b IN (40, 1, 47) DO SET Line=!Line!%Esc%[1m  %%bm  %Esc%[22m 
)
ECHO %Line%
FOR /L %%f IN (30, 1, 37) DO (
	SET Line=  %Esc%[1m%%fm%Esc%[22m   %Esc%[%%fm%Ex%%Esc%[0m 
	IF DEFINED Full SET Line= %Esc%[1m%%fm%Esc%[22m 
	FOR /L %%b IN (40, 1, 47) DO SET Line=!Line!%Esc%[%%fm%Esc%[%%bm%Ex%%Esc%[0m 
	IF DEFINED Full (
		FOR /L %%b IN (100, 1, 107) DO SET Line=!Line!%Esc%[%%fm%Esc%[%%bm•%Ex%%Esc%[0m 
		SET Line=!Line:~0,-1!
	)
	ECHO !Line!
)
FOR /L %%f IN (90, 1, 97) DO (
	SET Line=  %Esc%[1m%%fm%Esc%[22m   %Esc%[%%fm%Ex%%Esc%[0m 
	IF DEFINED Full SET Line= %Esc%[1m%%fm%Esc%[22m 
	FOR /L %%b IN (40, 1, 47) DO SET Line=!Line!%Esc%[%%fm%Esc%[%%bm%Ex%%Esc%[0m 
	IF DEFINED Full (
		FOR /L %%b IN (100, 1, 107) DO SET Line=!Line!%Esc%[%%fm%Esc%[%%bm•%Ex%%Esc%[0m 
		SET Line=!Line:~0,-1!
	)
	ECHO !Line!
)
IF DEFINED Full (
  ECHO.
  ECHO STYLES: %Esc%[0m0m Reset%Esc%[0m, 1m %Esc%[1mBold%Esc%[0m, 4m %Esc%[4mUnderline%Esc%[0m, 7m %Esc%[7mInverse%Esc%[0m
)
CHCP %CodePage% > NUL