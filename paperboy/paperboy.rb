class Paperboy
  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0.0
    @quota = 50
  end
#READER

  def name
    @name
  end

  def experience
    @experience
  end

  def earnings
    @earnings
  end

#INSTANCE METHODS

  def quota
    @quota += @experience / 2
  end

  def deliver(start_address, end_address)
    delivered = (start_address - end_address).abs + 1
    @experience += delivered
    route_earnings = delivered.to_f * 0.25
    @earnings += route_earnings

    #Quota bonus / penalty
    if delivered > @quota
      over_quota = (delivered - @quota).to_f * 0.50
      @earnings += over_quota
    else delivered < @quota
      @earnings -= 2.00
    end
    return route_earnings
  end




  def report
    puts "Hi I'm #{@name}, I've delivered #{@experience} papers and I've earned $#{earnings} so far!"
  end




end

bob = Paperboy.new("Bob")

puts bob.quota
puts bob.deliver(1, 52)
puts bob.earnings 
puts bob.report
