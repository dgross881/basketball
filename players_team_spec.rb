require_relative 'players_team'

describe Team do 
  before do 
    @team = Team.new("Chicago Bulls")
  end 

  context " Being played with one movie" do 
    before do 
    @initial_points = 10 
    @basketball_player = Basketball_player.new("Keven Durrant", @initial_points)
    @team.add_player(@basketball_player) 
    end 

    it "Gives a player that roles a high number a good game" do 
      Espn.stub(:roll_die).and_return(5)
      @team.game

      @basketball_player.points.should == @initial_points + 1 
    end
    it "skips the movie if a players number_rolled is 3..4" do
     Espn.stub(:roll_die).and_return(3)
     @team.game

     @basketball_player.points.should == @initial_points
   end 
    it "Gives a player that rolles between 1..2 a bad game" do
     Espn.stub(:roll_die).and_return(2)
     @team.game

     @basketball_player.points.should == @initial_points - 1 
  end 
 end
end
