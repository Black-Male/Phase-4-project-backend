puts "WE ROLLING"

user = User.create!([
    {"username": "amaya may", "email": "amaya.amay@gmail.com", "password": "123" },
    {"username": "amaya maya", "email": "amayamay.may@gmail.com", "password": "123" },
    {"username": "amaya mayan", "email": "mayan.may@gmail.com", "password": "123" },
    {"username": "amaya meyers", "email": "meyers@gmail.com", "password": "123" }
])

movie = Movie.create!([
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
        "video": ""
    },
    {
        "title": "Indiana Jones and the Last Crusade",
        "description": "In the film, set largely in 1938, Indiana searches for his father, a Holy Grail scholar, who has been kidnapped and held hostage by the Nazis while on a journey to find the Holy Grail.",
        "runtime": "2h 7m",
        "release_date": "1989",
        "cast": "Harrison Ford",
        "director": "Steven Spielberg",
        "image_src": "https://upload.wikimedia.org/wikipedia/en/thumb/8/8c/Indiana_Jones_and_the_Last_Crusade.png/220px-Indiana_Jones_and_the_Last_Crusade.png",
        "video": ""
    },
    {
        "title": "Harry Potter and the Philosopher's Stone",
        "description": " The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint as Ron Weasley, and Emma Watson as Hermione Granger. Its story follows Harry's first year at Hogwarts School of Witchcraft and Wizardry as he discovers that he is a famous wizard and begins his formal wizarding education",
        "runtime": "2h 32m",
        "release_date": "2001",
        "cast": "Daniel Radcliffe, Rupert Grint, Emma Watson",
        "director": "Chris Colombus",
        "image_src": "data:image/jpeg;base64,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",
        "video": ""
    },
    {
        "title": "Indiana Jones and the Kingdom of the Crystal Skull",
        "description": "The fourth installment in the Indiana Jones series, it was released and takes place 19 years after the previous film. Set in 1957, it pits Indiana Jones (Harrison Ford) against Soviet KGB agents led by Irina Spalko (Cate Blanchett) searching for a telepathic crystal skull. Jones is aided by his former lover, Marion Ravenwood (Karen Allen), and their son, Mutt Williams (Shia LaBeouf)",
        "runtime": "2h 2m",
        "release_date": "2008",
        "cast": "Harrison Ford",
        "director": "Steven Spielberg",
        "image_src": "data:image/jpeg;base64,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",
        "video": ""
    },
    {
        "title": "Harry Potter and the Chamber of Secrets",
        "description": "The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint and Emma Watson as his best friends Ron Weasley and Hermione Granger respectively. The story follows Harry's second year at Hogwarts School of Witchcraft and Wizardry, where the Heir of Salazar Slytherin opens the Chamber of Secrets, unleashing a monster that petrifies the school's students.",
        "runtime": "2h 41m",
        "release_date": "2002",
        "cast": "Daniel Radcliffe, Rupert Grint, Emma Watson",
        "director": "Chris Colombus",
        "image_src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTltzcooPkGcy1fKKqzSuO8U6S9XBpNDR9MuYc9SS_L5AbAn66O",
        "video": ""
    }
    # {
    #     "title": "Harry Potter and the Chamber of Secrets",
    #     "description": "The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint and Emma Watson as his best friends Ron Weasley and Hermione Granger respectively. The story follows Harry's second year at Hogwarts School of Witchcraft and Wizardry, where the Heir of Salazar Slytherin opens the Chamber of Secrets, unleashing a monster that petrifies the school's students.",
    #     "runtime": "2h 41m",
    #     "release_date": "2002",
    #     "cast": "Daniel Radcliffe, Rupert Grint, Emma Watson",
    #     "director": "Chris Colombus",
    #     "image_src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTltzcooPkGcy1fKKqzSuO8U6S9XBpNDR9MuYc9SS_L5AbAn66O",
    #     "video": ""
    # },
    # {
    #     "title": "Harry Potter and the Chamber of Secrets",
    #     "description": "The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint and Emma Watson as his best friends Ron Weasley and Hermione Granger respectively. The story follows Harry's second year at Hogwarts School of Witchcraft and Wizardry, where the Heir of Salazar Slytherin opens the Chamber of Secrets, unleashing a monster that petrifies the school's students.",
    #     "runtime": "2h 41m",
    #     "release_date": "2002",
    #     "cast": "Daniel Radcliffe, Rupert Grint, Emma Watson",
    #     "director": "Chris Colombus",
    #     "image_src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTltzcooPkGcy1fKKqzSuO8U6S9XBpNDR9MuYc9SS_L5AbAn66O",
    #     "video": ""
    # },
    # {
    #     "title": "Harry Potter and the Chamber of Secrets",
    #     "description": "The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint and Emma Watson as his best friends Ron Weasley and Hermione Granger respectively. The story follows Harry's second year at Hogwarts School of Witchcraft and Wizardry, where the Heir of Salazar Slytherin opens the Chamber of Secrets, unleashing a monster that petrifies the school's students.",
    #     "runtime": "2h 41m",
    #     "release_date": "2002",
    #     "cast": "Daniel Radcliffe, Rupert Grint, Emma Watson",
    #     "director": "Chris Colombus",
    #     "image_src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTltzcooPkGcy1fKKqzSuO8U6S9XBpNDR9MuYc9SS_L5AbAn66O",
    #     "video": ""
    # },
    # {
    #     "title": "Harry Potter and the Chamber of Secrets",
    #     "description": "The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint and Emma Watson as his best friends Ron Weasley and Hermione Granger respectively. The story follows Harry's second year at Hogwarts School of Witchcraft and Wizardry, where the Heir of Salazar Slytherin opens the Chamber of Secrets, unleashing a monster that petrifies the school's students.",
    #     "runtime": "2h 41m",
    #     "release_date": "2002",
    #     "cast": "Daniel Radcliffe, Rupert Grint, Emma Watson",
    #     "director": "Chris Colombus",
    #     "image_src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTltzcooPkGcy1fKKqzSuO8U6S9XBpNDR9MuYc9SS_L5AbAn66O",
    #     "video": ""
    # },
    # {
    #     "title": "Harry Potter and the Chamber of Secrets",
    #     "description": "The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint and Emma Watson as his best friends Ron Weasley and Hermione Granger respectively. The story follows Harry's second year at Hogwarts School of Witchcraft and Wizardry, where the Heir of Salazar Slytherin opens the Chamber of Secrets, unleashing a monster that petrifies the school's students.",
    #     "runtime": "2h 41m",
    #     "release_date": "2002",
    #     "cast": "Daniel Radcliffe, Rupert Grint, Emma Watson",
    #     "director": "Chris Colombus",
    #     "image_src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTltzcooPkGcy1fKKqzSuO8U6S9XBpNDR9MuYc9SS_L5AbAn66O",
    #     "video": ""
    # },
    # {
    #     "title": "Harry Potter and the Chamber of Secrets",
    #     "description": "The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint and Emma Watson as his best friends Ron Weasley and Hermione Granger respectively. The story follows Harry's second year at Hogwarts School of Witchcraft and Wizardry, where the Heir of Salazar Slytherin opens the Chamber of Secrets, unleashing a monster that petrifies the school's students.",
    #     "runtime": "2h 41m",
    #     "release_date": "2002",
    #     "cast": "Daniel Radcliffe, Rupert Grint, Emma Watson",
    #     "director": "Chris Colombus",
    #     "image_src": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTltzcooPkGcy1fKKqzSuO8U6S9XBpNDR9MuYc9SS_L5AbAn66O",
    #     "video": ""
    # }
])

2.times do
    Favorite.create!(
      user_id: rand(1..4),
      movie_id: rand(1..10)
    )
end

video = Video.create!([
     {
        "title": "responsive react movie website",
        "video": "https://www.youtube.com/embed/ntYXj9W1Ez8",
        "user_id": 1,
        "description": "random you tube video about creating a react movie website"
     },
     {
        "title": "responsive react movie website",
        "video": "https://www.youtube.com/embed/ntYXj9W1Ez8",
        "user_id": 4,
        "description": "random you tube video about creating a react movie website"
     },
     {
        "title": "movie web",
        "video": "https://www.youtube.com/embed/ntYXj9W1Ez8",
        "user_id": 3,
        "description": "random you tube video about creating a react movie website"
     },
     {
        "title": "movie",
        "video": "https://www.youtube.com/embed/ntYXj9W1Ez8",
        "user_id": 2,
        "description": "random you tube video about creating a react movie website"
     }
])

puts "OVER AND OUT"