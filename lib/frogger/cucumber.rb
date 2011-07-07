Before do |scenario|
  @frog = Frogger::Frog.new scenario
  @frog.log_scenario
  @frog.log_step
end if respond_to?(:Before)

AfterStep do
  @frog.log_step
end if respond_to?(:AfterStep)
