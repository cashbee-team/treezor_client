# TreezorClient::CardDigitalizationsApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**card_digitalizations_id**](CardDigitalizationsApi.md#card_digitalizations_id) | **GET** /cardDigitalizations/{id} | Get a card digitalizations based on its internal id
[**deletecard_digitalizations_id**](CardDigitalizationsApi.md#deletecard_digitalizations_id) | **DELETE** /cardDigitalizations/{id} | Deletes a payment Token
[**putcard_digitalizations_id**](CardDigitalizationsApi.md#putcard_digitalizations_id) | **PUT** /cardDigitalizations/{id} | Update the status of a payment Token
[**readcard_digitalizations**](CardDigitalizationsApi.md#readcard_digitalizations) | **GET** /cardDigitalizations | search for card digitalizations


# **card_digitalizations_id**
> InlineResponse2007 card_digitalizations_id(id, opts)

Get a card digitalizations based on its internal id

Get a card digitalizations based on its internal id

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

api_instance = TreezorClient::CardDigitalizationsApi.new

id = 789 # Integer | Card digitalization internal id.

opts = { 
  fields: 'fields_example' # String | fields to output separated by commas. Possible fields are id, externalId, cardId, detailsFromGPS, status, createdDate, modifiedDate
}

begin
  #Get a card digitalizations based on its internal id
  result = api_instance.card_digitalizations_id(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardDigitalizationsApi->card_digitalizations_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card digitalization internal id. | 
 **fields** | **String**| fields to output separated by commas. Possible fields are id, externalId, cardId, detailsFromGPS, status, createdDate, modifiedDate | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **deletecard_digitalizations_id**
> InlineResponse2007 deletecard_digitalizations_id(id, reason_code)

Deletes a payment Token

Deletes a payment Token

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

api_instance = TreezorClient::CardDigitalizationsApi.new

id = 789 # Integer | Card digitalization internal id.

reason_code = 'reason_code_example' # String | The reason code for the action. Possible values are :  | Reason code | Description | | ---- | ----------- | | L | Cardholder confirmed token device lost | | S | Cardholder confirmed token device stolen | | F | Issuer or cardholder confirmed fraudulent token transactions (Deprecated) | | T | Issuer or cardholder confirmed fraudulent token transactions | | C | Account closed | | Z | Other | 


begin
  #Deletes a payment Token
  result = api_instance.deletecard_digitalizations_id(id, reason_code)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardDigitalizationsApi->deletecard_digitalizations_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card digitalization internal id. | 
 **reason_code** | **String**| The reason code for the action. Possible values are :  | Reason code | Description | | ---- | ----------- | | L | Cardholder confirmed token device lost | | S | Cardholder confirmed token device stolen | | F | Issuer or cardholder confirmed fraudulent token transactions (Deprecated) | | T | Issuer or cardholder confirmed fraudulent token transactions | | C | Account closed | | Z | Other |  | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **putcard_digitalizations_id**
> InlineResponse2007 putcard_digitalizations_id(id, status, reason_code)

Update the status of a payment Token

Update the status of a payment Token

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

api_instance = TreezorClient::CardDigitalizationsApi.new

id = 789 # Integer | Card digitalization internal id.

status = 'status_example' # String | The new status for the payment Token. Possible values are : | Status | Description | | ---- | ----------- | | unsuspend | Unsuspend | | suspend | Suspend | 

reason_code = 'reason_code_example' # String | The reason code for the action. Possible values are : - For a suspension :  | Reason code | Description | | ---- | ----------- | | L | Cardholder confirmed token device lost | | S | Cardholder confirmed token device stolen | | T | Issuer or cardholder confirmed fraudulent token transactions | | Z | Other |  - For an unsuspension :  | Reason code | Description | | ---- | ----------- | | F | Cardholder reported token device found or not stolen | | T | Issuer or cardholder confirmed no fraudulent token transactions | | Z | Other | 


begin
  #Update the status of a payment Token
  result = api_instance.putcard_digitalizations_id(id, status, reason_code)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardDigitalizationsApi->putcard_digitalizations_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Card digitalization internal id. | 
 **status** | **String**| The new status for the payment Token. Possible values are : | Status | Description | | ---- | ----------- | | unsuspend | Unsuspend | | suspend | Suspend |  | 
 **reason_code** | **String**| The reason code for the action. Possible values are : - For a suspension :  | Reason code | Description | | ---- | ----------- | | L | Cardholder confirmed token device lost | | S | Cardholder confirmed token device stolen | | T | Issuer or cardholder confirmed fraudulent token transactions | | Z | Other |  - For an unsuspension :  | Reason code | Description | | ---- | ----------- | | F | Cardholder reported token device found or not stolen | | T | Issuer or cardholder confirmed no fraudulent token transactions | | Z | Other |  | 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **readcard_digitalizations**
> InlineResponse2007 readcard_digitalizations(opts)

search for card digitalizations

Search for card digitalizations.

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

api_instance = TreezorClient::CardDigitalizationsApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  filter: 'filter_example', # String | Filterable fields are : - id - externalId - cardId - status - detailsFromGPS - createdDate - modifiedDate  More info [here](https://agent.treezor.com/filterv2). 
  fields: 'fields_example' # String | fields to output separated by commas. Possible fields are id, externalId, cardId, detailsFromGPS, status, createdDate, modifiedDate
}

begin
  #search for card digitalizations
  result = api_instance.readcard_digitalizations(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardDigitalizationsApi->readcard_digitalizations: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **filter** | **String**| Filterable fields are : - id - externalId - cardId - status - detailsFromGPS - createdDate - modifiedDate  More info [here](https://agent.treezor.com/filterv2).  | [optional] 
 **fields** | **String**| fields to output separated by commas. Possible fields are id, externalId, cardId, detailsFromGPS, status, createdDate, modifiedDate | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



