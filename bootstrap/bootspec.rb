require 'stringio'
require 'bootspec_extensions'
require 'bootspec_expectations'

module Bootspec
  require 'bootspec_requirements'

  def check(value)
    if value
      '.'
    else
      'F'
    end
  end

  def expect(value)
    raise value.message unless value.met
  end

  def capture
    old = $stdout
    $stdout = StringIO.new
    yield
    string = $stdout.string
    $stdout = old
    string
  end

  def requirements
    Bootspec::Requirements.new
  end
end
