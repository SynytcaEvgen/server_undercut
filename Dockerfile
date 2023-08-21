FROM --platform=linux/amd64 nginx:latest

# Copy config files
# *.conf files in conf.d/ dir get included in main config

COPY default.conf /etc/nginx/templates/default.conf.template
# Expose the listening port
# EXPOSE 80


# Launch NGINX
CMD [ "nginx", "-g", "daemon off;" ]