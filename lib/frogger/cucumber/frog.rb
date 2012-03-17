class Frogger::Cucumber::Frog
  attr_reader   :scenario, :logger
  attr_accessor :step_index
  
  def initialize(scenario, logger = default_logger)
    @scenario   = scenario
    @logger     = logger
    @step_index = 0
  end
  
  def log_scenario
    padding = max_length - 2 - scenario.name.length
    logger.debug(
      "\n\n  #{scenario.name.upcase}#{ ' ' * padding }  ".black_on_green
    )
  end
  
  def log_step
    return if step.nil?
    
    step_to_s = "#{step.keyword}#{step.name}"
    padding = [max_length - 4 - step_to_s.length, 0].max
    
    logger.debug "\n    #{ step_to_s }#{ ' ' * padding }  ".black_on_yellow
    
    self.step_index += 1
  end

  def scenario_outline?
    scenario.class == Cucumber::Ast::OutlineTable::ExampleRow
  end
  
  private
  
  def default_logger
    Rails.logger
  end
  
  def steps
    @steps ||= background_steps + 
               (scenario_outline? ? scenario.scenario_outline.raw_steps : scenario.raw_steps)
  end
  
  def step
    steps[step_index]
  end
  
  def background
    @background ||= begin
      if scenario_outline?
        scenario.scenario_outline.feature.instance_variable_get(:@background)
      else
        scenario.feature.instance_variable_get(:@background)
      end
    end
  end
  
  def background_steps
    background.nil? ? [] : background.instance_variable_get(:@raw_steps)
  end
  
  def max_length
    @max_length ||= steps.inject(scenario.name.length) { |max, step|
      [max, "#{step.keyword} #{step.name}".length].max
    } + 6
  end
end
