require 'spec_helper'

module Rails
  def self.logger
    :rails_logger
  end
end

describe Frogger::RSpec::Frog do
  let(:frog) { Frogger::RSpec::Frog.new(example, custom_logger) }
  let(:custom_logger) { double('Custom Logger', :debug => true) }
  let(:example) do
    double('Rspec example',
      :description => 'example name',
      :example_group => example_group)
  end
  let(:example_group) { double('Example group', :ancestors => ancestors) }
  let(:ancestors) do
    [stub(:description => 'ancestor 1'), stub(:description => 'ancestor 2')]
  end

  describe '#log_example' do
    it 'prints the example name in black and green' do
      custom_logger.should_receive(:debug).with("\n ancestor 2 ancestor 1 example name".black_on_yellow)
      frog.log_example
    end
  end
end
