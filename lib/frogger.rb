require 'colored'

module Frogger
end

if defined?(Cucumber)
  module Frogger::Cucumber
  end
  require 'frogger/cucumber/frog'
  require 'frogger/cucumber/init'
end

if defined?(RSpec)
  module Frogger::RSpec
  end
  require 'frogger/rspec/frog'
  require 'frogger/rspec/init' 
end
