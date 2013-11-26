require_relative '../lib/code_challenge_04.rb'
require_relative '../lib/load_tab_file.rb'
require_relative 'spec_helper.rb'
# Code challenge 04 spec
describe CodeChallenge04 do
  it 'should test true for prefix Ms.' do
    CodeChallenge04.new.is_prefix?('Ms.').should == true
  end
  it 'should test true for prefix Mr.' do
    CodeChallenge04.new.is_prefix?('Mr.').should == true
  end
  it 'should test true for prefix Miss' do
    CodeChallenge04.new.is_prefix?('Miss').should == true
  end
end
