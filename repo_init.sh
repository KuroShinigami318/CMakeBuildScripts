cd `dirname $0`
SCRIPTDIR=`pwd`

encryptedapikey=Z2l0aHViX3BhdF8xMUFNM1FHR0EwZ016UUZ4dFNxM1JzX0YydHFjYWZGNHo0UjZOZ2dwVHBmSG1yRWQyUG8wUDVrZTdIV0Y1SUZtSHBVSUVNVE40M2hMelk1VWVT
owner=KuroShinigami318

cd -
python3 $SCRIPTDIR/getDeps.py $encryptedapikey $owner libs_dep.json libs