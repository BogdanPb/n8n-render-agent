# n8n Dockerfile for Render
FROM n8nio/n8n:latest

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_HOST=0.0.0.0
ENV N8N_PORT=5678
ENV WEBHOOK_URL=https://<YOUR_RENDER_APP_URL>/
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

# ВАЖЛИВО: використовуємо entrypoint, який є у базовому образі
ENTRYPOINT ["tini", "--"]
CMD ["n8n"]
