FROM n8nio/n8n

# Ép start đúng cổng và host
CMD ["n8n", "start", "--tunnel", "--host", "0.0.0.0"]
