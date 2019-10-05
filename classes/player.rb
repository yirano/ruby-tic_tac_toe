class Player

  def initialize(n)
    @n = n
    @win
    self.set_player
  end

  def name
    @n.capitalize
  end

  def set_player
    # PUT THIS INTO LOOP
    puts
    puts "What is your name Player One?"
    print "> "
    p1_name = gets.chomp
    puts
    puts "What is your name Player Two?"
    print "> "
    p2_name = gets.chomp
    puts
    # LOOP ENDS HERE

    # >>> This just gives the names their color
    p1_name = p1_name.yellow
    p2_name = p2_name.red
    puts "All right! Let's play #{p1_name} and #{p2_name}!"
    puts
    puts "Pick a grid to play by inputting the number you see. \nIf the grid has been played, you cannot play that again!"
    puts
  end

end
