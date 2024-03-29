require 'bootspec'
include Bootspec

#Test passing run, shows dots, spec count and 'no failures'
output = capture do
  requirements do
    spec { expect true.to_be true }
  end
end

expect output.to_be <<-SPEC
.

1 specification, no failures
SPEC
print '.'


#Test that failures are totalled up
output = capture do
  requirements do
    spec { expect true.to_be false }
  end
end

expect output.to_be <<-SPEC
F

1 specification, 1 failure
SPEC
print '.'

#Test that specs are counted in summary
output = capture do
  requirements do
    spec { expect true.to_be true }
    spec { expect true.to_be false }
  end
end

expect output.to_be <<-SPEC
.F

2 specifications, 1 failure
SPEC
print '.'
