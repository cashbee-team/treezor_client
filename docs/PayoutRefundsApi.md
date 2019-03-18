# TreezorClient::PayoutRefundsApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_payout_refunds**](PayoutRefundsApi.md#get_payout_refunds) | **GET** /payoutRefunds | search pay outs refund


# **get_payout_refunds**
> InlineResponse20020 get_payout_refunds(opts)

search pay outs refund

Get pay out refund that match search criteria.

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

api_instance = TreezorClient::PayoutRefundsApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics).
  id: 56, # Integer | PayoutRefund id
  tag: 'tag_example', # String | PayoutRefund tag
  code_status: 'code_status_example', # String | PayoutRefund Code Status
  information_status: 'information_status_example', # String | PayoutRefund Information Status
  payout_id: 56, # Integer | Payout Id
  page_number: 56 # Integer | The page number
}

begin
  #search pay outs refund
  result = api_instance.get_payout_refunds(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling PayoutRefundsApi->get_payout_refunds: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics). | [optional] 
 **id** | **Integer**| PayoutRefund id | [optional] 
 **tag** | **String**| PayoutRefund tag | [optional] 
 **code_status** | **String**| PayoutRefund Code Status | [optional] 
 **information_status** | **String**| PayoutRefund Information Status | [optional] 
 **payout_id** | **Integer**| Payout Id | [optional] 
 **page_number** | **Integer**| The page number | [optional] 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



