#!/usr/bin/env ruby

require_relative 'classes/player'
require_relative 'classes/game'
require_relative 'classes/colorize'
puts
puts "*" * 28
puts " LET'S PLAY TO TIC-TAC-TOE!"
puts "*" * 28
puts

game = Game.new

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

