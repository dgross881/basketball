module Espn
  
  def self.roll_die
    rand(1..6)
  end 

  def self.review(lineup)  
    number_rolled = roll_die 
    case number_rolled 
     when 1..2 
        lineup.bad_game
        puts "#{lineup.player} had 10 and 4 rebounds." 
     when 3..4 
        puts "#{lineup.player} had 15 points and 6 rebounds."
     else 
        lineup.good_game
        puts "#{lineup.player} had 25 points and 8 rebounds !" 
     end
    end
  end 

