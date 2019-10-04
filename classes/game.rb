class Game
  def initialize
  end

  def board
    arr = [];
    for i in 1..9
      arr.push(" [ #{i} ]").each_slice(3) 
    end
    puts arr.each_slice(3) { |x| puts x.join }
  end

  def play
  end

  def winner?
    "Congratulations!"
  end
end
