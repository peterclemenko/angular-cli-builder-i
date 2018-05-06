$IMAGEID = "0bfb07f39fcc"
$imageFileName = "angular-cli-builder-i"
$tag = "latest"


docker tag ${IMAGEID} aoighost/${imageFileName}:${tag}
docker push aoighost/${imageFileName}