docker build . 
docker build -t anish/redis:latest . #Tags the image
docker commit -c 'CMD ["redis-server"]' CONTAINER_ID