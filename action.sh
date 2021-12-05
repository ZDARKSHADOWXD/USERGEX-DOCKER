branch=dev
FROM theteamultroid/ultroid:dev
git clone -b dev https://github.com/TeamUltroid/Ultroid.git /root/TeamUltroid/ 
cp ultroid/.env /root/TeamUltroid/.env
cd /root/TeamUltroid
docker build . --rm --force-rm --compress --pull --file Dockerfile -t ultroid
docker run --privileged --env-file .env --rm -i ultroid
