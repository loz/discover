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

  def requirements(&block)
    Bootspec::Requirements.new.tap { |r| r.instance_eval &block }.print_summary
  end

end
