require 'bootspec'
include Bootspec

#Test passing run, shows dots, spec count and 'no failures'
output = capture do
  requirements do
    spec { expect true.to_be true }
  end.run
end

expect output.to_be <<-SPEC
.

1 specification, no failures
SPEC
print '.'
