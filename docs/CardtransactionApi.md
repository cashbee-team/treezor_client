# TreezorClient::CardtransactionApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_cardtransaction**](CardtransactionApi.md#get_cardtransaction) | **GET** /cardtransactions/{id} | get a card transaction
[**read_card_transaction**](CardtransactionApi.md#read_card_transaction) | **GET** /cardtransactions | search for card transactions


# **get_cardtransaction**
> InlineResponse20010 get_cardtransaction(id)

get a card transaction

get a card transaction

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::CardtransactionApi.new

id = 789 # Integer | Card transactions's internal id.


begin
  #get a card transaction
  result = api_instance.get_cardtransaction(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardtransactionApi->get_cardtransaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card transactions&#39;s internal id. | 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **read_card_transaction**
> InlineResponse2009 read_card_transaction(opts)

search for card transactions

Search for documents. The request must contain at least one of those inputs - cardId, paymentId, publicToken, walletId

### Example
```ruby
# load the gem
require 'treezor_client'
# setup authorization
TreezorClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = TreezorClient::CardtransactionApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  cardtransaction_id: 56, # Integer | Card transaction's Id
  card_id: 56, # Integer | Card's Id
  wallet_id: 56, # Integer | Card's wallet Id
  merchant_id: 56, # Integer | Merchant's Id
  public_token: 'public_token_example', # String | Card's public token
  payment_id: 56, # Integer | Payment's Id
  page_number: 56, # Integer | Pagination page number. More info [here](https://agent.treezor.com/lists). 
  page_count: 56, # Integer | The number of items per page. More info [here](https://agent.treezor.com/lists). 
  sort_by: 'sort_by_example' # String | The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). required: false
}

begin
  #search for card transactions
  result = api_instance.read_card_transaction(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardtransactionApi->read_card_transaction: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **cardtransaction_id** | **Integer**| Card transaction&#39;s Id | [optional] 
 **card_id** | **Integer**| Card&#39;s Id | [optional] 
 **wallet_id** | **Integer**| Card&#39;s wallet Id | [optional] 
 **merchant_id** | **Integer**| Merchant&#39;s Id | [optional] 
 **public_token** | **String**| Card&#39;s public token | [optional] 
 **payment_id** | **Integer**| Payment&#39;s Id | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://agent.treezor.com/lists).  | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://agent.treezor.com/lists). required: false | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



