# Dockerfile - Frontend SPA (HTML + JS + CSS)

FROM nginx:alpine

# Copia os arquivos do frontend para o diretório padrão do Nginx
COPY . /usr/share/nginx/html

# Expondo a porta padrão do Nginx
EXPOSE 80
