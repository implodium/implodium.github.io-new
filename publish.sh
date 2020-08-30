#!/bin/sh

npm run vue-build &&
rm -rf docs
cp -r dist docs
sed -i -e 's/src=\//src=/g' docs/index.html
sed -i -e 's/href=\//href=/g' docs/index.html
rm -rf dist

cd docs
git init
git add *
git commit -m 'update webpage'

echo 'Username: '
read username
echo 'Password: '
read -s password

git remote add origin https://$username:$password@github.com/implodium/implodium.github.io
git branch gh-page
git push --force origin gh-page
cd ..
rm -rf docs
