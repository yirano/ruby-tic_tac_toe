class Player

  def initialize(n)
    @n = n
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
    p1_name = gets.chomp.yellow
    puts
    puts "What is your name Player Two?"
    print "> "
    p2_name = gets.chomp.red
    puts
    # LOOP ENDS HERE

    # >>> This just gives the names their color
    puts "All right! Let's play #{p1_name} and #{p2_name}!"
    puts
    puts "Pick a grid to play by inputting the number you see. \nIf the grid has been played, you cannot play that again!"
    puts
  end

end
