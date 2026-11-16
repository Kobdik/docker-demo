// postgres data initialized and saved in ~/vasa/data
docker run --name my-postgres -v ~/vasa/data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=123 -d postgres:16-alpine3.24

docker stop my-postgres
docker rm my-postgres

cd ~
sudo ls ./vasa/data

mv vasa saved-pg
docker run --name my-pg -v ~/saved-pg/data:/var/lib/postgresql/data -e POSTGRES_PASSWORD=123 -d postgres:16-alpine3.24

