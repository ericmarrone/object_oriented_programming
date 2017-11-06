class Cat
  def initialize(name, food, meal_time)
    @name  = name
    @preferred_food = food
    @meal_time = meal_time
  end

  def eats_at
    if  @meal_time < 12
      return "#{@meal_time} AM"
    else
      return "#{@meal_time} PM"
    end
  end

  def meow
    puts "My name is #{@name} and I can eat #{@preferred_food} at #{@meal_time}."
  end
end

meowingtons = Cat.new('Meowingtons', 'salmon', 8)
garfield = Cat.new('Garfield', 'lasagna', 12)

puts meowingtons.inspect
puts garfield.inspect

p garfield.eats_at
p meowingtons.eats_at

garfield.meow
meowingtons.meow
