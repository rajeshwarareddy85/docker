FROM nginx:alpine

COPY target/static-site/ /usr/share/nginx/html/

EXPOSE 
