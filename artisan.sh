#!/bin/bash
docker-compose exec app 
php artisan key:generate && php artisan config:cache
