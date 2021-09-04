require 'rspec'
require './lib/secrets'
require './lib/game_flow'
require './lib/guess'

describe 'Guess' do

  it 'exists' do
  guess = Guess.new('RGBY')
  @secret = ['Y', 'G', 'B', 'R']

    expect(guess).to be_an_instance_of Guess
  end

  it "can't be too long" do
    guess = Guess.new('RGBY')
    @secret = ['Y', 'G', 'B', 'R']

    expect(guess.too_long?).to eq(false)

    guess = Guess.new('RGBYY')
    @secret = ['Y', 'G', 'B', 'R']

    expect(guess.too_long?).to eq(true)
  end

  it "can't be too short" do
    guess = Guess.new('RGBY')
    @secret = ['Y', 'G', 'B', 'R']

    expect(guess.too_short?).to eq(false)

    guess = Guess.new('RGB')
    @secret = ['Y', 'G', 'B', 'R']
    expect(guess.too_short?).to eq(true)
    end
  end
