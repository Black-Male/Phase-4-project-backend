# MOVIE API
## Description
This is an API created by Ruby on Rails. It has 6 tables: users, movies, favorites, videos, ratings and reviews.

This API serves as the backend for our movie app, KenyaFlix.
The link to the front-end is [here](https://github.com/MakenaG/phase-4-final-project)

The link to the site is[here](https://movie-app-c3ol.onrender.com/)

Or you can use https://movie-app-c3ol.onrender.com/

Or you can use this https://github.com/MakenaG/phase-4-final-project

The API has already been deployed. Here is the link to the [backend](https://backend-dc1w.onrender.com/)

Or you can go here https://backend-dc1w.onrender.com/

The tables have the following relationships
The movies table has a many to many relationship with the users table through the favorites table.
The users table has a one to many relationship with the videos, ratings, and reviews tables.
Movies table has a one to many relationship with both the ratings and the reviews tables.

It has the following public routes
      
       GET /movies
       
       GET /movies/:id
       
       GET /all_videos
       
       GET /all_videos/:id
       
       GET /reviews
       
These are the protected routes  
       
       DELETE /users/logout
       
       POST /users
       
       POST /users/login
       
       POST /users/reset
       
       DELETE /users/delete/:id
       
       GET /users/:id     
       
       POST /all_videos/:id
       
       GET /favorites
       
       GET /favorites/:id
       
       POST /favorites
       
       DELETE /favorites/:id
       
       GET /videos
       
       POST /videos
       
       PUT /videos/:id
       
       DELETE /videos/:id
       
       GET /users/reviews
       
       POST /reviews
       
       PUT /reviews/:id
       
       DELETE /reviews/:id
       
       GET /ratings
       
       POST /ratings
       
       PUT /ratings/:id
       
       DELETE /ratings/:id
       
       

## Requirements
In order to use this repo you need to have the following installed:

- OS [either: Windows 10+, Linux or MacOS(running on x86 or arm architecture)]
- VS Code
- Ruby

## Installation
Clone from this here [github](https://github.com/Black-Male/Phase-4-project-backend)

to clone follow this steps


Clone the repo by using the following:     

       https://github.com/Black-Male/Phase-4-project-backend

Change directory to the repo folder: 

        cd Phase-4-project-backend

Open it in Visual Studio Code

        code .

## Running This Application
Running the application is very straight forward. You can use the following steps to run the app. 

- Ensure the ruby gems are setup in your machine

      bundle install
      
- Perform database migrations

      rails db:migrate
      
- Run the application on the terminal

      rails console

- Run the server

      rails s      
      



## Author 

 Grace Aloo
 
 Glory Makena
 
 George Karanja
 
 Gregory Lubano

## License
MIT