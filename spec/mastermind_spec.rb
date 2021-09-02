require 'rspec'
require './lib/mastermind'
require './lib/play'

RSpec.describe Game do
  it 'exists' do
<<<<<<< HEAD
    game = Game.new(['R', 'R', 'G', 'Y'])
=======
  game = Game.new(secret)
  secret = ['R', 'R', 'R', 'R']
>>>>>>> 128ccf51ac7e5c5345ac3183b5cb6befdcb34bd0

    expect(game).to be_an_instance_of(Game)
  end

  it 'can be played' do
    game = Game.new(['R', 'R', 'G', 'Y'])

    expect(game.play).to include(gets)
  end

  xit 'has readable attributes' do
    game = Game.new(['R', 'R', 'G', 'Y'])

    expect Game.new.to eq([''])
  end
end
