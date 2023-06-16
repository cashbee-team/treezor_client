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

# Unit tests for TreezorClient::InlineResponse2005Businessinformations
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'InlineResponse2005Businessinformations' do
  before do
    # run before each test
    @instance = TreezorClient::InlineResponse2005Businessinformations.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InlineResponse2005Businessinformations' do
    it 'should create an instance of InlineResponse2005Businessinformations' do
      expect(@instance).to be_instance_of(TreezorClient::InlineResponse2005Businessinformations)
    end
  end
  describe 'test attribute "legal_name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "legal_registration_number"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "legal_registration_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "legal_form"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["1000", "1100", "1200", "1300", "1400", "1500", "1600", "1700", "1800", "1900", "2110", "2120", "2210", "2220", "2310", "2320", "2385", "2400", "2700", "2900", "3110", "3120", "3205", "3210", "3220", "3290", "4110", "4120", "4130", "4140", "4150", "4160", "5191", "5192", "5193", "5194", "5195", "5196", "5202", "5203", "5306", "5307", "5308", "5309", "5385", "5410", "5415", "5422", "5426", "5430", "5431", "5432", "5442", "5443", "5451", "5453", "5454", "5455", "5458", "5459", "5460", "5485", "5498", "5499", "5505", "5510", "5515", "5520", "5522", "5525", "5530", "5531", "5532", "5542", "5543", "5546", "5547", "5548", "5551", "5552", "5553", "5554", "5555", "5558", "5559", "5560", "5585", "5599", "5605", "5610", "5615", "5620", "5622", "5625", "5630", "5631", "5632", "5642", "5643", "5646", "5647", "5648", "5651", "5652", "5653", "5654", "5655", "5658", "5659", "5660", "5685", "5699", "5710", "5720", "5785", "5800", "6100", "6210", "6220", "6316", "6317", "6318", "6411", "6521", "6532", "6533", "6534", "6535", "6536", "6537", "6538", "6539", "6540", "6541", "6542", "6543", "6544", "6551", "6554", "6558", "6560", "6561", "6562", "6563", "6564", "6565", "6566", "6567", "6568", "6569", "6571", "6572", "6573", "6574", "6575", "6576", "6577", "6578", "6585", "6588", "6589", "6595", "6596", "6597", "6598", "6599", "6901", "7111", "7112", "7113", "7120", "7150", "7160", "7171", "7172", "7179", "7190", "7210", "7220", "7225", "7229", "7230", "7312", "7313", "7314", "7321", "7322", "7323", "7331", "7340", "7341", "7342", "7343", "7344", "7345", "7346", "7347", "7348", "7349", "7351", "7352", "7353", "7354", "7355", "7356", "7361", "7362", "7363", "7364", "7365", "7366", "7371", "7372", "7373", "7378", "7379", "7381", "7382", "7383", "7384", "7385", "7389", "7410", "7430", "7450", "7470", "7490", "8110", "8120", "8130", "8140", "8150", "8160", "8170", "8190", "8210", "8250", "8290", "8310", "8311", "8410", "8420", "8450", "8470", "8490", "8510", "8520", "9110", "9150", "9210", "9220", "9221", "9222", "9223", "9224", "9230", "9240", "9260", "9300", "9900", "9970"])
      # validator.allowable_values.each do |value|
      #  expect { @instance.legal_form = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "legal_share_capital"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "legal_sector"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "legal_annual_turn_over"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["", "0-39", "40-99", "100-249", "250-999", "1000-2999", "3000-9999", "10000-99999", "100000-*"])
      # validator.allowable_values.each do |value|
      #  expect { @instance.legal_annual_turn_over = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "legal_net_income_range"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["", "0-4", "5-9", "10-49", "50-149", "150-499", "500-*"])
      # validator.allowable_values.each do |value|
      #  expect { @instance.legal_net_income_range = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "legal_number_of_employee_range"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["", "0", "1-9", "10-99", "100-249", "250-*"])
      # validator.allowable_values.each do |value|
      #  expect { @instance.legal_number_of_employee_range = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "phone"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "email"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "address1"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "postcode"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "city"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "state"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "country"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["D", "N", "I", "A", "C", "T", "S", "L", "O"])
      # validator.allowable_values.each do |value|
      #  expect { @instance.status = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "tradename"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "users"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

