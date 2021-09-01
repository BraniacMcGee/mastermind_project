require 'rspec'
require './lib/mastermind'

RSpec.describe Game do
  it 'exists' do
  game = Game.new(secret)
  secret = ['R', 'R', 'R', 'R']

  expect(game).to be_an_instance_of(Game)
  end

  xit 'has readable attributes' do
    game = Game.new(['R', 'R', 'G', 'Y'])

    expect Game.new.to eq([''])
  end
end
