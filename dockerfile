# Usa a imagem oficial do Nginx como base
FROM nginx:alpine

# Remove os arquivos padrão do Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia todos os arquivos .html do seu projeto para a pasta padrão do Nginx
COPY *.html /usr/share/nginx/html/

# Expõe a porta 80 (porta padrão do Nginx dentro do container)
EXPOSE 80

# Inicia o Nginx
CMD ["nginx", "-g", "daemon off;"]
