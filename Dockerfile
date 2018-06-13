FROM registry.access.redhat.com/rhscl/nginx-112-rhel7
COPY site /var/www
RUN chmod -R 777 /var/www
EXPOSE 8080
CMD ["nginx", "-p", "/var/www","-g", "daemon off;"]
