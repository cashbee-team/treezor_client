=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for TreezorClient::InlineResponse2005Users
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse2005Users' do
  before do
    # run before each test
    @instance = TreezorClient::InlineResponse2005Users.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2005Users' do
    it 'should create an instance of InlineResponse2005Users' do
      expect(@instance).to be_instance_of(TreezorClient::InlineResponse2005Users)
    end
  end
  describe 'test attribute "firstname"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "lastname"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "fullnames"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "birthday"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "parent_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Honorary president", "Not associated manager", "President of the control council", "Member of the management board", "Member of the supervisory council", "Member of the control committee", "Partner", "Management advisor ", "Deputy managing director", "Vice-president of the management board", "Vice-president of the supervisory council", "Developer", "Other manager", "Receiver", "Authorized agent", "Person in charge abroad", "Representative in France", "Member of the management council", "Member of the control council", "Treasurer", "Secretary", "Member", "Administrative director", "Sales director", "Financial director", "Chief Technical Officer", "General secretary", "Chief accountant", "Guardian", "Plan commissioner ", "Management agent", "Concordat commissioner", "Representative of the creditors", "Judicial representative", "Substitute judge-commissioner", "Judge-commissioner", "Receiver/representative of the creditors", "Conciliator", "Auditor", "Statutory auditor", "Supervision commissioner", "Deputy auditor", "Spouse-associate", "Accounts controller", "Censor", "Chief Executive Officer", "President", "Chairman of the Board", "Governor", "Deputy governor", "Person having the power to usually involve the company", "Manager", "Co-managing partner", "Managing director", "Managing director not administrator", "Unique managing director", "Delegated managing director", "Vice-president", "Administrator", "Delegated administrator", "President of the management board", "President of the supervisory council", "Active partner", "Management controller", "Liquidator", "Temporary administrator", "Representative in France of a foreign company", "Personal business manager"])
      # validator.allowable_values.each do |value|
      #  expect { @instance.parent_type = value }.not_to raise_error
      # end
    end
  end

end

