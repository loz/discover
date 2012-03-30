class Expectation
  attr_reader :met, :message

  def initialize(options = {})
    @met = options[:met]
    @message = options[:message]
  end
end
