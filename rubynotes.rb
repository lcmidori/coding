cd ~/code/laseven/fullstack-challenges/

command d
command shft d copies and returns line to next line
cmd ctrl g selects all code
cmd

################################################################################################
#built in methods and syntax
###########################################################################################

#make a comment with the # sign

=begin
makes a multiline comment
doesn't need any # symbols
=end

=begin
Addition (+)
Subtraction (-)
Multiplication (*)
Division (/)
Exponentiation (**)
Modulo (%) returns the remainder of a division equation
=end


harrison = "person"
age = 8 + 1
#crates saves object to a variable

variable_name = gets.chomp
#allows user input

variable.length
#gets length of string or array

variable.size
#gets length of array or range

variable.count
#counts items in an array

variable.reverse
#reverses string or order of array

variable.downcase
#downcases any capitalized letter in string or array

variable.upcase
#upcases any downcased letter in string or array

answer.capitalize
#downcases first letters of words in strings or array

beatles = ["john", "ringo", "george"]
beatles << "paul"
#add append element into array

beatles.delete("john")
#delete element from array
beatles.delete_at(0)
#delete element from array based on index number

max_value_set = [[0, 5], [9, 14], [33, 0]]
max_value_set = max_value_set.sort { |x,y| x[1] <=> y[1] } #=> [[33, 0], [0, 5], [9, 14]]
#sorts an array of arrays by stating index of element to be sorted by


"Hello" == "Hello"
#checks if something is true

"Hello, there are #{1000/3} people in the line."
#interpolate function into string

'two: #{1 + 1}' #=> "two: #{1 + 1}"
"two: #{1 + 1}" #=> "two: 2"
#single quotes do not process functions

1000.class
#checks object class

"1000".to_i
#changes converts to integer; strings will become 0

20.even? #=> true
20.odd? #=> false
#checks even and odd numbers

"hello " + 100.to_s
#converts to string

3.155.truncate
#deletes decimal value

3.51.round
#rounds to the closest integer

['Huey', 'Dewey', 'Louie'].sort
#places elements in alphabetical order or lowest to highest value

%w[hello mang]
#alternate shortened way of writing array

1000.to_f #=> 1000.0
#changes to float

1000.0 / 3 #=> 333.3333333333333
#specify float value to return float; will not return float otherwise (1000 / 3)

(1..100).size
#includes entire range

(1...100).size
#includes range in between objects

(1..100).to_a
#turns range into an array

[6, 4, 2, 5].sample(2)
#randomly chooses a specified number out of an array; default is one if no brackets

name.concat(" ","_", b, "_", b) #=> bobert __
#adds any character inserted between the quotations; variables do not need to be placed in quotes

[1, 2].include?(1)
#checks if array includes an object

musicians = ['Jimmy Page', 'Robert Plant', 'John Paul Jones', 'John Bonham']
musicians.map do |musician|
  musician.upcase
end
#.map transforms an array into another

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers.each_slice(2).to_a # => [[1, 2], [3, 4], [5, 6], [7, 8], [9]]
#group array items by pair or whatever size is specified

star.delete(nil)
star.delete("Emperor")
beatles.delete_at(0)
#delete objects in an array either with element or index number

list.reject! {|item| item.name =~ /cat|dog|rat/i }
#delete array items that match or don't match a certain a criteria; must be used instead of an each iterator

condition ? code_when_truthy : code_when_falsey
#eg.
if_this_is_a_true_value ? then_the_result_is_this : else_it_is_this
#ternerary operator shortened abbreviated alternate way to write if else conditional statement

[1, 2, 3].each do |num|
 puts num
End

[1, 2, 3].each { |num| puts num }
#syntax iterate elements in an array long and short way

beatles << "paul"
beatles.push("paul")
#append add items to array

beatles[0]
array.first
beatles[-1]
array.last
#retrieve item from array; 0 fot first item; -1 for last item

students_age = {
  "Peter" => 24,
  "Mary" => 25,
  "George" => 22,
  "Emma" => 20
}
#syntax for hash

john =
{ first_name: 'John',
  github_nickname: 'Smith'
}
#using symbols to create hash

paris = {
  "country" => "France",
  "population" => 2211000
}
paris["country"] # => "France"
paris["population"] # => 2211000
#call items keys in a hash

paris["destination"] = "Eifel"
paris["country"] =  "UK"
person[:last_name] = "Doe"
#change value of a key in a hash; semi colon on symbol is reversed

paris["country"]
person[:last_name]
#read specified value in a hash

paris.delete("destination")
#delete key in a hash

[paris.each do |key, value|
puts "#{key}: #{value}"
end]
#iterate items in a hash

paris.key?("hot")

john = {
  first_name: "John",
  github_nickname: "Smith"
}
john.key? :first_name # => true
#checks if key exists present inside of hash

john = {
  first_name: "John",
  github_nickname: "Smith"
}
john.keys # => [:first_name, :github_nickname]
#retrieve shows all keys of hash

john = {
  first_name: "John",
  github_nickname: "Smith"
}
john.values # => ["John", "Smith"]
#shows all values of hash

john.value? "John"
#checks if value exists present inside of hash

cities = {
  "London" => { "country" => "England", "monument" => "Big Ben" },
  "Paris" => { "country" => "France", "monument" => "Tour Eiffel" }
}
cities["Paris"]["monument"]  #=> "Tour Eiffel"


cities = {
  London: { country: "England", monumnet: "Big Ben" },
  Paris: { country: "France", monumnet: "Eiffel Tower" }
}
#syntax for[] hash within a hash

person = {
  first_name: "John",
  last_name: "Smith",
}
person[:age] = 42
#add key value pair to a hash

h.sort_by {|k, v| [v, k] }
#sorts hash based on value and then key if values are the same

usa_regions["west"] = usa_regions.delete("rest")
#rename hash within a hash

a.object_id
#returns ruby shell object number

hash = Hash.new
#creates an empty hash

john.each_key do |key|
  puts "John has a #{key}"
end
#iterates only the keys of a hash

add_column  :table_name,  :NEW_COLUMN_NAME, :DATA_TYPE

john = { first_name: "John", github_nickname: "Smith" }
john.each_value do |value|
  puts "#{value} is an attribute of john"
end
#iterates only the values of a hash

require 'benchmark'
h = {:a => "val1", :b => "val2", :c => "val3"}
Benchmark.bm do |x|
  x.report { 1_000_000.times { h[h.keys[0]] = 'ghgh'} }
  x.report { 1_000_000.times { h.values[0] = 'ghgh'} }
end
#performance test

"All you need is code".split      #=> ["All", "you", "need", "is", "code"]
"All you need is code".split(" ") #=> ["All", "you", "need", "is", "code"]
#splits string into individual words in an array

"john@hotmail.com".split("@")    #=> ["john", "hotmail.com"]
# you can specify the separator as an argument...

"john".split("")                 #=> ["j", "o", "h", "n"]
# ... if it's an empty string #split will return an array of characters

match_data = "John Doe".match(/^(\w+) (\w+)$/)
# => #<MatchData "John Doe" 1:"John" 2:"Doe">
puts "Firstname: #{match_data[1]}"
puts "Lastname: #{match_data[2]}"
# Firstname: John
# Lastname: Doe
#regex expression to find matching format

/\d/          # like /[0-9]/
/\D/          # like /[^0-9]/
/\w/          # like /[a-zA-Z0-9_]/
/\W/          # like /[^a-zA-Z0-9_]/
/\b/          # word boundary (start or end of word)
/\s/          # whitespace (space, tab, line-break, ...)
#regex expressions to include or exclude ranges

/^abc/
#^ searches for following pattern only at begining of line

/\Aabc/
#\A searches for a specified pattern at the begining of an entire STRING paragraph

/abc$/
#regex pattern at end of LINE

/abc\z/
#regex pattern at the end of a STRING end of a paragraph

/abc?/         # ab followed by 0..1 c
/abc*/         # ab followed by 0..∞ c
/abc+/         # ab followed by 1..∞ c
/abc{3}/       # ab followed by 3 c
#regex quantifier to specify number of characters in search

/./           # any character
/[aB9]/       # a OR B OR 9
/[0-9]/       # any numeric character
/[a-zA-Z]/    # any alphabetical character
/[^a-c]/      # any char BUT a, b OR c
/[^abc]/      # any single character except: a, b, or c
#define ranges in regex

/(abc)+/      # 1..∞ abc
/(a|b)c/      # ac OR bc
#define group patterns in regex

/hello/i          # Will match hello, Hello, HeLlO, HELLO, ...
/hello.world/m    # Will match hello\nworld
#regex modifiers for case insensitve and multiline searches

name = "Casanova"
name.gsub(/[aeiou]/, "i")
#relpaces specified pattern with another specified string

(0[1-9]|[1-9]\d|2[AB])\d{3}
2A273
2B384
13272
#regex that excepts different possibilities


require "pry-byebug"
binding.pry
#degugging gem place require "pry-byebug" at top of page; .pry reads the lines above it

["a", "b"].is_a?
#checks if item is array




class Vehicle class #defining name is capitalized camel case
  def initialize(color,transmission)
    @color = color
    @transmission = transmission #instance variables
  end


  def color
    return @color     #equivalent to     attr_reader :color
  end

  def color=(color)    #equivalent  to  attr_writer :color
      @color = color
  end

  def transmission
    return @transmission
  end

  def crash(target)
    puts "going to crash into #{target}"
  end

  def self.engine #class method
    w% { gas diesel}
  end
end

require_relative 'vehicle'

class Car < Vehicle
end #syntax for implementing a superclass

my_car = Car.new('red', 'manual') #create new instance within class; object is in snake case
your_car = Car.new

my_car.color = 'green' #change attribute
#initialize class reader and writer accessors

my_car.color
#retrieve attribute of object

require_relative 'vehicle'

class Truck < Vehicle
  def max_cargo
    @max_cargo = max_cargo
  end

  def crash(target)
    puts "Burp"
    super(target)
  end
end

require_relative 'vehicle'

class Helicopter < Vehicle
  def initialize(color, altitude)
  @altitude = altitude
  super(color)
end

  def crash(target)
    puts "Burp"
    super(target)
  end
end


require 'open-uri'
url = 'https://www.lewagon.com'
puts open(url).read.class # => String
#how to open webpage in ruby

def snacks=(snacks)
    @snacks = snacks
  end
end
#syntax for defining write permission on class attribute


CSV.foreach(filepath, { headers: true }) do |row|
  puts row
end
#syntax for when there is header in CSV file


<beers>
  <title>Great beers</title>
  <beer>
    <name>Edelweiss</name>
    <appearance>White</appearance>
    <origin>Austria</origin>
  </beer>
  <beer>
    <name>Cuvée des Trolls</name>
    <appearance>Blond</appearance>
    <origin>Belgium</origin>
  </beer>
</beers>

require 'nokogiri'

filepath  = 'beers.xml'
builder   = Nokogiri::XML::Builder.new(encoding: 'UTF-8') do
  beers do
    title 'Great beers'
    beer do
      name        'Edelweiss'
      appearance  'White'
      origin      'Austria'
    end
    beer do
      # [...]
    end
  end
end

File.open(filepath, 'w') { |file| file.write(builder.to_xml) }
#storing data in a xml with nokogiri

require 'csv'

filepath = 'beers.csv'

CSV.open(filepath, 'wb') do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  csv << ['Edelweiss', 'White', 'Austria']
  csv << ['Cuvée des Trolls', 'Blond', 'Belgium']
end
#add data to a csv file parse


require 'json'
serialized_beers = '{ "beers": [
  { "name": "Edelweiss", "appearance": "White", "origin": "Austria" },
  { "name": "Cuvée des Trolls", "appearance": "Blond", "origin": "Belgium"}
]}'
beers = JSON.parse(serialized_beers)
beers.class
#parse a json file


require 'json'
beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Cuvée des Trolls', ...
  }
]}

File.open(filepath, 'w') do |file|
  file.write(JSON.generate(beers))
end
#store data in a json file


require 'open-uri'
require 'nokogiri'

url = "http://www.letscookfrench.com/recipes/find-recipe.aspx?s=chocolate"

html_file = open(url).read
html_doc = Nokogiri.HTML(html_file)

html_doc.search('.m_titre_resultat a').each do |element|
  puts element.text.strip
  puts element.attribute('href').value
end
#scrape data from a website; featured type of item to be scraped is in brackets after html_doc.search


require 'open-uri'
require 'json'

url = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list")

ingredients_hash = JSON.parse(url.read)
ingredients_array =  ingredients_hash["drinks"]

ingredients_array.each do |a|
ingredients_array = a["strIngredient1"].to_s
end
#parse from a json file into an array


html_doc.search('selector').each do |element|
  puts element.text
end
#search html elements with a selector

{ "type": "success",
  "value": {
    "id": 237,
    "joke": "Human cloning is outlawed because of Chuck Norris, because then it would be possible for a Chuck Norris roundhouse kick to meet another Chuck Norris roundhouse kick. Physicists theorize that this contact would end the universe.",
    "categories": [ ]
  }
}

require 'json'
require 'open-uri'

api_url = 'http://api.icndb.com/jokes/random?escape=javascript'

open(api_url) do |stream|
  quote = JSON.parse(stream.read)
  puts quote['value']['joke']
end
#parses api with json and openuri open-uri


"title": "Great beers",
  "beers": [
    {
      "name": "Edelweiss",
      "appearance": "White",
      "origin": "Austria"
    },
    {
      "name": "Cuvée des Trolls",
      "appearance": "Blond",
      "origin": "Belgium"
    },
    # ...
  ]
}
#json format


<?xml version="1.0" encoding="UTF-8"?>
<beers>
  <title>Great beers</title>
  <beer>
    <name>Edelweiss</name>
    <appearance>White</appearance>
    <origin>Austria</origin>
  </beer>
  <beer>
    <name>Cuvée des Trolls</name>
    <appearance>Blond</appearance>
    <origin>Belgium</origin>
  </beer>
</beers>
And the parsing program:

require 'nokogiri'

# step 1: Prepare the .xml file for Nokogiri
file = File.open('beers.xml')

# step 2: Convert the .xml file in a Nokogiri::XML document
document  = Nokogiri::XML(file)

# step 3: You can iterate through elements of the Nokogiri::XML document
document.root.xpath('beer').each do |beer|
  name        = beer.xpath('name').text
  appearance  = beer.xpath('appearance').text
  origin      = beer.xpath('origin').text

  puts "#{name}, a #{appearance} beer from #{origin}"
end
#parse extract data from an xml file


CSV.foreach(filepath, { headers: true }) do |row|
  puts row
end
#parse data into an array from CSV

require 'open-uri'
url = 'https://www.lewagon.com'
puts open(url).read.class
#open url in ruby


"Let's play tic tac toe".scan(/t../) # => ["t's", "tic", "tac", "toe"]
"Let's play tic tac toe".scan(/\bt../) # => ["tic", "tac", "toe"]
#regex scan that returns scaned string into an array word boundary \b

class Employee
  def initialize(name, salary)
    @name, @salary = name, salary
  end

  def salary_per_month
    @salary / 12
  end
end


class Manager < Employee
  def salary_per_month
    super + 300
    # Managers have a 300$ bonus
  end
end
#overrides parent class and calls in the parent's method with super

class Car
  def self.start
    return "Engine started"
  end
#class method

  def paint_red
    return "#{self} is now red"
  end
end
#instance method


class Student
  def initialize(first_name, language = "English")
    @first_name = first_name
    @language = language
  end
end

english_student = Student.new("John")
french_student = Student.new("Jean", "Français")
#setting default value in initialize allows new objects to be created without passing an argument

class Car
  def start_engine
    start_oil_pump
    init_spark_plug
    puts "engine started"
  end

  private

  def start_oil_pump
    puts "oil pump started"
  end

  def init_spark_plug
    puts "spark plug initiated"
  end
end
#private is used for internal purposes only



class TaskRepository
  ...
  def add(task)
    @tasks << task
  end

  def all
    @tasks
  end

  def find(index)
    @tasks[index]
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
#MVC every operation on the @tasks array should be made possible by an instance method in the TaskRepository



class Task
  attr_reader :description
  def initialize(description)
      @description = description
      @done = false
    end

  def done?
    @done
  end

  def done
    @done = true
  end
end
#MVC task for completion check

counter = 1
until counter > 10
  puts counter
  counter += 1
end
#until counter loop

i = 0
while i < 5
  puts i
  i += 1
end
#while loop counter

print "write here"
user_input = gets.chomp
input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  "no s here"
end
#gsub syntax replace letters

SELECT column FROM table;
#SQL basic structure to retieve data

SELECT c.starts_at, p.first_name, p.last_name, d.first_name, d.last_name
FROM consultations c
JOIN patients p ON c.patient_id = p.id
JOIN doctors d ON c.doctor_id = d.id;
#SQL for 3 tables retrieving names from different tables (doctor patient consultation)

SELECT * FROM doctors
JOIN consultations ON doctors.id = consultations.doctor_id;
#SQL unrefractored syntax

SELECT * FROM doctors WHERE specialty LIKE "%surgery";
#SQL to return all columns from a table that include a certain word in the column that is specified after WHERE

sqlite3 db.sqlite
#terminal command to create SQL database in a directory

SELECT COUNT(*) as c, specialty
FROM doctors
GROUP BY specialty
ORDER BY c DESC;
#SQL that groups table rows according to a specified column and then counts each group and assembles them in descending order

SELECT * FROM restaurants
WHERE rating >= 4
ORDER BY rating ASC
LIMIT 5;
#limit finds first 5 doctors


require 'sqlite3'
DB = SQLite3::Database.new(File.expand_path('doctors.sqlite'), __dir__))
DB.results_as_hash = true

class Doctor
  attr_reader :id
  attr_accessor : :specialty

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @age = attributes[:age]
    @specialty = attributes[:specialty]
    # TODO: store other attributes as instanced variable (exercise)
  end

  def save
    if @id
      DB.execute("UPDATE doctors SET neam = '#{@name}', specialty = '#{@specialty}', age = '#{@age}'
        WHERE id = #{@id};
        ")
    else
    DB.execute("
      INSERT INTO doctors (name, age)
      VALUES (#{@name}', #{@age};
      ")
    @id = DB.last_inset_row_id
  end
end
end

p.doctors.first['name']




SELECT *
  FROM users
 WHERE email = 'user@email.com'
   AND pass  = 'password'' LIMIT 1'


   no longer need to initialize
   it already sets up the model to work with the database.

   restaurant = Restaurant.new
   restaurant.save
   Restaurant.create does trestautant .new and save
   restaurant.destroy removes one restaurant
   restaurant.destroy_all removes all restaurants
   Restaurant.all shows all?
   Restaurant.find(id) return any restaurant with chosen id number

   Restaurant.count return total number of restaurants

Restaurant.where(name: "Mark's")
Restaurant.where("name LIKE ?", "%Mark%")
#calls all restaurants in an array that fulfill this

Restaurant.first
#calls the first instance of an ActiveRecord model; returns the first restaurant in the DB; used for testing code on a database

Restaurant.last
#retrieve the last instance of an ActiveRecord model

Restaurant.find_by(name: "Mark's")
#return the first item that fulfills the quality

class AddRatingToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :rating, :integer, default: 0, null: false
  end
end


class AddColumnToTable < ActiveRecord::Migration[5.1]
  def change
    add_column :table, :column, :type
  end
end
#add new column to a table update
#You create a migration when you need to change your database's schema (add / remove table), (add / remove column), etc...
#It's a change in the structure of the database, but it leaves the data unchanged.


# db/migrate/20141027201000_remove_age_from_patients.rb
class RemoveAgeFromPatients < ActiveRecord::Migration[5.1]
  def change
    remove_column :patients, :age
  end
end
#delete remove column activerecord


# db/migrate/20141027201300_add_intern_reference_to_patients.rb
class AddInternReferenceToPatients < ActiveRecord::Migration[5.1]
  def change
    add_reference :patients, :intern, foreign_key: true
    change_columjn :patients, :name, :first_name
  end
end
#add a reference foreign key object to database active record

rails g migration FixColumnName #terminal commands

class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :table_name, :old_column, :new_column
  end
end
#rails db migration to correct mispelt column names

class ChangePhoneNumberClass < ActiveRecord::Migration[5.1]
  def change
    change_column :restaurants, :phone_number, :integer
  end
end
#rails db migration to correct change columns with wrong class

class Doctor < ActiveRecord::Base
  validates :last_name, uniqueness: :true
end
#accepts only 1 of a certain column value such as a username activerecord


class Doctor < ActiveRecord::Base
  validates :first_name, uniqueness: { scope: :last_name }
end
#rejects a certain combination of column values that are not unique


class Doctor < ActiveRecord::Base
  validates :last_name, length: { minimum: 3 }
end
#validates a defined minimum length


class Doctor < ActiveRecord::Base
  validates :email, format: { with: /\A.*@.*\.com\z/ }
end
#validates entries of a certian format such as a phone number or email address entry

class Doctor < ActiveRecord::Base
  validates :name, presence: :true
end

g model review content:text bathroom:references

surgeons = Doctor.where(specialty: "Surgeon")
young_doctors = Doctor.where("age < 35")
surgeons = Doctor.where("specialty LIKE %surgery%")
dentists_and_surgeons = Doctor.where(specialty: ["Dentist", "Surgeon"])
first_doctor = Doctor.find(1)
house = Doctor.find_by(name: "Greg House")
#retrieving primary table items of a certain column parameter

rake db:migrate
#runs pending migrations that have been made in text editor to sqlite3

rake db:drop
#deletes database DB

rake db:drop db:create db:migrate db:seed


Restaurant.where("rating >= 4").order(rating: :asc).first(5)
#syntax for chaining search conditions in SQL


TIMESTAMP=`rake db:timestamp`
touch db/migrate/${TIMESTAMP}_create_restaurants.rb                                      /
#timestamp so files are properly ordered in your migrate folder

doctors = Doctor.all
#retrieve all instances of a given ActiveRecord model; returns a collection (~ array) of all Doctor instances

dr_house = Doctor.new(name: "Greg House")
dr_house.save
#adds new instance in table

rake db:create
#terminal command to create your DB


class Restaurant < ActiveRecord::Base
end
#models inherit from the ActiveRecord::Base class attribute_accessor is not needed

#Your model class name should be in UpperCamelCase, singular form
#Your table name should be in lower_snake_case

class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string     :name
      t.string     :specialty
      t.timestamps # adds 2 columns, `created_at` and `updated_at`
    end
  end
end
#create a table with active records slq


Doctor.count
#retrieve the number of instances of a given ActiveRecord model


<html>
  <head>
    <meta charset="utf-8">
    <title>TEST</title>
  </head>
  <body>

  </body>
</html>
#html head

rails new MY_APP
#command to make a new rails

Ctrl + C
bundle install
rails s
#disable server, bundle install gems, relaunch server

rails s
http://localhost:3000
#default port used by the rails server

app
  |--controllers
  |   |--application_controller.rb
  |   |--pages_controller.rb
  |
  |--views
  |   |--layouts
  |    |--pages
  |     |--home.html.erb
  |
  |
#folder directory structure of rails

rails routes
#run in terminal to know the prefix of the associated route
_path
#append to the prefix and Rails build the path

rails g model Restaurant name:string rating:integer
#creates generate a model in the model folder and creates migration

rails generate controller pages contact about
#generate create controller

rails console
#opens console to create models

Restaurant.create(rating: 5 name: "Citizen")
#syntax to creare new instanc within rails console

rails generate migration AddAddressTo restaurants address:string

rails db:migrate

rails db:drop - Drop the database (lose all your data!)
rails db:create - Create the database with an empty schema
rails db:migrate - Run pending migrations on the database schema
rails db:rollback - Revert the last migration
rails db:reset - Drop database + create tables found in schema.rb
#sqlite rails commands

Restaurant.create(name: Faker::Hipster.words, address: Faker::Address.city, rating: Faker::Number.between(1,5), food_type: types.sample)

rails db:seed
rails db:destroy model bathroom
#terminal command to delete model

rails g model bathroom location:text clean:integer --force

get 'restaurant', to: "restaurants#new"
#create empty form

post 'restaurants', to: "restaurants#create"
#create new

get 'restaurants', to: "restaurants#index"
#read

get 'restaurant/:id', to: "restaurants#show"
#read one of the restaurants

get 'restaurant/:id/edit', to: "restaurants#edit"
patch 'restaurants/:id' to: "restaurants#update"
#update a restaurant

delete 'restaurants/:id' to: "restaurants#destroy"
#delete

resources:  :restaurants

class RestaurantsController < ApllicationController

before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  t

  <%= @restaurants.each do |r| %>
    <h2><%= link_to r.name, restaurant_path(r.id) %></h2>
    <h2><%= r.address %> - <%= r.food_type %></h2>
    <h2><%= link_to "Edit" edit_restaurant_path(r) %> |
    <%= link_to "Delete", restaurant_path(r), method: :delete, data:  %></h2>

  def show
    #restaurants/1
    #params[:id] =1
    @restaurant = Restaurant.find(params[:id])
  end

  <h1><%= @restaurant.name %></h1>
  <h1><%= @restaurant.address %></h1>
  <h1><%= @restaurant.food_type %></h1>

  <%= link_to "Back" restaurants_path %>
  <%= link_to "Edit" restaurants_path(@restaurant) %>
  <%


  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params[:restaurant)
    @restaurant.save
    redirect_to restaurants_path
  end


<% Restaurant.new()
<%= form_for(@restaurant) do |f| %>
    <% f.label :name, "Enter a Name" %>
    <% f.text_field :name %>
    <% f.submit %>
    <% end %>>

  def edit
  end


  def update

    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def delete

    @restaurant.destroy
    redirect_to restaurant_path(@restaurant)

  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:food_type, :name, :address, :rating)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
git init

hub create
git remote -v
git commit
git push origin master

gem 'bootsrap-sass'
gem 'simple_form'
#place in gemfile

rails new rails-frontend --webpack
#install frontend customizer in rails
rails g controller pages home

Rails.application.routes.draw do
  root to: 'pages#home'
end
#rails place in routes

rm app/assets/stylesheets/application.css
touch app/assets/stylesheets/application.scss
#rails delete previous sheet and add new scss

@import 'card';
#place in application.scss

config.assets.css_compressor = :yui
#condenses code
config.assets.js_compressor = :uglifier
#abbreviates code; place in config/environment/production.rb

echo "public/assets" >> .gitignore # Run once
rails assets:precompile
rails assets:clobber
#

gem 'autoprefixer-rails'
gem 'bootstrap-sass', '~> 3.3'
gem 'font-awesome-sass', '~> 4.7'
gem 'simple_form'
#install gems in gemfile

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
#rails enable bootstrap; place in app/views/layouts/application.html.erb


@import "card";
#rails import stylesheets in app/assets/stylesheets/components/_index.scss

<%= javascript_include_tag "application" %> <!-- from app/assets/javascripts/application.js -->
<%= javascript_pack_tag "application" %>    <!-- from app/javascript/packs/application.js -->
#required to run javascript:; place in app/views/layouts/application.html.erb below yield

yarn add jquery bootstrap@3
#rails required to integrate javascript with bootstrap

const { environment } = require('@rails/webpacker')

const webpack = require('webpack')
environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery'
  })
)
#rails requires jquery; place in config/webpack/environment.js

module.exports = environment
#place in config/webpack/environment.js

import 'bootstrap';
#place in app/javascript/packs/application.js


bundle install
rails generate simple_form:install --bootstrap

  collection do
    get 'top', to: "restaurants#top"
    get 'low', to: "restaurants#low"
  end

  member do
    get 'chef', to: "restaurants#chef"
  end

  resources :reviews
end

get 'restaurants/top', to: "restaurants#top"
#in routes

mkdir app/controllers/admin
touch app/controllers/admin/restaurants_controller.rb
#
rails g model Review content:text stars:integer restaurant:references
rails G controller reviews new create

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review = Review.new(review_params)
@review.restaurant = @restaurant
@review.save
redirect_to restaurnat_path(@restaurant)
if @review.save
  redirect_to restaurantnt_path(@restaurnat)
else
  render:new
  redirect_to new_restaurant_review_path(@restaurant)
  end

  private

    def review_params
      params.require(:review).permit()

    end


  link_to "review", new_restaurant_review_path(@restaurant)

  container
  row
  class col col-xs-12 col-sm-4 col-sm-offset-4
  <%= simple_form_for[@restaurant, @review] do |f| %>
    <%= f.input :content %>
    <%= f.input :stars, as: :radio_buttons, collection: [1,2] %>
    f.
    <%= f.submit class: btn btn-primary" %>
    <% end %>>




def top
  @restaurants = Restaurant.where(rating:5)
end

def chef
  @chef = @restaurant.chef
end

rails g migration AddChefToRestaurants chef:string
rails db:seed

<%= link_to ""


<%= render 'form' %>
>

str_array = int_array.map(&:to_s)
#convert array of integers into array of strings and vice versa

git branch
#state current branch
git checkout -b *branchname*
#create new git branch only on user's computer and switch to new branch
git chechout master
#switch to branch no creation
git add ., git commit -m "", git push origin *current branch*
#opens the new branch on github
git pull orgin master
#
git merge master

################################################################################################
Example Functions
################################################################################################

#collect user info and interpolate into one string
print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What city are you from? "
city = gets.chomp
city.capitalize!

print "What state or province are you from? "
state = gets.chomp
state.upcase!

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"


#if else statement that determines prints message based positive or negative value of integer
print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end



#unless statements are used until something becomes true
hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end


#while statement that keeps prompting the user while their entry remains incorrect
price_to_find = rand(1..5)
choice = nil     # variable initialization

while choice != price_to_find
  puts "How much (between $1 and $5)?"
  choice = gets.chomp.to_i
end

puts "You won! Price was #{price_to_find}$"



#until statement that keeps prompting the user until their entry is correct
price_to_find = rand(1..5)
choice = nil     # variable initialization

until choice == price_to_find
  puts "How much (between $1 and $5)?"
  choice = gets.chomp.to_i
end

puts "You won! Price was #{price_to_find}$"


#block statement that interpolates each name into a string
beatles.each do |beatle|
 puts "#{beatle} is in the Beatles"
end

beatles.each { |beatle| puts "#{beatle} is in the Beatles" }


#simulate a conversation with robot uses conditionals to produce varying responses based on user's input
def coach_answer(your_message)
  if your_message.downcase == "i am going to work right now!"
      puts " "
  elsif your_message.end_with?("?")
      puts "Silly question, get dressed and go to work!"
  else
      puts "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  response = coach_answer(your_message)
  if response != " "
    if your_message.upcase == your_message
      puts "I can feel your motivation! #{response}"
    else
      response
    end
  else
    puts " "
  end
end



#greeter that says hello and gives place number; returns element name and index number
musicians = ["a", "b", "c", "d"]

musicians.each_with_index do |musician, i|
  puts "Hello #{musician}! You are #{i +1}"
end



#counts elements in array that start with a certain letter
musicians = ['David Gilmour', 'Roger Waters', 'Richard Wright', 'Nick Mason']
r_musicians_count = musicians.count do |musician|
  musician.start_with?("R")
end

p r_musicians_count

#creates a timer function using yield block
def timer
  start_time = Time.now
  yield
  puts "Elapsed time: #{Time.now - start_time}s"
end

timer do
  puts "I'm doing something slow..."
  sleep(4)
  puts "I'm done :)"
end

#takes an argument and capitalizes it
def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  return "Hello, #{full_name}"
end

puts greet('john', 'lennon')

def beautify_name(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  yield(full_name)
End

message = beautify_name("john", "lennon") do |name|
  "Greetings #{name}, you look quite fine today!"
end
puts message


#rock paper scissors game
def computer_answer
 return ["Rock", "Paper", "Scissors"].sample
end
def check_winner(user_answer, computer_choice)
  case user_answer
  when computer_choice
    return "Tie"
  when "Scissors"
    return computer_choice == "Paper" ? "Win" : "Lose"
  when "Rock"
    return computer_choice == "Scissors" ? "Win" : "Lose"
  when "Paper"
    return computer_choice == "Rock" ? "Win" : "Lose"
  end
end
def user_prompt
  puts "Rock, Paper, Scissors?"
  user_input = gets.chomp
  until ["Rock", "Paper", "Scissors"].include?(user_input)
    puts "Put the correct choices"
    user_input = gets.chomp
  end
  user_input
end
def game
  user_input = user_prompt
  computer_choice = computer_answer
  puts "You chose #{user_input} and the computer chose #{computer_choice}"
  puts check_winner(user_input, computer_choice)
end
def rungame
  continue = "Yes"
  until continue != "Yes"
    game
    puts "Continue? Yes or No~"
    continue = gets.chomp
  end
end


#turns all code into an acronym
def arc_name(str)
  arr = str.split(" ")
  result =[]
  arr.each do |name|
    result << name[0]
  end
  return result.join(".").upcase + "."
end

string.split('').map { |word| word.upcase[0]}


#counts array elements that include a certain letter or integer
musicians.count { |musician| musician.include? "J" }



#Returns first item in array that meets a certain condition
musicians = ['Jimmy Page', 'Robert Plant', 'John Paul Jones', 'John Bonham']

musicians.find { |musician| musician.split(' ').first == 'John' }


#transforms array into new array with only elements that match a certain condition
musicians = ['Jimmy Page', 'Robert Plant', 'John Paul Jones', 'John Bonham']
musicians.select do |musician|
  musician[0] == "J" # select only the elements that start with a "J"
end


#sort an array with a given sorting criteria
['apple', 'pear', 'fig'].sort_by { |word| word.length }



#clean delete Reject array items that meet a certain condition, in this case elements that start with a certain letter
musicians.reject do |musician|
  musician.start_with? "J"
end


#returns array element with their index number
musicians = ['Jimmy Page', 'Robert Plant', 'John Paul Jones', 'John Bonham']
musicians.each_with_index do |musician, index|
  puts "#{index + 1} - #{musician}"
end


#interpolate hash key name with question
john.each_key do |key|
  puts "John has a #{key}"
end

#returns index number of first element in array that matches paramater
array = ["a", "b", "c"]
array.index("a")


numbers = [1, 2, 3, 4, 5]
numbers.sum
#calculate sum of array or range


#calculate average of array
grades = [10, 11 , 9]
sum = 0
for i in grades
  sum += i
end
sum.to_f / grades.count


#while loop that prompts user until correc
vote = ""
while vote != "Sergio"
  puts "who you vote"
  vote = gets.chomp
end

puts "yes"

#check for invalid entry input; && must be used and not ||
ans = gets.chomp

if ans != "heads" && ans != "tails"
  puts "invalid"


#define a method accepting a block with dynamic parameters
def greet(name)
  capitalized_name = name.capitalize
  puts yield(capitalized_name)
end

me = 'john'

greet(me) do |name|
  "Greetings, #{name}, you look quite fine today!"
end


#compares two arrays and deletes matching values from one of the arrays; delete from the array with more items
y.each do |e|
  if x.include? e
    x.delete(e)
  end
end

y.each { |e| x.delete(e) if x.include? e }


#scans and prints all emails in a document email regex
def scan_for_emails(file)
  regex = /[\w\.\_\-]+@\w+\.\w+/
  email_hash = {}
  File.open(file, "r").each_line do |line|
    line.downcase.scan(regex).each do |email|
      if email_hash.key?(email)
        email_hash[email] += 1
      else
        email_hash[email] = 1
      end
    end
  end
  email_hash
end

def desc_freq_emails(file, number_of_emails)
  scan_for_emails(file).sort_by{ |key, value| -value }[0..number_of_emails - 1]
end

puts desc_freq_emails('./Emails.csv', 20)


#allows user to add delete and view items on a list
presents = ["goat-milk handmade soap from artisans", "telephone", "pink salt", "Sergio's Coffee Gift Card (Good for 10 cups)"]

def list(presents)
  presents.each_with_index do |present, i|
    puts "#{i+1} - #{present}"
  end
end

def add(list_array)
  puts "List the item you want to add"
  input_add = gets.chomp
  list_array << input_add
  puts "#{input_add} has been added to the list"
  list_array
end

def delete(list_array)
  puts "What would you like to delete?"
  list(list_array)

  user_input = 0

  until list_array.include?(user_input)
    user_input = gets.chomp.to_i
    if (1..list_array.count).include?(user_input)
      list_array.delete_at(user_input-1)
    else
      puts "It`s not in the list!"
    end
  end
  list_array
end

def run_christmas_list
  puts "Welcome to your Christmas gift list"
  presents = []

  user_input = ""
  until user_input == "quit"
    puts "Which action [list|add|delete|quit]?"
    user_input = gets.chomp
    if user_input == "list"
      list(presents)
    elsif user_input == "add"
      presents = add(presents)
    elsif user_input == "delete"
      presents = delete(presents)
    end
  end
end




# METHODS for use in Gathering USER INPUT FOR VARIABLES
def validate_integer(string)
  numbercheck = /\A[0-9]+\z/
  if string =~ numbercheck
    return true
  else
    puts "THAT NUMBER IS NOT VALID"
    return false
  end
end

def number_input
  number = ""
  while number.class != Integer
    puts "Enter number:"
    number = gets.chomp
    number = number.to_i if validate_integer(number)
  end
  number
end

def operation_input
  operation = ""
  until ["+", "-", "*", "/"].include?(operation)
    puts "Choose operation! (+, -, *, /)"
    operation = gets.chomp
    unless ["+", "-", "*", "/"].include?(operation)
      puts "TRY AGAIN. NOT VALID!!!"
    end
  end
  operation
end

# METHODS FOR CALCULATION & RESULT
def calculate(firstnum, secondnum, operation)
  # METHOD must return an integer
  case operation
  when "+"
    solution = firstnum + secondnum
  when "-"
    solution = firstnum - secondnum
  when "*"
    solution = firstnum * secondnum
  when "/"
    solution = firstnum / secondnum
  end
  solution
end

def run_calculator
  firstnum = number_input
  operation = operation_input
  secondnum = number_input

  puts "The result is: #{calculate(firstnum, secondnum, operation)}"
end



#parses, iterates, and stores csv rows; rejects items on csv and displays items that are labeled before a certain year and orders them based on earnings revenue
require 'csv'

filepath = 'lib/movies.csv'

def most_successful(number, max_year, filepath)
  movies = []
  CSV.foreach(filepath) do |row|
    movie = {
      name: row[0],
      year: row[1].to_i,
      earnings: row[2].to_i
    }
    movies << movie
  end
  movies.reject { |movie| movie[:year] >= max_year }.sort_by { |movie| movie[:earnings] }.reverse[0..number - 1]
end


#adds and subtracts money from a balance; checks password; censors data; saves data to a balance list
# This is how you define your own custom exception classes
class DepositError < StandardError
end

class BankAccount
  attr_reader :name, :balance
  # Contract for the BankAccount class
  # - you can access full owner's name and balance, but partial IBAN
  # - you cannot access full IBAN
  # - you can print partial account info
  # - you can print transactions only with a password
  # - you can withdraw or deposit money
  # - You can see the balance of the account (through the balance variable)

  MIN_DEPOSIT = 100

  def initialize(name, iban, initial_deposit, password)
    fail DepositError, "Insufficient deposit" unless initial_deposit > MIN_DEPOSIT

    @password     = password
    @transactions = []
    @balance      = 0
    @name         = name
    @iban         = iban

    add_transaction(initial_deposit)
  end

  def withdraw(amount)
    # TODO: Call add_transaction with the right argument
    add_transaction(-amount)
    # TODO: returns a string with a message
    return "You withdrew $#{amount}."
  end

  def deposit(amount)
    add_transaction(amount)
    # TODO: Call add_transaction with the right argument
    # TODO: returns a string with a message
    return "You withdrew $#{amount}."
  end

  def transactions_history(args = {})
    # TODO: Check if there is a password and if so if it is correct
    if args[:password] == @password
      return @transactions.map { |transaction| transaction.to_s }.join("\n")
    elsif args[:password].nil?
      return "no password given"
    else
      return "wrong password"
    end
    # TODO: return a string displaying the transactions, BUT NOT return the transaction array!
  end

  def iban
    # TODO: Hide the middle of the IBAN like FR14**************606 and return it
    @iban[0..3] + '*******************' + @iban[-3..-1]
  end

  def to_s
    # Method used when printing account object as string (also used for string interpolation)
    # TODO: return a string with the account owner, the hidden iban and the balance of the account
    "Owner: #{@name}\nIBAN: #{iban}\nCurrent amount: #{@balance}"
  end

  private

  def add_transaction(amount)
    # TODO: add the amount in the transactions array
    # TODO: update the current balance (which represents the balance of the account)
    @transactions <<  amount
    @balance += amount
  end
end


#calculates monetary input into a machine and dispenses item when monetary input equals item price
class VendingMachine
  # add relevant getter/setter to this class to make the scenarios work properly.
  attr_reader :amount_cents, :snack_price_cents, :snacks
  attr_writer :snacks
  def initialize(snack_price_cents, snacks)
    @amount_cents = 0
    @snack_price_cents = snack_price_cents
    @snacks = snacks
  end

  def insert_coin(value_cents)
    # TODO: what happens to @snacks, @amount_cents and @snack_price_cents
    # when the user inserts a coin?
    @amount_cents += value_cents
  end

  def buy_snack
    #what happens to @snacks, @amount_cents and @snack_price_cents
    # when the user pushes a button to buy a Snack?

    unless @snacks.zero?
      if @amount_cents >= @snack_price_cents
        @snacks -= 1
        @amount_cents -= @snack_price_cents
      else
        @snacks -= 0
      end
    end
  end
end


#creates a random set of alphabet letters; compares if all letters in a user's input are included in the random set; creates a score based on word length and input time; uses json and open-uri to refer to dictionary words;
require 'open-uri'
require 'json'

def generate_grid(grid_size)
  Array.new(grid_size) { ('A'..'Z').to_a.sample }
end

def included?(guess, grid)
  guess.chars.all? { |letter| guess.count(letter) <= grid.count(letter) }
end

def compute_score(attempt, time_taken)
  time_taken > 60.0 ? 0 : attempt.size * (1.0 - time_taken / 60.0)
end

def run_game(attempt, grid, start_time, end_time)
  result = { time: end_time - start_time }

  score_and_message = score_and_message(attempt, grid, result[:time])
  result[:score] = score_and_message.first
  result[:message] = score_and_message.last

  result
end

def score_and_message(attempt, grid, time)
  if included?(attempt.upcase, grid)
    if english_word?(attempt)
      score = compute_score(attempt, time)
      [score, "well done"]
    else
      [0, "not an english word"]
    end
  else
    [0, "not in the grid"]
  end
end

def english_word?(word)
  response = open("https://wagon-dictionary.herokuapp.com/#{word}")
  json = JSON.parse(response.read)
  return json['found']
end


#runs browser text in terminal with nokogiri and open-uri openuri
require_relative "browser"

browser = Browser.new

# Loop until user wants to exit
url = nil
while url != ""
  puts 'Where do you wanna go?'
  print "> "
  url = gets.chomp # Get URL from user (full url like 'http://www.google.fr')

  # Fetch page content and display it
  content = browser.fetch_content(url)
  puts content
  puts "\n--------------------\n"
end
#browser.rb
puts 'bye bye!'

require 'open-uri'
require 'nokogiri'

class Browser
  def fetch_content(url)
    page = Nokogiri::HTML(open(url))
    page.css('body').each do |el|
      return el.text
    end
  end
end


#filters search result based on location; calculates a new average based on an updated entry
class Restaurant
  attr_accessor :average_rating
  attr_reader :city, :name
  def initialize(city, name)
    # TODO: implement constructor with relevant instance variables
    @city = city
    @name = name
    @average_rating = 0
  end

  def self.filter_by_city(restaurants, city)
    restaurants.select { |restaurant| restaurant.city == city }
  end

  def rate(new_rate)
    @average_rating = (@average_rating + new_rate) / 2
  end
end


#true or false logic in class inheritance
class Dessert
  attr_reader :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end

  def healthy?
    @calories < 200
  end

  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_reader :flavor
  def initialize(name, calories, flavor)
    super(name, calories)
    @flavor = flavor
  end

  def delicious?
    @flavor != "black licorice"
  end
end


#self class identifier method
class RubyDeveloper
  def whoami
    return self.class
  end
end

lewagon_student = RubyDeveloper.new
puts lewagon_student.whoami



#MVC model page
class Recipe
  attr_reader :name, :description
  def initialize(name, description)
    @name = name
    @description = description
  end
end


#MVC repository
require 'csv'

class Cookbook
  def initialize(csv_path)
    @csv_path = csv_path
    @recipes = []
    load_csv
  end

  def load_csv
    CSV.foreach(@csv_path) do |line|
      @recipes << Recipe.new(line[0], line[1])
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    CSV.open(@csv_path, 'wb') do |csv|
      @recipes.each { |item| csv << [item.name, item.description] }
    end
  end

  def remove_recipe(index)
    @recipes.delete_at(index - 1)
    CSV.open(@csv_path, 'wb') do |csv|
      @recipes.each do |item|
        csv << [item.name, item.description]
      end
    end
  end

  def all
    @recipes
  end

  def destroy_all
      @recipes = []
    end
  end
  #MVC repository method to destroy all data
end



#MVC router receives the user's request in the main menu and hits corresponding action in the Controller; apps entry point
class Router
  def initialize(controller)
    @controller = controller
    @running    = true
  end

  def run
    puts "Welcome to the Cookbook!"
    puts "           --           "

    while @running
      display_tasks
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.create
    when 3 then @controller.destroy
    when 4 then stop
    else
      puts "Please press 1, 2, 3 or 4"
    end
  end

  def stop
    @running = false
  end

  def display_tasks
    puts ""
    puts "What do you want to do next?"
    puts "1 - List all recipes"
    puts "2 - Create a new recipe"
    puts "3 - Destroy a recipe"
    puts "4 - Stop and exit the program"
  end
end

select .select
From object table
Where what is specified in the specialty column column name left
* bring all attributes
and



#MVC repository is supposed to store the Task's instances; it should have a @tasks instance variable which is an Array.
require 'csv'

class Cookbook
  def initialize(csv_path)
    @csv_path = csv_path
    @recipes = [] #tasks array should store instances of the task model
    load_csv
  end

  def load_csv
    CSV.foreach(@csv_path) do |line|
      @recipes << Recipe.new(line[0], line[1])
    end
  end

  def add_recipe(recipe)
    @recipes << recipe
    CSV.open(@csv_path, 'wb') do |csv|
      @recipes.each { |item| csv << [item.name, item.description] }
    end
  end

  def remove_recipe(index)
    @recipes.delete_at(index - 1)
    CSV.open(@csv_path, 'wb') do |csv|
      @recipes.each do |item|
        csv << [item.name, item.description]
      end
    end
  end

  def all
    @recipes
  end
end
#the TaskRepository is supposed to manage the Task's instances stored in its @tasks instance variable



#MVC model can be passed hashes as arguments which can allow it to work with an indefinite number of arguments
class Recipe
  def initialize(attributes = {})
    @name = attributes[:name]
    @description = attributes[:description]
    @id = attributes[:id]
  end
end



#MVC controller fetches data from the TaskRepository and sends it to the View, receive data from the View and send it to the TaskRepository
require_relative 'recipe_view'
require_relative 'recipe'

class Controller
  def initialize(repo)
    @repo = repo
    @view = RecipeView.new
  end

  def list
    recipes = @repo.all
    @view.display(recipes)
  end

  def create
    recipe = @view.ask_for_name
    description = @view.ask_for_description
    @repo.add_recipe(Recipe.new(recipe, description))
  end

  def destroy
    i = @view.ask_for_index
    @repo.remove_recipe(i)
  end
end



#MVC view
class RecipeView
  def display(recipes)
    puts "======== Your Recipes ========"
    recipes.each_with_index do |recipe, index|
      puts "#{index + 1}: #{recipe.name}\n#{recipe.description}\n\n"
    end
  end

  def ask_for_name
    puts "What is the name of your recipe?"
    gets.chomp
  end

  def ask_for_description
    puts "Write description, ingedients, and procedures"
    gets.chomp
  end

  def ask_for_index
    puts "Which recipe number will you choose?"
    gets.chomp.to_i
  end
end


#MVC app passes the repository to the controller automatically without need of requiring repo in repository
require_relative 'cookbook'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'

csv_file   = File.join(__dir__, 'recipes.csv')
cookbook   = Cookbook.new(csv_file)
controller = Controller.new(cookbook)

router = Router.new(controller)

# Start the app
router.run



#reverses order of an array; uses count to display attatch ordered numbered list
def horse_racing_format!(race_array)
  race_array.reverse!
  race_array.map! do |horse|
    "#{race_array.count - race_array.index(horse)}-#{horse}!"
  end
end

#SQL that finds row items based on id with find; returns all table items in array with all
require 'sqlite3'
class Post
  # TODO
  attr_reader :id
  attr_accessor :title, :url, :votes

  def initialize(attributes = {})
    @id = attributes[:id]
    @title = attributes[:title]
    @url = attributes[:url]
    @votes = attributes[:votes]
    # TODO: store other attributes as instanced variable (exercise)
  end

  def self.find(id)
      DB.results_as_hash = true
      post = DB.execute("
      SELECT * FROM posts WHERE id = ?", id)
      if post.empty?
        nil
    else
      post = Post.new(id: post.first['id'], title: post.first['title'], url: post.first['url'], votes: post.first['votes'])
    end
  end

  def self.all
    DB.results_as_hash = true
    all_posts = DB.execute("SELECT * FROM posts")
    all_posts.map do |post|
      post = Post.new(id: post['id'], title: post['title'], url: post['url'], votes: post['votes'])
    end
  end
end

gem 'devise'
bundle install
rails generate devise:install

#config/environments/development.rb
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

#config/routes.rb
root to: "home#index"

#app/views/layouts/application.html.erb
<p class="notice"><%= notice %></p>
<p class="alert"><%= alert %></p>

# config/initializers/devise.rb
config.mailer_sender = 'please-change-me-at-config-initializers-devise@example.com'
config.password_length = 6..128
config.email_regexp

rails generate devise User
rails db:migrate

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #invite only
         :recoverable, :rememberable, :trackable, :validatable
         #password recover #remember my password  #  #password/email must obey certain rules
end

rails routes
rails routes | grep new_
#retrieve route lines that contain a certian keyword

rails s

rails c
[1] pry(main)> User.count
[2] pry(main)> User.last

mkdir app/views/shared
curl https://raw.githubusercontent.com/lewagon/awesome-navbars/master/templates/_navbar_wagon.html.erb > app/views/shared/_navbar.html.erb
curl https://raw.githubusercontent.com/lewagon/karr-images/master/white_logo_red_circle.png > app/assets/images/logo.png

#app/views/layouts/application.html.erb
<%= render 'shared/navbar' %>>

#app/views/layouts/application.html.erb
<%= render 'shared/flashes' %>>

#app/views/shared/_flashes.html.erb
<% if notice %>
  <div class="alert alert-info alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <%= notice %>
  </div>
<% end %>
<% if alert %>
  <div class="alert alert-warning alert-dismissible" role="alert">
    <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
    <%= alert %>
  </div>
<% end %>>


rails g devise:views

# app/controllers/application_controller.rb user must be signed in to view all pages
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_action :authenticate_user!
end

# app/controllers/pages_controller.rb creates exception for authintication call made by :authenticate_user!
class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end
end

#add addtional signup parameters
class ApplicationController < ActionController::Base
  # [...]
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end
end

#prevent other users from editing other user's data with pundit
rails new \
  --webpack \
  -T --database postgresql \
  -m https://raw.githubusercontent.com/lewagon/rails-templates/master/devise.rb \
  restaurants_with_pundit
rails g scaffold restaurant name:string user:references
rails db:migrate

gem "pundit"
bundle install
rails g pundit:install

lass ApplicationController < ActionController::Base
  # [...]
  before_action :authenticate_user!
  include Pundit

  # Pundit: white-list approach.
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end

rails g pundit:policy restaurant
#generates the file `app/policies/restaurant_policy.rb`

def show?
  false
end
#app/policies/restaurant_policy.rb

def show
  authorize @restaurant
end
#app/controllers/restaurants_controller.rb

<% if policy(Restaurant).create? %>
  <%= link_to "New restaurant", new_restaurant_path %>
<% end %>>
#in views pass a class to policy as we don't have a specific restaurant instance.


class RestaurantPolicy < ApplicationPolicy
  def update?
    record.user == user
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    record.user == user
  end
end
# app/policies/restaurant_policy.rb

<% @restaurants.each do |restaurant| %>
  <% if policy(restaurant).edit? %>
    <%= link_to "Update", edit_restaurant_path(restaurant) %>
  <% end %>
<% end %>>
#policy is passed an instanc of restaurant

def resolve
  scope.where(user: user)
end

class RestaurantsController < ApplicationController
  def index
    @restaurants = policy_scope(Restaurant).order(created_at: :desc)
  end
end
# app/controllers/restaurants_controller.rb


class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all

      # For a multi-tenant SaaS app, you may want to use:
      # scope.where(user: user)
    end
  end
end
# app/policies/restaurant_policy.rb


gem 'geocoder'
bundle install
rails generate geocoder:config

rails g model Flat name address

class Flat < ApplicationRecord
end

rails g migration AddCoordinatesTo*Flats* latitude:float longitude:float
rails db:migrate

# app/models/flat.rb
class Flat < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

rails c
Flat.create(address: '16 Villa Gaudelet, Paris', name: 'Le Wagon HQ')
Flat.near('Tour Eiffel', 10)
#generate test model and test search

#app/views/layouts/application.html.erb
<body>
  <!-- [...] -->
  <%= javascript_include_tag "application" %>
  <%= javascript_include_tag "https://maps.googleapis.com/maps/api/js" %>
</body>
#Make sure you only have one javascript_include_tag "application" (remove it from the <head /> if there is still one)


#app/controllers/flats_controller.rb
class FlatsController < ApplicationController
  def index
    @flats = Flat.where.not(latitude: nil, longitude: nil)

    @markers = @flats.map do |flat|
      {
        lat: flat.latitude,
        lng: flat.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
  end
end

#app/javascript/packs/map.js
import GMaps from 'gmaps/gmaps.js';

const mapElement = document.getElementById('map');
if (mapElement) { // don't try to build a map if there's no div#map to inject in
  const map = new GMaps({ el: '#map', lat: 0, lng: 0 });
  const markers = JSON.parse(mapElement.dataset.markers);
  map.addMarkers(markers);
  if (markers.length === 0) {
    map.setZoom(2);
  } else if (markers.length === 1) {
    map.setCenter(markers[0].lat, markers[0].lng);
    map.setZoom(14);
  } else {
    map.fitLatLngBounds(markers);
  }
}

#app/views/layouts/application.html.erb
<%= javascript_include_tag "application" %>
<%= javascript_include_tag "https://maps.googleapis.com/maps/api/js" %>
<%= javascript_pack_tag "map" %> <!-- add this line -->

#google.com; Click on it and Enable it (top blue button)
Google Maps Geocoding API

# config/application.yml
GOOGLE_API_SERVER_KEY: AIzaSyDMg1******************8wxJqE

# config/initializers/geocoder.rb
Geocoder.configure(
  lookup:    :google,
  api_key:   ENV['GOOGLE_API_SERVER_KEY'],
  use_https: true,
  # [...]
)

figaro heroku:set -e production
#pushes new key to haroku

class=mappcard

  bindmarkertap="markertap"

  <map id="Map" longitude="{{longitude}}" latitude="{{latitude}}" scale="14" controls="{{controls}}" bindcontroltap="controltap" markers="{{markers}}" bindmarkertap="markertap" polyline="{{polyline}}" bindregionchange="regionchange" show-location style="width: 100%; height: 100vh;"></map>





  // pages/map/map.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
      latitude: 23.099994,
      longitude: 113.324520,
      markers: [{
        id: 1,
        latitude: 23.099994,
        longitude: 113.324520,
        name: 'T.I.T 创意园'
      }],
      covers: [{
        latitude: 23.099994,
        longitude: 113.344520,
        iconPath: '/image/location.png'
      }, {
        latitude: 23.099994,
        longitude: 113.304520,
        iconPath: '/image/location.png'
      }]
  },

  /**
   * 生命周期函数--监听页面加载
   */

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
    this.mapCtx = wx.createMapContext('Map')
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {

  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {

  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {

  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {

  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {

  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {

  }
})



"reviews": [
      {
        "id": 1,
        "name": 'Gab',
        "upvotes": '120',
        "image": 'https://kitt.lewagon.com/placeholder/users/gabriel-dehan',
        "date": '01/13/17',
        "location": 'St. John Rd., Shanghai',
        "tags": '#lovely'
      }
    ],
    "vendor": [
      {
        "id": 1,
        "name": "Dan Li's Coffee",
        "image": 'http://businessupperhand.com/wp-content/uploads/2013/01/coffee-shop-1.jpg',
        "location": 'St. John Rd., Shanghai',
        "description": 'The best coffee in town',
        "prize": 'A free cup of coffee for the most upvoted photo!'
      }
    ]
  },

  class MoviesController < ApplicationController
  def index
    @query = [params[:query]

    if params[:query].present?

      @movies = Movie.where("title ILIKE ?", "%#{params[:query]}%")
    else
      @movies = Movie.all
    end
  end
end

# METHODS for use in Gathering USER INPUT FOR VARIABLES; calculator
def validate_integer(string)
  numbercheck = /\A[0-9]+\z/
  if string =~ numbercheck
    return true
  else
    puts "THAT NUMBER IS NOT VALID"
    return false
  end
end

def number_input
  number = ""
  while number.class != Integer
    puts "Enter number:"
    number = gets.chomp
    number = number.to_i if validate_integer(number)
  end
  number
end

def operation_input
  operation = ""
  until ["+", "-", "*", "/"].include?(operation)
    puts "Choose operation! (+, -, *, /)"
    operation = gets.chomp
    unless ["+", "-", "*", "/"].include?(operation)
      puts "TRY AGAIN. NOT VALID!!!"
    end
  end
  operation
end

# METHODS FOR CALCULATION & RESULT

def calculate(firstnum, secondnum, operation)
  # METHOD must return an integer
  case operation
  when "+"
    solution = firstnum + secondnum
  when "-"
    solution = firstnum - secondnum
  when "*"
    solution = firstnum * secondnum
  when "/"
    solution = firstnum / secondnum
  end
  solution
end

def run_calculator
  firstnum = number_input
  operation = operation_input
  secondnum = number_input

  puts "The result is: #{calculate(firstnum, secondnum, operation)}"
end

