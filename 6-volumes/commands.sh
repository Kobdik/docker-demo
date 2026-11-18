# postgres data initialized and saved in /home/vasa/data
docker run --name my-postgres -e PGDATA=/data/pg -v /home/vasa/data:/data/pg -e POSTGRES_PASSWORD=123 -d postgres:16-alpine

docker stop my-postgres
docker rm my-postgres

cd ~
sudo ls ./vasa/data

mv vasa saved-pg
docker run --name my-pg -e PGDATA=/data/pg -v /home/saved-pg/data:/data/pg -e POSTGRES_PASSWORD=123 -d postgres:16-alpine

