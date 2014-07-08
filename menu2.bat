:START
@ECHO off
color 2f
mode con lines=44 cols=87
cls
ECHO.
ECHO  +----------------------------------------------------------------------------------+
ECHO  I       		     	      PortableBoot	                            I
ECHO  +----------------------------------------------------------------------------------+
ECHO  I       		     	      Version: 1.0	                            I
ECHO  +----------------------------------------------------------------------------------+
ECHO  I                			 Tools		       	   		    I
ECHO  +----------------------------------------------------------------------------------+
ECHO  I 	[a] A43 - Datei Manager  	   I 	   [a64] AIDA64	            	    I
ECHO  I					   I					    I
ECHO  I 	[f] Firefox                        I       [reg] RegEditor		    I
ECHO  I					   I					    I
ECHO  I      [n] Notepad++			   I	   [se]	Sethc			    I
ECHO  I 					   I					    I
ECHO  I 	[pk] Product Key Viewer   	   I					    I
ECHO  I 					   I					    I
ECHO  I 	[t] Total Commander    	           I					    I
ECHO  I 					   I					    I
ECHO  I 	[w] Windows Gate    	           I					    I
ECHO  +----------------------------------------------------------------------------------+
ECHO  I         Festplatten Tools 	           I	 	Anti Virus Tools	    I
ECHO  +----------------------------------------------------------------------------------+
ECHO  I      [d] DiskWipe			   I       [c] ClamWin			    I
ECHO  I					   I				            I
ECHO  I 	[g] Ghost 11			   I                                        I
ECHO  I                                         I                                        I
ECHo  I      [k] KillDisk                       I 					    I
ECHO  I                                         I                                        I
ECHO  I      [p] Paragon Hard Disk Manager      I                                        I
ECHO  I 			   		   I					    I
ECHO  I 	[rs] R-Studio		 	   I					    I
ECHO  +----------------------------------------------------------------------------------+
ECHO  I					Befehle					    I
ECHO  +----------------------------------------------------------------------------------+
ECHO  I 				    [r] Neustarten  		   		    I
ECHO  I					   					    I
ECHO  I 				    [s] Herunterfahren		   		    I
ECHO  I 					   					    I
ECHO  I  	            FÅr die Anzeige des Chancelogs bitte [log] eingeben.            I
ECHO  I                     Fehler bitte an tbrummer@itfischer.de senden		    I
ECHO  +----------------------------------------------------------------------------------+
ECHO  I			  Bitte esfdsdf und mit ENTER bestÑtigen                   I
ECHO  +----------------------------------------------------------------------------------+
ECHO.

:start2
set var=
set /p var=Eingabe: 

IF "%var%"=="" (
Echo Achtung: UngÅltige Eingabe. Bitte wiederholen
goto start2
)

IF %var%==1 (
GOTO disk0
)
IF %var%==2 (
GOTO disk1
)
IF %var%==a (
GOTO a43
)
IF %var%==a64 (
GOTO aida
)
IF %var%==f (
GOTO firefox
)
IF %var%==reg (
GOTO regedit
)
IF %var%==n (
GOTO notepad
)
IF %var%==se (
GOTO sethc
)
IF %var%==k (
GOTO kill
)
IF %var%==pk (
GOTO product
)
IF %var%==t (
GOTO totalc
)
IF %var%==w (
GOTO windowg
)
IF %var%==x (
GOTO exit
)
IF %var%==d (
GOTO diskwipe
)
IF %var%==g (
GOTO ghost
)
IF %var%==p (
GOTO hdm
)
IF %var%==rs (
GOTO rstudio
)
IF %var%==c (
GOTO clamwin
)
IF %var%==log (
GOTO log
)
IF %var%==r (
GOTO restart
)
IF %var%==s (
GOTO shutdown
) ELSE (
Echo Achtung: %var% ist eine ungÅltige Eingabe. Bitte wiederholen
goto start2
)


:disk0
diskpart.exe /s m:\programme\diskpart-script\disk-loeschen.txt
goto START

:disk1
diskpart.exe /s m:\programme\diskpart-script\disk-loeschen1.txt
goto START

:a43
start m:\programme\A43\a43.exe
goto START

:aida
start m:\programme\AIDA64\aida64.exe
goto START

:firefox
start m:\programme\FirefoxPortable\FirefoxPortable.exe
goto START

:regedit
start m:\programme\RegistryEditorPE\miniDriver.exe
goto START

:notepad
start m:\programme\Notepad++\Notepad++portable.exe
goto START

:sethc
m:\programme\sethc\sethc.bat
goto START

:kill
start m:\programme\KillDisk\KillDisk.exe
goto START

:product
start m:\programme\ProductKey\ProduKey.exe
goto START

:totalc
start m:\programme\TotalCommanderPortable\TotalCommanderPortable.exe
goto START

:windowg
start m:\programme\WindowsGate\WindowsGate.exe
goto START

:xcopy
start m:\programme\xcopy\xcopy.hta
goto START

:diskwipe
start m:\programme\DiskWipe\DiskWipe.exe
goto START

:ghost
start m:\programme\ghost11.5\ghost32.exe
goto START

:hdm
start m:\programme\HDM14\program\launcher.exe
goto START

:rstudio
start m:\programme\R-Studio\R-Studio-Portable-Starter.exe
goto START

:clamwin
start m:\programme\ClamWin\ClamWinPortable.exe
goto START

:log
m:\programme\log\Chancelog.txt
goto START

:restart
m:\programme\shutdown\shutdown.exe -r -t 0 -f
goto exit

:shutdown
m:\programme\shutdown\shutdown.exe -s -t 0 -f
goto exit

:exit