require 'bootspec'
include Bootspec

#Check that expect accepts a condition (Expectation)
expect 'something'.to_be 'something'
error_raised = false
begin
  expect 'something'.to_be 'something'
rescue
  error_raised = true
end

print check !error_raised

#Check that expect fails for unmet condition
error_raised = false
begin
  expect 'something'.to_be 'something else'
rescue
  error_raised = true
end

print check error_raised

#Check that the condition is detailed in the raised error
begin
  expect 'one thing'.to_be 'another'
rescue => error
end

print check error.message.include? "expected 'one thing' to be 'another'"
