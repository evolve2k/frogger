require 'spec_helper'

module Rails
  def self.logger
    :rails_logger
  end
end

describe Frogger::Frog do
  let(:frog) { Frogger::Frog.new(scenario, custom_logger) }
  let(:scenario) { double('Scenario', :raw_steps => [step], :name => 'Foo') }
  let(:custom_logger) { double('Custom Logger', :debug => true) }
  let(:step) { double('Step', :keyword => 'When', :name => ' something happens') }
  
  before :each do
    scenario.stub_chain(:feature, :instance_variable_get).and_return(nil)
  end
  
  describe '#logger' do
    it "is the logger passed in when initialised" do
      frog = Frogger::Frog.new(scenario, custom_logger)
      frog.logger.should == custom_logger 
    end
    
    it "defaults to the Rails logger" do
      frog = Frogger::Frog.new(scenario)
      frog.logger.should == Rails.logger       
    end
  end
  
  describe '#log_scenario' do
    it "prints the scenario name in black on green" do
      custom_logger.should_receive(:debug).with("\n\n  FOO                          ".black_on_green)
      frog.log_scenario
    end
  end
  
  describe '#log_step' do
    it "prints the step name in black on yellow" do
      custom_logger.should_receive(:debug).with("\n    When something happens     ".black_on_yellow)
      frog.log_step
    end
    
    it "increments the step index" do
      step_index = frog.step_index
      frog.log_step
      frog.step_index.should == step_index + 1
    end
  end
  
  describe '#step_index' do
    it "defaults to 0" do
      frog.step_index.should == 0
    end
  end
end
