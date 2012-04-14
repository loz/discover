require 'bootspec'
include Bootspec

requirements do
  spec { expect true.to_be true }
  spec { expect :foo.to_be :foo }
  spec { expect 'this'.to_include 'that' }
  spec { expect 'this does'.to_include 'does' }
end
