class Game
  def initialize
    @arr = []
    @curr_player = 1
    @used_grids = []
    @set_player = Player.new(nil)
    @player_one_grid = []
    @player_two_grid = []
    @winning_patterns = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  end
  
  def board
    # >>> This creates the board and marks every grid with a number 1 - 9
    for i in 1..9
      @arr.push(" [ ".blue + i.to_s.light_blue + " ] ".blue).each_slice(3)
    end
    @arr.each_slice(3) { |x| puts x.join puts}
    @arr
  end
  
  def play
    ct = 0
    while ct < 9

      # >>> Asks the player to pick a number for a grid they'd like to play
      puts
      print "Play a grid! > "
      grid_picked = gets.chomp
      grid_picked = grid_picked.to_i
      
      # >>> This restricts a player from playing a grid that has already been filled.
      if @used_grids.include? grid_picked
        puts
        puts "That grid been played already! Pick another one"
      else
        @used_grids.push(grid_picked)

        # >>> This makes sure the input is a number from 1 - 9
        if grid_picked < 10 && grid_picked > 0
          if @curr_player == 1
            @arr[grid_picked.to_i - 1] = " [ ".blue + "X".yellow + " ] ".blue
            @player_one_grid.push(grid_picked)
            @curr_player = 2
            self.did_win
          else
            @arr[grid_picked.to_i - 1] = " [ ".blue + "O".red + " ] ".blue
            @player_two_grid.push(grid_picked)
            @curr_player = 1
            self.did_win
          end
          ct+=1
          puts
          puts @arr.each_slice(3) { |x| puts x.join puts }
        else
          puts
          puts "You must input a number between 1 and 9!"
        end
      end
    end
  end

  def did_win
    for i in 0...@winning_patterns.length
      if (@winning_patterns[i]-@player_one_grid).empty? == true
        puts "PLAYER ONE YOU JUST WON!"
        puts @arr.each_slice(3) { |x| puts x.join puts }
        exit
      elsif (@winning_patterns[i]-@player_two_grid).empty?
        puts "PLAYER TWO YOU WON!!!"
        puts @arr.each_slice(3) { |x| puts x.join puts }
        exit
      end
    end
  end
end

