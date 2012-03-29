class Object
  unless method_defined? :to_be
    def to_be(expected)
      self == expected
    end
  end
end
