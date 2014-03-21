require_relative  'basketball_players'

describe Basketball_player do 
 
  before do 
    @initial_points = 7  
    @basketball_player = Basketball_player.new("Derreck Rose", @initial_points)  
  end 

  it "has a capitalized title " do  
    @basketball_player.player.should == "Derreck rose" 
  end 
  
  it "has initial points given" do
    @basketball_player.points.should == 7 
  end 

  it "has a string representation to_s" do 
   @basketball_player.to_s.should == " Derreck rose had 7 fantasy points (Bad Game)"
  end

  it "increased rank by 1 when given good_game" do 
      @basketball_player.good_game
      @basketball_player.points.should == @initial_points + 1  
 end 

  it "decreased rank by 1 when given bad_game" do 
      @basketball_player.bad_game
      @basketball_player.points.should == @initial_points - 1  
  end

  context "created with a deafualt point" do
    before do
      @basketball_player = Basketball_player.new("Derrick Rose")
    end 

   it "has a rank of 7" do 
     @basketball_player.points.should == 6 
   end 
 end 

   context "with a rank of at least 10" do 
     before do 
       @basketball_player = Basketball_player.new("Kevin Durrant", 11)
   end 

   it " is an allstar" do
     @basketball_player.should be_allstar  
  end 

   it " having a great game" do
     @basketball_player.status.should ==  "Great Game"
   end 
 end

  context "with rank of less than 8" do
    @basketball_player = Basketball_player.new("Derreck Rose", 7 )
  end

  it " is not an allstar" do 
    @basketball_player.should_not be_allstar
  end
  it "having a bad game" do 
    @basketball_player.status.should == "Bad Game" 
  end 
end

