puts("hello world")
puts "hello world" # parenthesis are optional if the parser can infer your intention
puts 'hello world' # both works

variable1 = 1
puts variable1
puts "this is your debugging best friend: #{variable1}"

require './object_a'
# anatomy of an object
## let's work with the object class
puts "ObjectA.class_method #{ObjectA.class_method}"
puts "ObjectA.get_instance_class_variable: #{ObjectA.get_instance_class_variable}"
ObjectA.set_instance_class_variable 1 # let's change the class variable [this is bad practice]
puts "ObjectA.get_instance_class_variable: #{ObjectA.get_instance_class_variable}" # the string is changed to a number

## let's work with an instance of an object
instance_of_object_a = ObjectA.new('argument 1', 2)
puts "instance_of_object_a.get_instance_variable1: #{instance_of_object_a.get_instance_variable1}"
instance_of_object_a.set_instance_variable1 'instance variable1 has been changed'
puts "instance_of_object_a.get_instance_variable1: #{instance_of_object_a.get_instance_variable1}"

puts "instance_of_object_a.get_instance_variable2: #{instance_of_object_a.get_instance_variable2}"
instance_of_object_a.change_instance_variable2_to_a_string
puts "instance_of_object_a.get_instance_variable2: #{instance_of_object_a.get_instance_variable2}"
instance_of_object_a.change_instance_variable2_to_a_number
puts "instance_of_object_a.get_instance_variable2: #{instance_of_object_a.get_instance_variable2}"


require './cars'
# a typical use case of objects and instances
puts "Cars generally has #{Cars.wheels?} wheels"
your_car = Cars.new('shiny blue', 0) # instantiate a new car
my_car   = Cars.new('rusty brown', 100000) # instantiate an old car

puts "your car is #{your_car.color} and has #{your_car.miles} miles"
puts "my car is #{my_car.color} and has #{my_car.miles} miles"

your_car.drive_for(1, 10000)
my_car.drive_for(10, 50000)

puts "your car now has #{your_car.miles} and my car now has #{my_car.miles}"

# array
cars = [my_car, your_car]

cars.each do |car|
  puts "A #{car.color} car with #{car.miles} miles"
end

# hash
accident = {
  party_at_fault: your_car,
  victim: my_car,
  witnesses: [Cars.new('red', 100), Cars.new('green', 300), Cars.new('black', 500)]
}

puts "A #{accident[:party_at_fault].color} car has just hit a #{accident[:victim].color} car and there are #{accident[:witnesses].size} witnesses."