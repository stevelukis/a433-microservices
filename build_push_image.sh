# Membuat docker image dengan nama item-app dari Dockerfile di direktori saat ini
docker build -t item-app .

# Menampilkan daftar image di lokal
docker image ls

# Mengubah nama image sesuai dengan format Github Packages
docker tag item-app:latest ghcr.io/stevelukis/item-app:v1

# Login ke Github Packages
echo $GITHUB_TOKEN | docker login ghcr.io --username stevelukis --password-stdin

# Mengunggah image item-app ke Github Packages
docker push ghcr.io/stevelukis/item-app:v1