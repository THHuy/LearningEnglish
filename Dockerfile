# Sử dụng Node.js 20
FROM node:20

# Đặt thư mục làm việc trong container
WORKDIR /usr/src/app

# Sao chép package.json và package-lock.json
COPY package*.json ./

# Cài đặt các dependencies
RUN npm install

# Sao chép toàn bộ mã nguồn vào container
COPY . .

# Gán biến môi trường PORT (Azure App Service mặc định dùng 8080)
ENV PORT=8080

# Expose cổng chạy ứng dụng
EXPOSE 8080

# Chạy ứng dụng
CMD ["npm", "start"]
