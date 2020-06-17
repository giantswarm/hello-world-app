FROM nginx:1.16-alpine
RUN apk --no-cache add jq findutils gzip && \
  rm -r /etc/nginx/conf.d && \
  mkdir -p /etc/nginx/config
RUN mkdir /www
COPY index.html /www
COPY nginx.conf /etc/nginx/config
EXPOSE 8000
RUN chown -R nginx:nginx /www
USER nginx
CMD ["nginx","-g","daemon off;", "-c", "/etc/nginx/config/nginx.conf"]