folders=(
  "01-basic-nginx"
  "02-custom-config"
  "03-reverse-proxy"
  "04-ssl-self-signed"
  "05-production-dockerfile"
)

for folder in "${folders[@]}"; do
  echo "Starting $folder..."
  cd "$folder" || { echo "Folder $folder not found!"; continue; }
  docker-compose up -d --build
  cd ..
done

echo "All containers started!"
docker ps
