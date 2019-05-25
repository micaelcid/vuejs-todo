#
# NodeJS installing dependencies and building frontend
#
FROM node:alpine AS builder

WORKDIR /code
COPY . /code

RUN npm install \
 && npm run build

#
# NGINX provisioning frontend
#
FROM nginx:alpine AS runner
LABEL maintainer="Gabriel Tiossi<gabrieltiossi@gmail.com>"

WORKDIR /usr/share/nginx/html

# Generate NGINX vhost
RUN echo $\
'server {                                       \n\
    listen       8080;                          \n\
    server_name  localhost;                     \n\
                                                \n\
    location / {                                \n\
        root   /usr/share/nginx/html;           \n\
        index  index.html index.htm;            \n\
    }                                           \n\
                                                \n\
    error_page   500 502 503 504  /50x.html;    \n\
    location = /50x.html {                      \n\
        root   /usr/share/nginx/html;           \n\
    }                                           \n\
}' > /etc/nginx/conf.d/default.conf

# Copy from "builder" to "runner" container
COPY --from=builder --chown=nginx:nginx /code/dist /usr/share/nginx/html

# Fix permission issues changing nginx.pid location 
RUN sed -i "s,/var/run/nginx.pid,/tmp/nginx.pid,g" /etc/nginx/nginx.conf

USER nginx
EXPOSE 8080/tcp

CMD ["nginx", "-g", "daemon off;"]