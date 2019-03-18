# TreezorClient::CardReserveApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**card_reserve_add_to**](CardReserveApi.md#card_reserve_add_to) | **POST** /cardReserves/AddTo | add an amount to the reserved amount of a card
[**card_reserve_check**](CardReserveApi.md#card_reserve_check) | **POST** /cardReserves/Check | check reserved amount
[**card_reserve_get**](CardReserveApi.md#card_reserve_get) | **GET** /cardReserves/{id} | get the reserved amount of a card


# **card_reserve_add_to**
> Float card_reserve_add_to(id, opts)

add an amount to the reserved amount of a card

add an amount to the reserved amount of a card

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

api_instance = TreezorClient::CardReserveApi.new

id = 789 # Integer | the cardId of the reserved amount you want to pick up

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://www.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://www.treezor.com/basics). 
  body: TreezorClient::Body2.new # Body2 | 
}

begin
  #add an amount to the reserved amount of a card
  result = api_instance.card_reserve_add_to(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardReserveApi->card_reserve_add_to: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| the cardId of the reserved amount you want to pick up | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics).  | [optional] 
 **body** | [**Body2**](Body2.md)|  | [optional] 

### Return type

**Float**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **card_reserve_check**
> BOOLEAN card_reserve_check(id, opts)

check reserved amount

Check if an amount can be substract to the reserved amount

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

api_instance = TreezorClient::CardReserveApi.new

id = 789 # Integer | the cardId of the reserved amount you want to pick up

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://www.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://www.treezor.com/basics). 
  body: TreezorClient::Body3.new # Body3 | 
}

begin
  #check reserved amount
  result = api_instance.card_reserve_check(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardReserveApi->card_reserve_check: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| the cardId of the reserved amount you want to pick up | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics).  | [optional] 
 **body** | [**Body3**](Body3.md)|  | [optional] 

### Return type

**BOOLEAN**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **card_reserve_get**
> InlineResponse2008 card_reserve_get(id, opts)

get the reserved amount of a card

get the reserved amount of a card

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

api_instance = TreezorClient::CardReserveApi.new

id = 789 # Integer | the cardId of the reserved amount you want to pick up

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://www.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example' # String | Access user's ip is used for user's action restriction. More info [here](https://www.treezor.com/basics). 
}

begin
  #get the reserved amount of a card
  result = api_instance.card_reserve_get(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling CardReserveApi->card_reserve_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| the cardId of the reserved amount you want to pick up | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics).  | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



