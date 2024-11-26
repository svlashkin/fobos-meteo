# Используем официальный образ Nginx в качестве базового
FROM nginx:alpine

# Копируем файл index.html в нужную директорию для Nginx
COPY index.html /usr/share/nginx/html/index.html

# Открываем порт 80 для доступа к сайту
EXPOSE 80

# Запускаем Nginx в фоновом режиме
CMD ["nginx", "-g", "daemon off;"]
