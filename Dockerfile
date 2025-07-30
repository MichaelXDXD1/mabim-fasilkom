# Gunakan image NGINX sebagai base
FROM nginx:alpine

# Hapus file default HTML NGINX
RUN rm -rf /usr/share/nginx/html/*

# Copy semua isi repo ke dalam direktori HTML NGINX
COPY . /usr/share/nginx/html
