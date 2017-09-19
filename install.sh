###########################
# Start Docker
###########################
chmod 777 ./DockerTimeout.sh
chmod 777 ./Payload/script.sh
chmod 777 ./Payload/javaRunner.sh

systemctl restart docker

echo "Creating Docker Image"
docker build -t 'virtual_machine' - < Dockerfile
echo "Retrieving Installed Docker Images"
docker images
