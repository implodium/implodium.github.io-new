#!/bin/sh

if [ "$1" == '-r' ]; then
    rm ./git_credentials.sh
fi

npm run vue-build &&
rm -rf docs
cp -r dist docs
sed -i -e 's/src=\//src=/g' docs/index.html
sed -i -e 's/href=\//href=/g' docs/index.html
rm -rf dist

if [ -e './git_credentials.sh' ]
then
  source git_credentials.sh
else
  read -p "Username: " username
  read -p "Password: " -s password

  if [ "$1" == "-s" ]; then
    echo "
      #!/bin/sh
      export username='$username'
      export password='$password'
    " > git_credentials.sh
  fi
fi

cd docs
pwd
git init
git add *
git commit -m 'update webpage'

git remote add gh-page https://$username:$password@github.com/implodium/implodium.github.io
git branch gh-page
git push --force gh-page gh-page
cd ..
rm -rf docs
