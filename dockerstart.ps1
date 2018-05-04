$containerName = "angular-cli-builder"
$containerPort1 = "4200"
$containerPort2 = "7474"
$imageFileName = "angular-cli-builder-i"
$dockerFile = "Dockerfile"

docker run -d -it --name $containerName $imageFileName

#docker run -d --name $containerName -p 1880:1880 -v $pwd/navrie-dragon:/data $imageFileName
