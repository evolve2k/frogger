class Frogger::RSpec::Frog
  attr_reader :example, :logger
  
  def initialize(example, logger = default_logger)
    @example = example
    @logger  = logger
  end
  
  def log_example
    group_descriptions = example.example_group.ancestors.map(&:description)
    spec_name = [*group_descriptions.reverse, example.description].join(" ")
    if logger.respond_to?(:debug)
      logger.debug "\n #{ spec_name }".black_on_yellow
    end
  end

  private
  
  def default_logger
    Rails.logger
  end
end
