$containerName = "angular-cli-builder"
$imageFileName = "angular-cli-builder-i"

docker run -d -it -p 3000:3000 -p 4200:4200 --name $containerName $imageFileName
