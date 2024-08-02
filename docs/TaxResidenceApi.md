# TreezorClient::TaxResidenceApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tax_residences_get**](TaxResidenceApi.md#tax_residences_get) | **GET** /taxResidences | search a residence
[**tax_residences_id_delete**](TaxResidenceApi.md#tax_residences_id_delete) | **DELETE** /taxResidences/{id} | delete a residence
[**tax_residences_id_get**](TaxResidenceApi.md#tax_residences_id_get) | **GET** /taxResidences/{id} | read the informations of a residence
[**tax_residences_id_put**](TaxResidenceApi.md#tax_residences_id_put) | **PUT** /taxResidences/{id} | update the residence
[**tax_residences_post**](TaxResidenceApi.md#tax_residences_post) | **POST** /taxResidences | create a residence


# **tax_residences_get**
> InlineResponse20021 tax_residences_get(opts)

search a residence

Search a residence that match search criteria

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

api_instance = TreezorClient::TaxResidenceApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
  id: 56, # Integer | id of the residence
  user_id: 56 # Integer | User's id residence
}

begin
  #search a residence
  result = api_instance.tax_residences_get(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TaxResidenceApi->tax_residences_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication). | [optional] 
 **id** | **Integer**| id of the residence | [optional] 
 **user_id** | **Integer**| User&#39;s id residence | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **tax_residences_id_delete**
> InlineResponse20021 tax_residences_id_delete(id, opts)

delete a residence

Delete a residence that match id

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

api_instance = TreezorClient::TaxResidenceApi.new

id = 56 # Integer | id of the residence

opts = { 
  access_signature: 'access_signature_example' # String | Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
}

begin
  #delete a residence
  result = api_instance.tax_residences_id_delete(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TaxResidenceApi->tax_residences_id_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id of the residence | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication). | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **tax_residences_id_get**
> InlineResponse20021 tax_residences_id_get(id, opts)

read the informations of a residence

Read the informations of a residence that match with id

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

api_instance = TreezorClient::TaxResidenceApi.new

id = 56 # Integer | id of the residence

opts = { 
  access_signature: 'access_signature_example' # String | Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
}

begin
  #read the informations of a residence
  result = api_instance.tax_residences_id_get(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TaxResidenceApi->tax_residences_id_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| id of the residence | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication). | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **tax_residences_id_put**
> InlineResponse20021 tax_residences_id_put(id, opts)

update the residence

Update a residence already created.

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

api_instance = TreezorClient::TaxResidenceApi.new

id = 56 # Integer | residence id

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
  user_id: 56, # Integer | User's id residence
  country: 'country_example', # String | country of the resident
  tax_payer_id: 'tax_payer_id_example', # String | Tax payer's id
  liability_waiver: true # BOOLEAN | Tax declaration
}

begin
  #update the residence
  result = api_instance.tax_residences_id_put(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TaxResidenceApi->tax_residences_id_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| residence id | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication). | [optional] 
 **user_id** | **Integer**| User&#39;s id residence | [optional] 
 **country** | **String**| country of the resident | [optional] 
 **tax_payer_id** | **String**| Tax payer&#39;s id | [optional] 
 **liability_waiver** | **BOOLEAN**| Tax declaration | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **tax_residences_post**
> InlineResponse20021 tax_residences_post(opts)

create a residence

Create a new tax residence.

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

api_instance = TreezorClient::TaxResidenceApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication).
  tax_residence_body: TreezorClient::TaxResidenceBody.new # TaxResidenceBody | 
}

begin
  #create a residence
  result = api_instance.tax_residences_post(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling TaxResidenceApi->tax_residences_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will  contact you if so. More info  [here](https://agent.treezor.com/security-authentication). | [optional] 
 **tax_residence_body** | [**TaxResidenceBody**](TaxResidenceBody.md)|  | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



