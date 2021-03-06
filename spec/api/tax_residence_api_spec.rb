=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for TreezorClient::TaxResidenceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TaxResidenceApi' do
  before do
    # run before each test
    @instance = TreezorClient::TaxResidenceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TaxResidenceApi' do
    it 'should create an instance of TaxResidenceApi' do
      expect(@instance).to be_instance_of(TreezorClient::TaxResidenceApi)
    end
  end

  # unit tests for tax_residences_get
  # search a residence
  # Search a residence that match search criteria
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
  # @option opts [Integer] :id id of the residence
  # @option opts [Integer] :user_id User&#39;s id residence
  # @return [InlineResponse20028]
  describe 'tax_residences_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tax_residences_id_delete
  # delete a residence
  # Delete a residence that match id
  # @param id id of the residence
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
  # @return [InlineResponse20028]
  describe 'tax_residences_id_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tax_residences_id_get
  # read the informations of a residence
  # Read the informations of a residence that match with id
  # @param id id of the residence
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
  # @return [InlineResponse20028]
  describe 'tax_residences_id_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tax_residences_id_put
  # update the residence
  # Update a residence already created.
  # @param id residence id
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
  # @option opts [Integer] :user_id User&#39;s id residence
  # @option opts [String] :country country of the resident
  # @option opts [String] :tax_payer_id Tax payer&#39;s id
  # @option opts [BOOLEAN] :liability_waiver Tax declaration
  # @return [InlineResponse20028]
  describe 'tax_residences_id_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for tax_residences_post
  # create a residence
  # Create a new tax residence.
  # @param user_id User&#39;s id residence
  # @param country country of the resident
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
  # @option opts [String] :tax_payer_id Tax payer&#39;s id
  # @option opts [BOOLEAN] :liability_waiver When there is no taxPayerId for a residence, this field shall be set to true.
  # @return [InlineResponse20028]
  describe 'tax_residences_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
