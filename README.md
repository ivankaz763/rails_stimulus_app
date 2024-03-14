# README

На сайтие есть 2 модели foo и bar со связью один ко многим
С помощью stimulus можно вывести дополнительные foo на странице index (по умолчанию показывается 2)
Есть сиды для генерации 

Для запуска нужно запустить 
- docker compose build
- docker-compose run --service-ports web bash
- rake db:create && rake db:migrate rake db:seed
- docker compose up