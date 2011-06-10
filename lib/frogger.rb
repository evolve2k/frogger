module Frogger
  Before do |scenario|
      Rails.logger.debug("\n\n #{scenario.name}                                                                                                          (scenario)".black_on_green) 
  end
end

World(Frogger)