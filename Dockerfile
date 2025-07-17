# Sử dụng image chính thức của n8n
FROM n8nio/n8n

# Ép biến môi trường cần thiết (có thể override bằng fly.toml)
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=123456

# Quan trọng: ép n8n listen 0.0.0.0 để fly proxy truy cập được
CMD ["n8n", "start", "--tunnel", "--host", "0.0.0.0"]
