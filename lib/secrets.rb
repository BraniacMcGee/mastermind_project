class Secret
  attr_reader :secret_code,
              :result,
              :generated_code


  def initialize
  @secret_code = secret_code
  @result      = result
  #@secret_code = generate_code
  end

  # def secret_code
  #   @secret_code
  # end

  def generate_code
    result = []
    @secret_code = ['R', 'G', 'B', 'Y']
    @generated_code = result.concat(4.times.map {secret_code.sample})
  end
end
