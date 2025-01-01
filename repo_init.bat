@echo off &setlocal
rem config owner and key
set encryptedapikey=Z2l0aHViX3BhdF8xMUFNM1FHR0EwZ016UUZ4dFNxM1JzX0YydHFjYWZGNHo0UjZOZ2dwVHBmSG1yRWQyUG8wUDVrZTdIV0Y1SUZtSHBVSUVNVE40M2hMelk1VWVT
set owner=KuroShinigami318

set scripts_dir=%~dp0
pushd ..
python %scripts_dir%\getDeps.py %encryptedapikey% %owner% libs_dep.json libs
popd &endlocal