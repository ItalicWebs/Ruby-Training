module Game_Functions
  def self.chance_roller(choice_limit)
    choice_limit -= 1
    rand(0..choice_limit)
  end
end

module Game_Level_1
  def self.set_01_01
    puts "You regain consciousness on the front steps of a spooky run-down house. What do you do?"
    puts "[1] Examine the house"
    puts "[2] Run away"
    gets.chomp.to_i
  end

  def self.set_01_01_a
    set_01_01_result = set_01_01
    if set_01_01_result == 1
      puts "You notice the right window's lock has fatigued enough to likely be pried opened. You also notice a strange rock by the flower bed."
      puts "[1] Attempt to pry the window open"
      puts "[2] Walk to the flower bed and examine the strange rock"
      gets.chomp.to_i
    elsif set_01_01_result == 2
    else
      puts "[ERROR] Invalid Option. Try again"
      set_01_01_01
    end
  end

end

module Game_Testing
  def self.testing_1
    puts Game_Functions.chance_roller(5)
  end
end


Game_Level_1.set_01_01_a
