FROM registry.access.redhat.com/rhscl/nginx-112-rhel7
COPY site /usr/share/nginx/html
EXPOSE 8080
CMD ["nginx", "-p", "/usr/share/nginx/html","-g", "daemon off;"]
