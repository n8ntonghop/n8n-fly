FROM n8nio/n8n

# Cài đặt gói nodes tùy chỉnh
RUN npm install -g n8n-nodes-debounce

# Trỏ đến thư mục chứa nodes custom
ENV N8N_CUSTOM_EXTENSIONS="/usr/local/lib/node_modules"

# Thiết lập biến môi trường
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=123456
ENV N8N_HOST=n8n-fly-thang.fly.dev
ENV WEBHOOK_URL=https://n8n-fly-thang.fly.dev
