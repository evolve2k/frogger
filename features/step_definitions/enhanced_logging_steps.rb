class String
  def black_on_green
    [self, :black_on_green]
  end
  
  def black_on_blue
    [self, :black_on_blue]
  end
    
  def black_on_yellow
    [self, :black_on_yellow]
  end
end

class FakeLogger
  attr_reader :logs

  def initialize
    @logs = []
  end

  def reset
    @logs = []
  end

  def debug message
    @logs << message
  end
end

module Rails
  def self.logger
    @logger ||= FakeLogger.new
  end
end

Given /^a cucumber feature is executing against my rails application$/ do
  #Rails.logger.reset
end

When /^I examine the rails log$/ do
end

When /^I do some crazy Inception like test on myself$/ do
end

Then /^I see the following log entries:$/ do |ast|
  completed_lines = ast.hashes[0..-2]
  completed_lines.each do |expected_line|
    message, colour = expected_line['Message'], expected_line['Colour'].to_sym
    
    raise "Did not find expected log entry #{string}" unless Rails.logger.logs.any? do |log|
      log.first.chomp.strip == message && log[1] == colour
    end
  end
end