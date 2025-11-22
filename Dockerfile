# Usar imagen de nginx desde ECR público de AWS
FROM public.ecr.aws/nginx/nginx:latest

# Crear página HTML de prueba
RUN echo '<html><body><h1>Ambiente: PRUEBAS</h1><p>Version: 1.0</p><p>Pipeline AWS - IUE</p></body></html>' > /usr/share/nginx/html/index.html

# Exponer puerto 80
EXPOSE 80

# Comando para ejecutar nginx
CMD ["nginx", "-g", "daemon off;"]
