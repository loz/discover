require 'bootspec'
include Bootspec

#Positive Path
result = check true
if result == '.'
  print "."
else
  print "F"
end

#Negative Path
result = check false
if result == 'F'
  print "."
else
  print "F"
end

#Test check with check
print check check(true) == '.'
print check check(false) == 'F'
