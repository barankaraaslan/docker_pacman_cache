FROM nginx

RUN mkdir -p /srv/http/pacman-cache
RUN chmod o+w /srv/http/pacman-cache

COPY nginx.conf /etc/nginx/nginx.conf

VOLUME /srv/http/pacman-cache

EXPOSE 80