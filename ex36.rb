module Game_Functions
  def self.chance_roller(choice_limit)
    choice_limit -= 1
    rand(0..choice_limit)
  end

  def self.set_switch_opt2(switch_value, goto1, goto2)
    # Would be nice if we could remove indivial set switches
  end
end

module Game_Level_1
  def self.set_01
    puts "You regain consciousness on the front steps of a spooky run-down house. What do you do?"
    puts "[1] Examine the house"
    puts "[2] Run away"
    set_01_switch(gets.chomp.to_i)
  end

  def self.set_01_switch(switch_value)
    if switch_value == 1
      set_01_01
    elsif switch_value == 2
      set_01_02
    else
      puts "[ERROR] Invalid Option. Try again"
      set_01
    end
  end

  def self.set_01_01
    puts "You notice the right window's lock has fatigued enough to likely be pried opened. You also notice a strange rock by the flower bed."
    puts "[1] Attempt to pry the window open"
    puts "[2] Walk to the flower bed and examine the strange rock"
    set_01_01_switch(gets.chomp.to_i)
  end

  def self.set_01_01_switch(switch_value)
    if switch_value == 1
      set_01_01_A
    elsif switch_value == 2
      set_01_01_B
    else
      puts "[ERROR] Invalid Option. Try again"
      set_01_01
    end
  end

  def self.set_01_01_A
  end

  def self.set_01_01_B
  end

  def self.set_01_02
    puts "You walk away from the prouch but as your take your first steps you hear rustling in the bushes in the flower bed."
    puts "[1] Look back"
    puts "[2] Ignore and continue"
  end

  def self.set_01_02_A
  end

  def self.set_01_02_B
  end

end

module Game_Testing
  def self.testing_1
    puts Game_Functions.chance_roller(5)
  end
end


Game_Level_1.set_01
