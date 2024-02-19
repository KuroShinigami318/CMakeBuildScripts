cd `dirname $0`
SCRIPTDIR=`pwd`

encryptedapikey=U2FsdGVkX19Bb2/b8msSW3OmMrd12VjAtbBHYxJbKdDOrU5rl0osxgb1iK23nYhctJB0iZ0ZCcqPivhyeURHXCchuf6+skliO9X/IAIcyysK1HNxvSvBuR2GVH9e6Hw934CGqdwkqHWcPTAeCGVGJQ==
owner=KuroShinigami318
apikey=$(./decrypt.sh $encryptedapikey)

cd -
python3 $SCRIPTDIR/getDeps.py $apikey $owner libs_dep.json libs