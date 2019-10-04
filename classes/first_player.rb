class PlayerOne

  def initialize(n)
    @n = n
    @win
    $p1_name = n
    $p1_turn = true
  end

  def name
    @n.capitalize
  end

  def self.turn?(turn)
    if turn == false
      "YO TURN PLAYER ONE"
    end
  end

  def turn
    print "#{$p2_name}, what will it be? > "
    grid = gets.chomp
  end

  def win?(win)
     if win == true
      msg = "YOU WON #{@n}!"
     else
      turn = $player_two_turn
     end
     puts msg
  end
end