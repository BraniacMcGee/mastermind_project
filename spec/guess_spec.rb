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

  it 'compares guess to secret' do
    guess = Guess.new('RGBY')
    correct_guesses = []
    allow(guess).to receive(:generate_code).and_return(['R','B','G','Y'])
    expect(guess.compare_guess).to be_an Array
    allow(guess).to receive(:generate_code).and_return(['G','R','Y','B'])
    expect(guess.compare_guess).to eq(NIL)

  end

  it 'can compare positions' do
    guess = Guess.new('RGBY')
    allow(guess).to receive(:generate_code).and_return(['R','B','G','Y'])
    expect(guess.compare_guess).to be_an Array
    allow(guess).to receive(:generate_code).and_return(['G','R','Y','B'])
    expect(guess.compare_guess).to eq(NIL)
  end

  xit 'has an output' do
    guess = Guess.new('RGBY')
  expect(guess.guess_output).to be_a String
  end
    # 'rrgb' has 3 of the correct elements with 2 in the correct positios
    #you've taken 1 guess

end
