require_relative 'basketball_players' 
require_relative 'espn' 
require_relative 'dunks'

class Team
  def initialize(name)
   @name = name
   @basketball_players =[]
  end

  def add_player(basketball_player)
    @basketball_players << basketball_player 
  end

  def game(played)
      puts  "#{@name}'s lineup: "

      dunks = SlamDunk::DUNKS
      puts "\n There are #{dunks.size} dunks available to get extra points"

      dunks.each do |dunk|
      puts "BOOM you just got #{dunk.dunk_name} on ! (#{dunk.skill_level} points)"
   end 
     
      1.upto(played) do |games|
      puts "\n Games Played #{games}:"
      @basketball_players.each do |lineup|
      Espn.review(lineup)
      dunk = SlamDunk.random
      puts "Bam you just got #{dunk.dunk_name} on  #{dunk.skill_level} points have been given." 
      puts lineup
    end 
  end
 end

  def print_stats
   puts "\n#{@name}'s Stats:" 
   good_game, bad_game = @basketball_players.partition {|lineup| lineup.allstar? } 
   puts "\nGood Game:"
   puts good_game.sort 

   puts "Bad Game:"
   puts bad_game.sort
   end
 end

