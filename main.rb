require 'csv'

require_relative './lib/player'

def run_game
  scripts = CSV.read('./data/mystic-console-quest-scripts.csv', headers: true).map { |script| script.to_h }
  puts "What is your name?"
  name = gets.chomp
  new_player = Player.new(name)

  puts "Welcome #{new_player.name}"
  p scripts[0]["welcome_script"]
end

run_game