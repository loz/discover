require 'bootspec'
include Bootspec

#Test that output is captured correctly

result = capture do
  print 'expected'
end

print check result == 'expected'
