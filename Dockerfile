# Bước 1: Sử dụng image Nginx làm nền tảng
FROM nginx:alpine

# Bước 2: Sao chép toàn bộ mã nguồn (tất cả các tệp HTML, CSS, JS) vào thư mục web của Nginx
COPY . /usr/share/nginx/html

# Bước 3: Mở cổng 80 để phục vụ trang web
EXPOSE 80

# Bước 4: Nginx sẽ tự động chạy khi container khởi động
CMD ["nginx", "-g", "daemon off;"]
