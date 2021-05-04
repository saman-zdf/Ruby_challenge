require("colorize")
# attribute:
# type:
# name
# meal
# class Pet 

#   def initialize(type, name)
#     @type = type
#     @name = name
#     @meals = []
#   end
#   def eat(grams, times_of_day)
#     @meals << {amount: grams, time: times_of_day}
#   end

#   def display_dog_log
#     puts "#{@name} had #{@meals.length} time:"
#     @meals.each do |meal|
#       puts "he ate #{meal[:amount]} at #{meal[:time]}"
#     end
#   end

#   def to_s
#    return "The pet type is #{@type} and his name is #{@name}"
#   end
# end

# dog = Pet.new("dog", "spike")
# puts dog
# dog.eat(50, "morning")
# dog.display_dog_log
class Pet 
  # setter and getter
  attr_accessor :name, :type
  # class variables define with @@
  @@total_pets = 0
  # our initializer
  def initialize(type, name)
    @type = type
    @name = name
    @meals = []
    @@total_pets += 1
  end
  # class methods are defined with self.method_name
  def self.total_pets
    @@total_pets
  end
  # methos for action
  def eat(grams, times_of_day)
    @meals << {amount: grams, time: times_of_day}
  end
  # this is our output
  def display_dog_log
    puts "#{@name} had a #{@meals.length} times:"
    @meals.each do |meal|
    puts "she ate #{meal[:amount]} grams of food in the #{meal[:time]}"
    end
  end

  def to_s
    "It's a #{@type} and her name is #{@name}!"
  end
end

dog = Pet.new("dog", "lucy")
puts dog
puts dog.name
puts dog.type
dog.name = "roy"
dog.eat(50, "morning")
dog.display_dog_log