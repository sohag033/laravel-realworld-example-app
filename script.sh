#!/bin/bash
cd /root/laravel-realworld-example-app
docker run --rm -v $(pwd):/app composer install
