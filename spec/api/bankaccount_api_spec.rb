=begin
#Treezor

#Treezor API.  more info [here](https://www.treezor.com). 

OpenAPI spec version: 0.1.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for TreezorClient::BankaccountApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'BankaccountApi' do
  before do
    # run before each test
    @instance = TreezorClient::BankaccountApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BankaccountApi' do
    it 'should create an instance of BankaccountApi' do
      expect(@instance).to be_instance_of(TreezorClient::BankaccountApi)
    end
  end

  # unit tests for delete_bankaccount
  # deactivate a bank account
  # Change bank account&#39;s status to CANCELED. If a payout is being validated on this bank account, it can not be canceled.
  # @param id Bank Accounts internal id.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2003]
  describe 'delete_bankaccount test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bankaccount
  # get a bank account
  # Get a bank account from the system.
  # @param id Bank Accounts internal id.
  # @param [Hash] opts the optional parameters
  # @return [InlineResponse2003]
  describe 'get_bankaccount test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_bankaccounts
  # search bank accounts
  # Get bank accounts that match search criteria.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
  # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
  # @option opts [Integer] :bankaccount_id bank account id.
  # @option opts [String] :bankaccount_status bank account status. Possible values: * CANCELED * PENDING * VALIDATED 
  # @option opts [Integer] :user_id Bank account owner user&#39;s id
  # @option opts [String] :bankaccount_iban Bank account IBAN
  # @option opts [Integer] :page_number Pagination page number. More info [here](https://agent.treezor.com/lists). 
  # @option opts [Integer] :page_count The number of items per page. More info [here](https://agent.treezor.com/lists). 
  # @option opts [String] :sort_by The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). 
  # @option opts [String] :sort_order The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://agent.treezor.com/lists). 
  # @option opts [DateTime] :created_date_from The creation date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  # @option opts [DateTime] :created_date_to The creation date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  # @option opts [DateTime] :updated_date_from The modification date from which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  # @option opts [DateTime] :updated_date_to The modification date up to which you want to filter the request result. Format YYYY-MM-DD HH:MM:SS. More info [here](https://agent.treezor.com/lists) 
  # @return [InlineResponse2003]
  describe 'get_bankaccounts test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_bankaccount
  # create a bank account
  # Create a new benefeciary bank account in the system.
  # @param user_id Owner user&#39;s id.
  # @param bankaccount_owner_name Bank account owner&#39;s name.
  # @param bankaccount_owner_address Bank account owner&#39;s address.
  # @param bankaccount_iban Beneficiary bank account&#39;s IBAN.
  # @param bankaccount_bic Beneficiary bank account&#39;s BIC (or SWIFT).
  # @param bankaccount_type Beneficiary bank account&#39;s type.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :access_signature Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  # @option opts [String] :access_tag Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  # @option opts [Integer] :access_user_id Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
  # @option opts [String] :access_user_ip Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). 
  # @option opts [String] :bankaccount_tag Custom data.
  # @option opts [String] :name Bank account&#39;s name.
  # @return [InlineResponse2003]
  describe 'post_bankaccount test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
