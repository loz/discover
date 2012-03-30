class Object
  unless method_defined? :to_be
    def to_be(expected)
      Expectation.new :met => (self == expected), :message => "expected '#{self}' to be '#{expected}'"
    end
  end
end
