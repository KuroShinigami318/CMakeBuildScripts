cd `dirname $0`
SCRIPTDIR=`pwd`

encryptedapikey=U2FsdGVkX1/KRyOHBhtFg4TGIORRxsPgn2NVXZA/hGFfG7xvFc3jFFKWeenovbikDDKdGlSpdZwZ65JX/9rIhplnskbaROt6lW8z/+rmdCGliPfzSHUJDP77YcUtv5EryV4NG7VA/t3RlJ7eJIfAmg==
owner=KuroShinigami318
apikey=$(./decrypt.sh $encryptedapikey)

cd -
python3 $SCRIPTDIR/getDeps.py $apikey $owner libs_dep.json libs