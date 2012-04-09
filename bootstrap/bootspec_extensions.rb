class Object
  unless method_defined? :to_be
    def to_be(expected)
      Expectation.new :met => (self == expected), :message => "expected '#{self}' to be '#{expected}'"
    end
  end

  unless method_defined? :to_include
    def to_include(expected)
      Expectation.new :met => self.include?(expected), :message => "expected '#{self}' to include '#{expected}'"
    end
  end
end
