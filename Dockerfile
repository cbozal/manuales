FROM registry.access.redhat.com/rhscl/nginx-112-rhel7
COPY site /opt/app-root/src
EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
