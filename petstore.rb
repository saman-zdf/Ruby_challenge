require_relative("./petclass")

pet_store = []

# add a cat to our pet store
pet_store << Pet.new("cat", "topy")
# add a parrot to our pet store
pet_store << Pet.new("parrot", "mina")


pet_store.each do |pet|
  puts pet
end
puts "The store currently has #{Pet.total_pets}"