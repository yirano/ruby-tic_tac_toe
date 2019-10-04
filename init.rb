#!/usr/bin/env ruby

require_relative 'classes/player'
require_relative 'classes/game'
require_relative 'classes/colorize'
ct = 0
puts
puts "*" * 28
puts " LET'S PLAY TO TIC-TAC-TOE!"
puts "*" * 28
puts
p1 = Player.new("Tiffany")
p2 = Player.new("James")
game = Game.new(p1, p2)

=begin
puts "What is your name Player One?"
print "> "
inp = gets.chomp
p1 = PlayerOne.new(inp)
puts "What is your name Player Two?"
print "> "
inp = gets.chomp
p2 = PlayerTwo.new(inp)
puts "All right! Let's play #{p1.name} and #{p2.name}!"
puts
puts "Pick a grid to play by inputting the number you see. \nIf the grid has been played, you cannot play that again!"
puts
game.play
print "#{p1.name}, what will it be? > "
p1_play = gets.chomp ##### GRAB THIS INPUT AND BRING IT INTO game.rb
puts "You have picked #{p1_play}!"
puts
=end

# puts p2.turn?(false)
# puts p1.turn?(false)

game.board
game.play


=begin

1. FIGURE OUT HOW TO SWITCH PLAYERS AFTER EACH ROUNDS
2. MAKE SURE THE GRID THAT HAS BEEN PICKED CAN'T BE PLAYED AGAIN
3. CHECK IF PLAYER WON AFTER EACH INPUT
4. IF PLAYER WINS, QUIT THE GAME AND ANNOUNCE WINNER
5. GIVE OPTION TO PLAY AGAIN
6. CLEAR BOARD IF YES AND START OVER
=end

