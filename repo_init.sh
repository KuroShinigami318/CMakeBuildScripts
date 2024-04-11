cd `dirname $0`
SCRIPTDIR=`pwd`

encryptedapikey=U2FsdGVkX1/MPerBIjp7zLVruoda4faDQswS9h9mC0Rs7FBmcrhJOEsMmkpNoEx1ZBqUIW/oXynROk8Zet2UUCZ527Fh0hRF86i9e2siSnuP+f6efRd3M8x+M6o6hK54Umgi44iSkMEhe008yXTIkQ==
owner=KuroShinigami318
apikey=$(./decrypt.sh $encryptedapikey)

cd -
python3 $SCRIPTDIR/getDeps.py $apikey $owner libs_dep.json libs