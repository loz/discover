require 'bootspec'
include Bootspec

#Check that expect doesn't raise exceptions for true
error_raised = false
begin
  expect true
rescue
  error_raised = true
end

print check !error_raised

#Check that expect raises exceptions for false
error_raised = false
begin
  expect false
rescue
  error_raised = true
end

print check error_raised

#Check that expect accepts a condition, not just boolean
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
