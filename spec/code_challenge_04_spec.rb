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
  it 'should test false for invalid prefix' do
    CodeChallenge04.new.is_prefix?('Junk').should == false
  end
  it 'should format a phone number to (xxx)xxx-xxxx' do
    output_hash = { phone_number: '(793)987-1472', extension: '' }
    input = '793.987.1472'
    CodeChallenge04.new.format_phone_number(input).should == output_hash
  end
  it 'should format a phone number from 1-xxx-xxx-xxxx to (xxx)xxx-xxxx' do
    output_hash = { phone_number: '(559)420-4347', extension: '' }
    input = '1-559-420-4347'
    CodeChallenge04.new.format_phone_number(input).should == output_hash
  end
  it 'should format a phone number from to (xxx)xxx-xxxx Ext.xxx' do
    output_hash = { phone_number: '(889)500-2922', extension: '62665' }
    input = '889.500.2922 x62665'
    CodeChallenge04.new.format_phone_number(input).should == output_hash
  end
end
