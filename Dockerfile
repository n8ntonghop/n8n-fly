FROM n8nio/n8n

# Env không quan trọng lắm vì fly.toml override, cứ giữ cũng được
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=123456

# Quan trọng: ép n8n chạy với host 0.0.0.0
ENTRYPOINT ["n8n"]
CMD ["start", "--tunnel", "--host", "0.0.0.0"]
