class Game
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    self.set_player
  end

  def board
    arr = [];
    for i in 1..9
      arr.push(" [ ".blue + i.to_s.light_blue + " ]".blue).each_slice(3)
    end
    arr.each_slice(3) { |x| puts x.join }
  end

  def set_player
    # PUT THIS INTO LOOP
    puts
    puts "What is your name Player One?"
    print "> "
    inp = gets.chomp
    p1 = Player.new(inp)
    puts
    puts "What is your name Player Two?"
    print "> "
    inp = gets.chomp
    p2 = Player.new(inp)
    puts
    # LOOP ENDS HERE
    p1_name = p1.name.yellow
    p2_name = p2.name.yellow
    puts "All right! Let's play #{p1_name} and #{p2_name}!"
    puts
    puts "Pick a grid to play by inputting the number you see. \nIf the grid has been played, you cannot play that again!"
    puts
  end

  def play
    puts "GAME STARTED"
  end

  def winner?
    "Congratulations!"
  end
end

