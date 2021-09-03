class Secret
  attr_reader :secret_code

  def initialize(secret_code)
  @secret_code = secret_code
  end

  def secret_code
    @secret_code
  end

  def generate_code

    secret_code = ['R', 'G', 'B', 'Y']
    4.times.map {secret_code.sample}
  end
end
