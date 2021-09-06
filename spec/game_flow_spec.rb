require 'rspec'
require './lib/secrets'
require './lib/game_flow'
require './lib/guess'
require './lib/mastermind'

describe 'Game_flow' do
  it 'exists' do
  game_flow = Game_Flow.new('game1')

  expect(game_flow).to be_an_instance_of(Game_Flow)
  end
end

describe 'player guess' do
  let(:user_input) { 'RYGB' }

  it "should be 'RGBY'" do

  expect(user_input).to include('R')
  expect(user_input).to include('Y')
  expect(user_input).to include('G')
  expect(user_input).to include('B')
  end
end

# guesses are case insensitive
# if gets.chomp == q || quit it exits game
# if gets.chomp == c || cheat it prints secret_code
# if gets.chomp.count < 4 it tells them its too short
# if gets.chomp.count > 4 it tells them its too long
# returns correct values until they guess it right
# moves to end game sequence
