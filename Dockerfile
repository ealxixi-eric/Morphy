FROM nginx:1.15-alpine
ENV  DEPLOY_PATH=/opt/porly-morphy-frontend
ENV  NGINX_CONF=/etc/nginx/conf.d
COPY ./build/ $DEPLOY_PATH
COPY ./deploy/web.conf $NGINX_CONF
EXPOSE 3000

