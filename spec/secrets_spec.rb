require 'rspec'
require './lib/secrets'

describe 'Secret' do
  it 'exists' do
  secret = Secret.new(['R', 'G', 'B', 'Y'])

  expect(secret).to be_an_instance_of Secret
  expect(secret.secret_code).to be_an Array
  end

  it 'generates a random code' do
  secret = Secret.new(['R', 'G', 'B', 'Y'])

  secret.generate_code
  expect(secret.secret_code).to include ('R')
  expect(secret.secret_code).to include ('G')
  expect(secret.secret_code).to include ('B')
  expect(secret.secret_code).to include ('Y')
  end
end
