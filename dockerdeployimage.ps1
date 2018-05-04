$IMAGEID = "494b51fcd7b8"
$imageFileName = "angular-cli-builder-i"
$tag = "latest"


docker tag ${IMAGEID} aoighost/${imageFileName}:${tag}
docker push aoighost/${imageFileName}