Before do |scenario|
  @frog = Frogger::Frog.new scenario
  @frog.log_scenario
  @frog.log_step
end

AfterStep do
  @frog.log_step
end
