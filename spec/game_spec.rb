require 'rspec'
require './lib/mastermind'
require './lib/play'

RSpec.describe Game do
  it 'exists' do
    game = Game.new(['R', 'R', 'G', 'Y'])
    game = Game.new(secret)
    secret = ['R', 'R', 'R', 'R']

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
