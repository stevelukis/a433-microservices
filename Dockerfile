# Mengunduh/mengambil base image node dengan tag 14
FROM node:14

# Menetapkan directory baru app sebagai working directory
WORKDIR /app

# Menyalin source code pada working directory lokal \
# komputer ke working directory di container
COPY . .

# Menetapkan environment variable untuk berjalan dalam \
# production mode dan menggunakan nama item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal semua dependencies untuk production dan menjalankan build aplikasi
RUN npm install --production --unsafe-perm && npm run build

# Mengekspos port aplikasi di port 8080
EXPOSE 8080

# Menjalankan server setelah container berhasil dibuat
CMD ["npm", "start"]

