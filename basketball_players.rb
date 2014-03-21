class Basketball_player
  attr_reader :points
  attr_accessor :player 
  
 def initialize(player, points=6)
   @player = player.capitalize 
   @points = points 
 end

 def allstar?
   @points >= 10  
 end 
 
 def status
   allstar? ? "Great Game" : "Bad Game" 
  #if @points >= 10
   # "Great Game"
  #else
   # "Bad Game"
  #end 
 end 

 def normalized_points
   @points / 10 
 end

 def bad_game
   @points -= 1
 end

 def good_game
   @points += 1 
 end 

 def <=>(other_player)
   other_player.points <=> @points 
 end

 def to_s 
   " #{@player} had #{@points} fantasy points (#{status})" 
 end  
end 

