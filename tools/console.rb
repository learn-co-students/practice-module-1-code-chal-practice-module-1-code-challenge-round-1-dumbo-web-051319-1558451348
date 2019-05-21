require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
pass1 = Passenger.new("Toni")
pass2 = Passenger.new("Duong")
pass3 = Passenger.new("Daniela")

driver1 = Driver.new("Otha")
driver2 = Driver.new("Oprah")
driver3 = Driver.new("Danielle")


ride1 = Ride.new(driver1, pass1, 6)
ride2 = Ride.new(driver2, pass2, 12)
ride3 = Ride.new(driver1, pass1, 7.4)
ride4 = Ride.new(driver1, pass2, 5.5)
ride5 = Ride.new(driver3, pass3, 200)

puts "Welcome to ride booker"
puts "How far do you want to travel??"
distance = gets.chomp.to_f

puts "..... GREAT!"
puts "WHAT IS YOUR NAME????"
username = gets.chomp
pass = Passenger.new(username)

puts "...FINDING YOU A DRIVER RIGHT NOW...."
sleep(1)
ride = Ride.new(Driver.all.sample, pass, distance)
sleep(1)
puts "HERE ARE YOUR RIDE DETAILS..."
puts "Driver: #{ride.driver.name}, distance: #{ride.distance}"
if ride.passenger.premium_member?
  puts "CONGRATS, YOU ARE NOW A PREMIUM MEMBER!!!!!!!!"
end




# binding.pry
