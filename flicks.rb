require_relative 'players_team'

basketball_player1 = Basketball_player.new("Michael Jordan", 10) 
basketball_player2 = Basketball_player.new("Charles Barkley", 9) 
basketball_player3 = Basketball_player.new("Kobey Bryant", 9)
basketball_player4 = Basketball_player.new("Kevin Durant", 9)
basketball_player5 = Basketball_player.new("Karl Malone", 8)
basketball_player6 = Basketball_player.new("Allen Iverson", 8)
basketball_player7 = Basketball_player.new("Shaquille O'niel", 9)
basketball_player8 = Basketball_player.new("Kevin Garnet", 9)
basketball_player9 = Basketball_player.new("Dwight Howard", 8)
basketball_player10 = Basketball_player.new("Scotty Pippen", 9)
basketball_player11 = Basketball_player.new("John Stockton", 8)

team1 = Team.new("The Manatee") 
team1.add_player(basketball_player1)
team1.add_player(basketball_player2)
team1.add_player(basketball_player3)
team1.add_player(basketball_player4)
team1.add_player(basketball_player5)
team1.game(1) 
team1.print_stats

team2 = Team.new("The Lazers")
team2.add_player(basketball_player6)
team2.add_player(basketball_player7)
team2.add_player(basketball_player8)
team2.add_player(basketball_player9)
team2.add_player(basketball_player10)
team2.add_player(basketball_player11)
team2.game(1) 
team2.print_stats
