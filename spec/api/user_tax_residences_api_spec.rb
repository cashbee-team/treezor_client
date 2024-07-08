=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'spec_helper'
require 'json'

# Unit tests for TreezorClient::UserTaxResidencesApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserTaxResidencesApi' do
  before do
    # run before each test
    @instance = TreezorClient::UserTaxResidencesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserTaxResidencesApi' do
    it 'should create an instance of UserTaxResidencesApi' do
      expect(@instance).to be_instance_of(TreezorClient::UserTaxResidencesApi)
    end
  end

  # unit tests for delete_taxresidence
  # Delete a residence
  # Delete a residence that match id
  # @param id The unique identifier of the Tax Residence
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Legacy attribute, do not use.
  # @return [InlineResponse20033]
  describe 'delete_taxresidence test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_taxresidence
  # Get Tax Residence
  # Retrieve a Tax Residence based on its &#x60;id&#x60;.
  # @param id The unique identifier of the TaxResidence.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Legacy attribute, do not use.
  # @return [InlineResponse20031]
  describe 'get_taxresidence test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_taxresidences
  # Search Tax Residences
  # Retrieve Tax Residences that match your search conditions.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Legacy attribute, do not use. 
  # @option opts [Integer] :id The unique identifier of the Tax Residence.
  # @option opts [Integer] :user_id The unique identifier of the User.
  # @return [InlineResponse20029]
  describe 'get_taxresidences test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_taxresidence
  # Create Tax Residence
  # Create a new Tax Residence.
  # @param body 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Legacy attribute, do not use. 
  # @return [InlineResponse20030]
  describe 'post_taxresidence test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_taxresidence
  # Update Tax Residence
  # Modify an existing Tax Residence.
  # @param id The unique identifier of the TaxResidence
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Legacy attribute, do not use.
  # @option opts [Integer] :user_id User&#39;s id residence
  # @option opts [String] :country country of the resident
  # @option opts [String] :tax_payer_id Tax payer&#39;s id
  # @option opts [BOOLEAN] :liability_waiver Tax declaration
  # @return [InlineResponse20032]
  describe 'put_taxresidence test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end