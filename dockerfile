# Usa a imagem oficial do Nginx
FROM nginx:alpine

# Copia todos os arquivos .html para a pasta padrão do nginx
COPY *.html /usr/share/nginx/html/

# Expõe a porta 80 para acessar o site
EXPOSE 80
