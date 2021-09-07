class Secret
  attr_reader :secret_code,
              :result,


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
  require "pry"; binding.pry
    @secret_code = ['R', 'G', 'B', 'Y']
    4.times.map {secret_code.sample}


#would this be better to do than ^ if we need to call on the output later???
  #secret.each do
    #secret.shuffle!
  #end

  end
end
