cd `dirname $0`
SCRIPTDIR=`pwd`
CREDENTIALS_PATH="$SCRIPTDIR/credentials"
encryptedapikey=$(cat "$CREDENTIALS_PATH")
owner=KuroShinigami318

cd -
command python $SCRIPTDIR/getDeps.py $encryptedapikey $owner libs_dep.json libs
