docker-compose up --build builder
docker commit builder fluentd-image:latest
docker-compose down
docker-compose up -d fluentd-runner
echo "Please start the td-agent by running the following command inside the container"
echo '"systemctl start td-agent"'
docker exec -it fluentd-runner bash
docker-compose down