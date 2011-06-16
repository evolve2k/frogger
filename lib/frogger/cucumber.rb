require 'colored'

Cucumber::Ast::Background.send(:attr_reader, :raw_steps)
Cucumber::Ast::Feature.send(:attr_reader, :background)

Before do |scenario|  
  scenario_background = scenario.feature.send(:background)
  @frogger_steps = if scenario_background
    scenario_background.send(:raw_steps) + scenario.raw_steps
  else
    scenario.raw_steps
  end
  
  @max_length = scenario.name.length
  @frogger_steps.each { |step|
    step_length = "#{step.keyword} #{step.name}".length
    @max_length  = step_length if step_length > @max_length
  }
  @max_length + 6
  
  padding = @max_length - 2 - scenario.name.length
  Rails.logger.debug("\n\n  #{scenario.name.upcase}#{ ' ' * padding }  ".black_on_green)
  # Rails.logger.debug("\n\n ".black_on_green + ' ' + scenario.name + ' ' + ' '.black_on_green)
  
  @step_index = 0
  print_step(@frogger_steps[@step_index])
end

AfterStep do |scenario|
  @step_index += 1
  print_step(@frogger_steps[@step_index]) if @frogger_steps[@step_index]
end

def print_step(step)
  step_to_s = "#{step.keyword}#{step.name}"
  padding = @max_length - 4 - step_to_s.length
  padding = 0 if padding < 0
  if step.background?
    Rails.logger.debug("\n    #{ step_to_s }#{ ' ' * padding }  ".black_on_blue) unless step == nil
  else
    Rails.logger.debug("\n    #{ step_to_s }#{ ' ' * padding }  ".black_on_yellow) unless step == nil  
    # Rails.logger.debug("\n ".black_on_yellow + ' ' + step_to_s + ' ' + " ".black_on_yellow)
  end
end

# module ActiveRecord
#   class LogSubscriber < ActiveSupport::LogSubscriber
#     def sql(event)
#       puts event.payload[:name].gsub(/(.*) Load/, "\\1").inspect
#     end
#   end
# end