@echo off &setlocal
rem config owner and key
set /p encryptedapikey=<credentials
set owner=KuroShinigami318

set scripts_dir=%~dp0
pushd ..
python %scripts_dir%\getDeps.py %encryptedapikey% %owner% libs_dep.json libs
popd &endlocal