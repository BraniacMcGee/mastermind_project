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

  it 'delivers an error' do
    guess = Guess.new('RGBY')
    @secret = ['Y', 'G', 'B', 'R']

  expect(guess.error_message).to be nil

    guess = Guess.new('RGBYY')
    @secret = ['Y', 'G', 'B', 'R']

  expect(guess.error_message).to eq('Your guess is too long. All guesses must be 4 characters. Please try again.')

    guess = Guess.new('RGB')
    @secret = ['Y', 'G', 'B', 'R']

  expect(guess.error_message).to eq('Your guess is too short. All guesses must be 4 characters. Please try again.')
  end

  xit 'compares guess to secret' do
    guess = Guess.new('RGBY')
    @secret = ['Y', 'G', 'B', 'R']
    guess1  = ['B', 'G', 'Y', 'R']
    # 'rrgb' has 3 of the correct elements with 2 in the correct positios
    #you've taken 1 guess
  end
end
