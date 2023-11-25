class Game
  attr_reader :players, :gameInfo
  #base class for all games
  def initialize(players)
    @players = players
    @gameInfo = []
    for i in 0..players.length()-1
      @gameInfo.append('none')
    end
  end

  def play()
    puts "Players in the game:"
    @players.length().times { |i| puts "#{players[i]}: #{gameInfo[i]}" }
  end

  def get_results(results)
    return "[pretend these are " + results + " results]"
  end
end

class Poker < Game
  def initialize(players)
    super(players)
    #set gameInfo to no cards
    for i in 0..players.length()-1
      @gameInfo[i] = 'no cards'
    end
    puts "Poker"
  end

  def get_results()
    return super("poker")
  end
end

class Chess < Game
  def initialize(players)
    super(players)
    #set gameInfo to white and black
    @gameInfo[0] = 'white'
    @gameInfo[1] = 'black'
    puts "Chess"
  end

  def get_results()
    return super("chess")
  end
end

class Go < Game
  def initialize(players)
    super(players)
    #set gameInfo to white and black
    @gameInfo[0] = 'white'
    @gameInfo[1] = 'black'
    puts "Go"
  end

  def get_results()
    return super("go")
  end
end

class PlayGames

  def initialize(game_number, player_list)
    @player_list = player_list
    @game_number = game_number
  end

  def play()
    case @game_number
    when 1
      poker = Poker.new(@player_list)
      poker.play()
      puts poker.get_results()
    when 2
      chess = Chess.new(@player_list)
      chess.play()
      puts chess.get_results()
    when 3
      go = Go.new(@player_list)
      go.play()
      puts go.get_results()
    end
  end
end

pg = PlayGames.new(1, ["alice", "bob", "chris", "dave"])
pg.play()

puts

pg = PlayGames.new(2, ["alice", "bob"])
pg.play()

puts

pg = PlayGames.new(3, ["alice", "bob"])
pg.play()

