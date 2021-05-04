require('colorize')
class Dog 
  attr_reader :name

  def initialize(name)
    @name = name
    @walk = []
    @meals = []
  end

  def walk(km)
    @walk << km
  end

  def eat(grams)
    @meals << grams
  end

  def display_daily_log
    puts "#{@name}'s day".cyan
    puts "ate #{@meals[0]} g of food".yellow
    puts "walked #{@walk[0]} km".red
  end

end
puts "What is your dog's name?"
name = gets.strip
dog = Dog.new(name)
puts "How many grams of food did you feed #{dog.name} this morning?"
grams = gets.to_i
dog.eat(grams)
puts "how many kilometers was your morning walk?"
kms = gets.to_i 
dog.walk(kms)
dog.display_daily_log

class User
  attr_accessor :first_name, :last_name, :email, :city, :state

  def initialize(name, lastname, email, city, state)
    @first_name = name 
    @last_name = lastname
    @email = email
    @city = city
    @state = state
  end

  def to_s
      "The user name is #{@first_name} #{@last_name}, his email is #{@email}, he lives in #{@city}, #{@state}.".yellow
  end

end
user_1 = User.new
puts "What is your name?"
name = gets.strip
user_1.first_name(name)
puts "what is your lastname?"
lastname = gets.strip
user_1.last_name(lastname)
puts "what is your email?"
email_1 = gets.strip
user_1.email(email_1)
puts "What city do you live"
city_1 = gets.strip
user_1.city(city_1)
puts "which state?"
state_1 = gets.strip
user_1.state(state_1)
puts to_s

