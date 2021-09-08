require 'rspec'
require './lib/game'
require './lib/sequences'


RSpec.describe do
 it 'exists' do
   sequence = Sequences.new(@secret)
  expect(sequence).to be_an_instance_of Sequences
 end

 it 'can relay instructions' do
    sequence = Sequences.new(@secret)
    expect(sequence.instructions).to be_a String
  end

  it 'can cheat' do
    sequence = Sequences.new(@secret)
    expect(sequence.cheat).to eq(NIL)
  end

  it 'can quit game' do
    sequence = Sequences.new(@secret)
    expect(sequence.quit).to exit
  end
end
