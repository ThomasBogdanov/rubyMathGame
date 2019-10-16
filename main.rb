require 'pry'
require './game'
require './player'

Player1 = Player.new("Player 1")
Player2 = Player.new("Player 2")

game = Game.new(Player1, Player2)
game.start