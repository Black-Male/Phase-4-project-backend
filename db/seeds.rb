# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first
# Create 10 movies
puts "WE ROLLING"

# 10.times do
#     movie = Movie.create!(
#       title: Faker::Movie.title,
#       description: Faker::Lorem.paragraph,
#       runtime: Faker::Number.between(from: 60, to: 180),
#       release_date: Faker::Date.between(from: 10.years.ago, to: Date.today),
#       cast: Faker::Name.name,
#       director: Faker::Name.name
#     )
  
#     # Generate 5 reviews for each movie
#     5.times do
#       Review.create!(
#         comment: Faker::Lorem.paragraph,
#         user_id: Faker::Number.between(from: 1, to: 3),
#         movie_id: movie.id
#       )
#     end
  
#     # Generate 3 ratings for each movie
#     3.times do
#       Rating.create!(
#         rating: Faker::Number.between(from: 1, to: 5),
#         user_id: Faker::Number.between(from: 1, to: 3),
#         movie_id: movie.id
#       )
#     end
#   end
# 10.times do
#   Favorite.create!(
#     user_id: rand(1..4),
#     movie_id: rand(1..10)
#   )
# end

user = User.create([
    {"name": "amaya may", "email": "amaya@gmail.com", "password": "123" },
    {"name": "amaya maya", "email": "amayamay@gmail.com", "password": "123" },
    {"name": "amaya mayan", "email": "mayan@gmail.com", "password": "123" },
    {"name": "amaya meyers", "email": "meyers@gmail.com", "password": "123" }
])

movie = Movie.create([
    {
        "title": "The Avengers",
        "description": "Marvel's The Avengers or simply The Avengers, is a 2012 American superhero film based on the Marvel Comics superhero team of the same name",
        "runtime": "2h 23m",
        "release_date": "2012",
        "cast": "Robert Downey Jnr,Chris Evans, Jeremy Renner, Scarlett Johansson, Mark Ruffalo, Chris Hemsworth",
        "director": "Joss whedon",
        "image_src": "https://upload.wikimedia.org/wikipedia/en/8/8a/The_Avengers_%282012_film%29_poster.jpg",
        "video": ""
    },
    {
        "title": "Avengers: Age of Ultron",
        "description": "Avengers: Age of Ultron is a 2015 American superhero film based on the Marvel Comics superhero team the Avengers",
        "runtime": "2h 21m",
        "release_date": "2015",
        "cast": "Robert Downey Jnr,Chris Evans, Jeremy Renner, Scarlett Johansson, Mark Ruffalo, Chris Hemsworth",
        "director": "Joss Whedon",
        "image_src": "https://upload.wikimedia.org/wikipedia/en/f/ff/Avengers_Age_of_Ultron_poster.jpg",
        "video": ""
    },
    {
        "title": "Avengers: Infinity War",
        "description": "Avengers: Infinity War is a 2018 American superhero film based on the Marvel Comics superhero team the Avengers",
        "runtime": "2h 29m",
        "release_date": "2018",
        "cast": "Robert Downey Jnr,Chris Evans, Jeremy Renner, Scarlett Johansson, Mark Ruffalo, Chris Hemsworth",
        "director": "Joss Whedon",
        "image_src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmE2vwxy5KaCu7cRuYYdgNdQKddux5OYgGwsPo0kqP_xzLnsDV",
        "video": ""
    },
    {
        "title": "Avengers: Endgame",
        "description": "Avengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers",
        "runtime": "3h 2m",
        "release_date": "2019",
        "cast": "Robert Downey Jnr,Chris Evans, Jeremy Renner, Scarlett Johansson, Mark Ruffalo, Chris Hemsworth",
        "director": "Joss Whedon",
        "image_src": "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQA_-tL18_rj9zEcjN6n41NEaJm-kRNF9UeOtvksZ4z_OW6jRA9",
        "video": ""
    },
    {
        "title": "Indiana Jones and the raiders of the lost ark",
        "description": "Set in 1936, the film stars Harrison Ford as Indiana Jones, a globetrotting archaeologist vying with Nazi German forces to recover the long-lost Ark of the Covenant which is said to make an army invincible",
        "runtime": "1h 55m",
        "release_date": "1981",
        "cast": "Harrison Ford",
        "director": "steven spielberg",
        "image_src": "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTrhgAIT6oLWjCz0SlESYkwJqa1sHVFxVw18wjDt-vyyOARckrQ",
        "video": ""
    },
    {
        "title": "Indiana Jones and the temple of Doom",
        "description": " It is the second installment in the Indiana Jones franchise, and a prequel to the 1981 film Raiders of the Lost Ark, featuring Harrison Ford who reprises his role as the title character. Kate Capshaw, Amrish Puri, Roshan Seth, Philip Stone and Ke Huy Quan, in his film debut, star in supporting roles. In the film, after arriving in India, Indiana Jones is asked by desperate villagers to find a mystical stone and rescue their children from a Thuggee cult practicing child slavery, black magic, and ritual human sacrifice in honor of the goddess Kali",
        "runtime": "1h 58m",
        "release_date": "1984",
        "cast": "Harrison Ford",
        "director": "Steven Spielberg",
        "image_src": "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTeH1fEg2Mh-4vzmr0XPLPmZS9yfnAhJYkqb-6ym6TdR-EjgYra",
        "video"
    },
    {
        "title": "Avengers",
        "description": "",
        "runtime": "",
        "release_date": "",
        "cast": "",
        "director": "",
        "image_src": "",
        "video": ""
    },
    {
        "title": "Avengers",
        "description": "",
        "runtime": "",
        "release_date": "",
        "cast": "",
        "director": "",
        "image_src": "",
        "video": ""
    },
    {
        "title": "Avengers",
        "description": "",
        "runtime": "",
        "release_date": "",
        "cast": "",
        "director": "",
        "image_src": "",
        "video": ""
    },
    {
        "title": "Avengers",
        "description": "",
        "runtime": "",
        "release_date": "",
        "cast": "",
        "director": "",
        "image_src": "",
        "video": ""
    }
])

puts "OVER AND OUT"