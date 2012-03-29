require 'stringio'
require 'bootspec_extensions'

module Bootspec
  def check(value)
    if value
      '.'
    else
      'F'
    end
  end

  def expect(value)
    raise 'Unexpected' unless value
  end

  def capture
    old = $stdout
    $stdout = StringIO.new
    yield
    string = $stdout.string
    $stdout = old
    string
  end
end
