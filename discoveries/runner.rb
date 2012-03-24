discover DiscoverRunner do
  with "an expectation which passes" do
    it.has "a file of discover code" do |runner|
      runner.file = './cases/test_passing.rb'
    end
    it.runs
    i.expect_it to.not have.any.errors
  end
end
