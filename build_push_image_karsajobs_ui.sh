# Membuat docker image dari Dockerfile di direktori saat ini
docker build -t ghcr.io/stevelukis/karsajobs-ui:latest .

# Login ke Github Packages
echo $GITHUB_TOKEN | docker login ghcr.io --username stevelukis --password-stdin

# Mengunggah image ke Github Packages
docker push ghcr.io/stevelukis/karsajobs-ui:latest