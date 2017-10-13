# README

Files used:

* /db 

* /config/database.yml

* /config/routes.rb

* /app/models/article.rb

* /app/controllers/api/v1/articles_controller.rb - RESTful api - Bulk of code is here

How to install:

Download

Run 'bundle install' to install Faker

Modify database.yml with your db username/password info

Run 'rake db:create' - to create database

Run 'rails db:migrate' - to migrate table

Run 'rails db:seed' - to fill table with random default values

Start server with 'rails s'

Make HTTP requests with tool like Postman to http://localhost:3000/api/v1/articles/


To create or update new articles, use content-type json in header
JSON data in articles is made up of title and body:

{

    "title":"Sample title",

    "body":"Sample body"

}

To get only one article, delete an article, or update an article, make sure to use http://localhost:3000/api/v1/articles/# 
where the # is the number corresponding to the article ID

To get all articles or post a new article, use http://localhost:3000/api/v1/articles/