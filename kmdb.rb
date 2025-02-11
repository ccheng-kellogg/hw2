# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.

Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model.

#Create Studio
studio = Studio.new
studio["name"] = "Warner Bros."
studio.save
puts studio.inspect

#Create Movie

movie = Movie.new
movie["title"] = "Batman Begins"
movie["year_released"] = "2005"
movie["rated"] = "PG-13"
movie["studio"] = studio["id"]

movie.save

movie2 = Movie.new
movie2["title"] = "The Dark Knight"
movie2["year_released"] = "2008"
movie2["rated"] = "PG-13"
movie2["studio"] = studio["id"]
movie2.save

movie3 = Movie.new
movie3["title"] = "The Dark Knight Rises"
movie3["year_released"] = "2012"
movie3["rated"] = "PG-13"
movie3["studio"] = studio["id"]
movie3.save

#Create Actor

actor = Actor.new
actor["name"] = "Christian Bale"
actor.save

actor2 = Actor.new
actor2["name"] = "Michael Caine"
actor2.save

actor3 = Actor.new
actor3["name"] = "Liam Neeson"
actor3.save

actor4 = Actor.new
actor4["name"] = "Katie Holmes"
actor4.save

actor5 = Actor.new
actor5["name"] = "Gary Oldman"
actor5.save

actor6 = Actor.new
actor6["name"] = "Heath Ledger"
actor6.save

actor7 = Actor.new
actor7["name"] = "Aaron Eckhart"
actor7.save

actor8 = Actor.new
actor8["name"] = "Maggie Gyllenhaal"
actor8.save

actor9 = Actor.new
actor9["name"] = "Tom Hardy"
actor9.save

actor10 = Actor.new
actor10["name"] = "Joseph Gordon-Levitt"
actor10.save

actor11 = Actor.new
actor11["name"] = "Anne Hathaway"
actor11.save


#Create Role

role = Role.new
role["first_name"] = "Christian"
role["last_name"] = "Bale"
role["character_name"] = "Bruce Wayne"
role.save

role = Role.new
role["first_name"] = "Christian"
role["last_name"] = "Bale"
role["character_name"] = "Bruce Wayne"
role.save

role2 = Role.new
role2["first_name"] = "Michael"
role2["last_name"] = "Caine"
role2["character_name"] = "Alfred"
role2.save

role3 = Role.new
role3["first_name"] = "Liam"
role3["last_name"] = "Neeson"
role3["character_name"] = "Ra's Al Ghul"
role3.save

role4 = Role.new
role4["first_name"] = "Katie"
role4["last_name"] = "Holmes"
role4["character_name"] = "Rachel Dawes"
role4.save

role5 = Role.new
role5["first_name"] = "Gary"
role5["last_name"] = "Oldman"
role5["character_name"] = "Commissioner Gordon"
role5.save

role6 = Role.new
role6["first_name"] = "Heath"
role6["last_name"] = "Ledger"
role6["character_name"] = "Joker"
role6.save

role7 = Role.new
role7["first_name"] = "Aaron"
role7["last_name"] = "Eckhart"
role7["character_name"] = "Harvey Dent"
role7.save

role8 = Role.new
role8["first_name"] = "Maggie"
role8["last_name"] = "Gyllenhaal"
role8["character_name"] = "Rachel Dawes"
role8.save

role9 = Role.new
role9["first_name"] = "Tom"
role9["last_name"] = "Hardy"
role9["character_name"] = "Bane"
role9.save

role10 = Role.new
role10["first_name"] = "Joseph"
role10["last_name"] = "Gordon-Levitt"
role10["character_name"] = "John Blake"
role10.save

role11 = Role.new
role11["first_name"] = "Anne"
role11["last_name"] = "Hathaway"
role11["character_name"] = "Selina Kyle"
role11.save


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.

movies=Movie.all
for movie in Movie.all
  # read each contact row's first_name and last_name columns
  title = movie["title"]
  year_released = movie["year_released"]
  rated = movie["rated"]
  warner_bros = Studio.find_by({"id" => movie["studio"]})
  puts warner_bros.inspect
  # display the first_name and last_name
  puts "#{title}#{year_released}#{rated}#{warner_bros}"
end

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
roles=Role.all
for role in Role.all
  # read each contact row's first_name and last_name columns
  title = movie["title"]
  first_name = role["first_name"]
  last_name = role["last_name"]
  character_name = role["character_name"]
  # display the first_name and last_name
  puts "#{title}#{first_name}#{last_name}#{character_name}"
end