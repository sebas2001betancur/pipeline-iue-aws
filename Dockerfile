# Usar imagen de nginx desde ECR público de AWS
FROM public.ecr.aws/nginx/nginx:latest

# Crear página HTML de prueba
RUN echo '<!DOCTYPE html>\
<html>\
<head>\
    <title>App IUE - Pipeline AWS</title>\
    <style>\
        body { font-family: Arial; text-align: center; padding: 50px; }\
        h1 { color: #333; }\
        .ambiente { color: #007bff; font-size: 24px; }\
        .version { color: #28a745; }\
    </style>\
</head>\
<body>\
    <h1>Aplicación IUE - Computación en la Nube</h1>\
    <p class="ambiente">Ambiente: DESARROLLO</p>\
    <p class="version">Version: 1.0</p>\
    <p>Pipeline CI/CD con AWS CodePipeline</p>\
</body>\
</html>' > /usr/share/nginx/html/index.html

# Exponer puerto 80
EXPOSE 80

# Comando para ejecutar nginx
CMD ["nginx", "-g", "daemon off;"]
