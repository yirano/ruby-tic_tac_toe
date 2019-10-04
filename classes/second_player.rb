class PlayerTwo

  def initialize(n)
    @n = n
    @win
    $p2_name = n
    $p2_turn = false
  end

  def name
    @n.capitalize
  end

  def turn?(turn)
    if turn == true
      "LET'S GO"
    end
    msg
  end

  def turn
    print "#{$p1_name}, what will it be? > "
    grid = gets.chomp
  end

  def win?(win)
     if win == true
      msg = "YOU WON #{@n}!"
     else
      msg = "KEEP GOING #{@n}"
     end
     puts msg
  end
end