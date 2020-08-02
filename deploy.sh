npm run build &&
rm -rf docs
cp -r dist docs
sed -i -e 's/src=\//src=/g' docs/index.html
sed -i -e 's/href=\//href=/g' docs/index.html
rm -rf dist

git add *
git commit -m "$1"
git push origin master
