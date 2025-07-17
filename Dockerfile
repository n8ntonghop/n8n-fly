FROM n8nio/n8n:latest

# Cài đặt timezone nếu cần
ENV TZ=Asia/Ho_Chi_Minh

# Thiết lập các biến môi trường (sẽ override bằng fly.toml nếu cần)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=123456
