if RSpec.respond_to?(:configure)
  RSpec.configure do |config|
    config.before(:each) do
      @frog = Frogger::RSpec::Frog.new self.example
      @frog.log_example
    end
  end
end
