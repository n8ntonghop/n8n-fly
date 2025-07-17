FROM node:18

# Cài thêm thư viện build cần thiết
RUN apt-get update && apt-get install -y python3 make g++

# Tạo thư mục làm việc
WORKDIR /app

# Copy toàn bộ source từ repo
COPY . .

# Cài đặt các package trong repo (bao gồm cả custom node)
RUN npm install

# Build custom node nếu cần (nếu dùng TypeScript)
RUN npm run build || true

# Chạy n8n
CMD ["npx", "n8n"]
