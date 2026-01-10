# Bước 1: Sử dụng image Nginx
FROM nginx:alpine

# Bước 2: Copy toàn bộ code vào container
COPY . /usr/share/nginx/html

# Bước 3: Ghi đè cấu hình mặc định của Nginx để nhận tiki.html làm trang chủ
RUN echo 'server { listen 80; location / { root /usr/share/nginx/html; index tiki.html; } }' > /etc/nginx/conf.d/default.conf

# Bước 4: Mở cổng 80
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

# docker build --no-cache -t my-tiki-app .
# docker run -d -p 80:80 --name running-tiki my-tiki-app