class Bootspec::Requirements
  def initialize
    @spec_count = 0
    @fail_count = 0
  end

  def spec
    @spec_count += 1
    yield
    print '.'
  rescue
    @fail_count += 1
    print 'F'
  end

  def print_summary
    puts "\n\n"
    spec_word = @spec_count == 1 ? 'specification' : 'specifications'
    fail_count = @fail_count.zero? ? 'no' : @fail_count
    fail_word = @fail_count == 1 ? 'failure' : 'failures'
    puts "#@spec_count #{spec_word}, #{fail_count} #{fail_word}"
  end
end
