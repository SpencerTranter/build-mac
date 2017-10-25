echo "Building $1.zip on a linux server"
rm ~/workspace/semios/$2/$1.zip
scp ~/workspace/semios/$2/config.json blacktower:/home/stranter/lambdas/lambda-$2
ssh blacktower "cd lambdas/lambda-$2 &&
  npm i &&
    chmod +x build.sh &&
      ./build.sh"
scp blacktower:/home/stranter/lambdas/lambda-$2/$1.zip ~/workspace/semios/$2
echo "Finsihed!"
