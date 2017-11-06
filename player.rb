class Player
  def initialize
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      @health_points = 10
    end
    if @lives == 0
      restart
    end
  end

  def restart
    @gold_coins = 0
    @health_points = 10
    @lives = 5
  end

end

mario = Player.new
puts mario.inspect

# mario.collect_treasure
# puts mario.inspect


5.times do
  mario.do_battle(10)
end
puts mario.inspect
