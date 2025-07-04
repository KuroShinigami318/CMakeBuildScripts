cd `dirname $0`
SCRIPTDIR=`pwd`

encryptedapikey=$(<"credentials")
owner=KuroShinigami318

cd -
python3 $SCRIPTDIR/getDeps.py $encryptedapikey $owner libs_dep.json libs