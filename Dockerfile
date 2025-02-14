# Gunakan image Node.js terbaru
FROM node:18-alpine

# Tentukan direktori kerja di dalam container
WORKDIR /app

# Salin file package.json dan pnpm-lock.yaml
COPY package.json ./

# Instal PNPM dan dependency
RUN corepack enable && pnpm install --prod

# Salin semua file proyek ke dalam container
COPY . .

# Tentukan port aplikasi
EXPOSE 3000

# Perintah untuk menjalankan aplikasi
CMD ["pnpm", "start"]

