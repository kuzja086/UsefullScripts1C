rem %1 - полный номер версии 1С:Предприятия
rem %2 - номер экземпляра регистрируемого сервиса
rem %3 - расположение конфигурационного файла сервера
set SrvcUserName=
set SrvcUserPwd=
set SrvcName="Standalone server %2"
set BinPath="\"C:\Program Files\1cv8\%1\bin\ibsrv.exe\" --service --config=\"%~3\""
set Desctiption="Автономный сервер 1С:Предприятия 8.3. Копия #%2"
sc stop %SrvcName%
sc delete %SrvcName%
sc create %SrvcName% binPath= %BinPath% start= auto obj= %SrvcUserName% password= %SrvcUserPwd% displayname= %Desctiption%