#!/bin/bash

rm payraos-thirdparty-repository*

echo "repo-add"
repo-add -n -R payraos-thirdparty-repository.db.tar.gz *.pkg.tar.zst

sleep 1

rm payraos-thirdparty-repository.db
# rm payraos-thirdparty-repository.db.sig

rm payraos-thirdparty-repository.files
# rm payraos-thirdparty-repository.files.sig

mv payraos-thirdparty-repository.db.tar.gz payraos-thirdparty-repository.db
# mv payraos-thirdparty-repository.db.tar.gz.sig payraos-thirdparty-repository.db.sig

mv payraos-thirdparty-repository.files.tar.gz payraos-thirdparty-repository.files
# mv payraos-thirdparty-repository.files.tar.gz.sig payraos-thirdparty-repository.files.sig

echo "####################################"
echo "Repo Updated!!"
echo "####################################"
