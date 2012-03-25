require 'bootspec'
include Bootspec

#Test that output is captured correctly

result = capture do
  print 'expected'
end

expect result == 'expected'
print check result == 'expected'

#Test that output is restored afterwards
after = capture do
  inside = capture do
    print 'inside'
  end
  print 'after'
end

expect after == 'after'
print check after == 'after'
