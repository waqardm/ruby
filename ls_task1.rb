# Create a class called MyCar. When you initialize a new instance or object of the class, allow the user to define some instance variables that tell us the year, color, and model of the car. Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. Create instance methods that allow the car to speed up, brake, and shut the car off.

# Add an accessor method to your MyCar class to change and view the color of your car. Then add an accessor method that allows you to view, but not modify, the year of your car.

# You want to create a nice interface that allows you to accurately describe the action you want your program to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    current_speed = 0
    puts "#{year}, #{color}, #{model}"
  end
  def speed_up(number)
    @current_speed =+ number
  end
  def brake(number)
    @current_speed -= number
    puts "You're slowing down"
  end
  def shut_down()
    @current_speed = 0
    puts "Shutting down."
  end
  def current_speed()
    puts "Your current speed is #{@current_speed}"
  end
  def spray_paint(color)
    self.color = color
    puts "You're new shade of #{color} looks great!"
  end
end

car = MyCar.new(2012, "red", "corolla")
car.speed_up(10)
car.current_speed
car.brake(5)
car.current_speed
car.shut_down
car.current_speed
car.color = "blue"
puts car.color
puts car.year
car.spray_paint("pink")