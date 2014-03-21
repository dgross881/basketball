Dunk = Struct.new(:dunk_name, :skill_level)

module SlamDunk
  DUNKS = [
    Dunk.new(:threesixtied, 7),
    Dunk.new(:tamahawked, 10),
    Dunk.new(:reversed, 8),
    Dunk.new(:windmilled, 12),
    Dunk.new(:allyooped, 5) 
  ] 

  def self.random
    DUNKS.sample 
  end 
end 

 if __FILE__ == $0

 puts SlamDunk::DUNKS 
 dunk = SlamDunk.random
 puts "BOOOM You just got #{dunk.dunk_name} on ! (#{dunk.skill_level} points)"
end
