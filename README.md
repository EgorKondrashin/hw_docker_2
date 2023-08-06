# Склады и товары (Docker)
## Build image:
### Создание образа
```
docker build . --tag stocks_products_image
```
## Run container:
### Создание и запуск контейнера (с именем) на основе образа stocks_products_image
```
docker run -d --name stocks_products_container -p 8000:6060 stocks_products_image
```
## Stop container:
### Остановка контейнера по имени
```
docker stop stocks_products_container
```

### Проверка командой 'curl':
```
curl localhost:8000/test
```

### Проверка логов:
```
docker logs stocks_products_container
```
