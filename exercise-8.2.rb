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

poker = Poker.new(["alice", "bob", "chris", "dave"])
poker.play()

puts

chess = Chess.new(["alice", "bob"])
chess.play()

puts

go = Go.new(["alice", "bob"])
go.play()
