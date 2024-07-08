# TreezorClient::UserTaxResidencesApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_taxresidence**](UserTaxResidencesApi.md#delete_taxresidence) | **DELETE** /v1/taxResidences/{id} | Delete a residence
[**get_taxresidence**](UserTaxResidencesApi.md#get_taxresidence) | **GET** /v1/taxResidences/{id} | Get Tax Residence
[**get_taxresidences**](UserTaxResidencesApi.md#get_taxresidences) | **GET** /v1/taxResidences | Search Tax Residences
[**post_taxresidence**](UserTaxResidencesApi.md#post_taxresidence) | **POST** /v1/taxResidences | Create Tax Residence
[**put_taxresidence**](UserTaxResidencesApi.md#put_taxresidence) | **PUT** /v1/taxResidences/{id} | Update Tax Residence


# **delete_taxresidence**
> InlineResponse20033 delete_taxresidence(id, opts)

Delete a residence

Delete a residence that match id

### Example
```ruby
# load the gem
require 'treezor_client'

api_instance = TreezorClient::UserTaxResidencesApi.new

id = 56 # Integer | The unique identifier of the Tax Residence

opts = { 
  access_signature: 'access_signature_example' # String | Legacy attribute, do not use.
}

begin
  #Delete a residence
  result = api_instance.delete_taxresidence(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserTaxResidencesApi->delete_taxresidence: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The unique identifier of the Tax Residence | 
 **access_signature** | **String**| Legacy attribute, do not use. | [optional] 

### Return type

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_taxresidence**
> InlineResponse20031 get_taxresidence(id, opts)

Get Tax Residence

Retrieve a Tax Residence based on its `id`.

### Example
```ruby
# load the gem
require 'treezor_client'

api_instance = TreezorClient::UserTaxResidencesApi.new

id = 56 # Integer | The unique identifier of the TaxResidence.

opts = { 
  access_signature: 'access_signature_example' # String | Legacy attribute, do not use.
}

begin
  #Get Tax Residence
  result = api_instance.get_taxresidence(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserTaxResidencesApi->get_taxresidence: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The unique identifier of the TaxResidence. | 
 **access_signature** | **String**| Legacy attribute, do not use. | [optional] 

### Return type

[**InlineResponse20031**](InlineResponse20031.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **get_taxresidences**
> InlineResponse20029 get_taxresidences(opts)

Search Tax Residences

Retrieve Tax Residences that match your search conditions.

### Example
```ruby
# load the gem
require 'treezor_client'

api_instance = TreezorClient::UserTaxResidencesApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Legacy attribute, do not use. 
  id: 56, # Integer | The unique identifier of the Tax Residence.
  user_id: 56 # Integer | The unique identifier of the User.
}

begin
  #Search Tax Residences
  result = api_instance.get_taxresidences(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserTaxResidencesApi->get_taxresidences: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Legacy attribute, do not use.  | [optional] 
 **id** | **Integer**| The unique identifier of the Tax Residence. | [optional] 
 **user_id** | **Integer**| The unique identifier of the User. | [optional] 

### Return type

[**InlineResponse20029**](InlineResponse20029.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **post_taxresidence**
> InlineResponse20030 post_taxresidence(body, opts)

Create Tax Residence

Create a new Tax Residence.

### Example
```ruby
# load the gem
require 'treezor_client'

api_instance = TreezorClient::UserTaxResidencesApi.new

body = TreezorClient::Body12.new # Body12 | 

opts = { 
  access_signature: 'access_signature_example' # String | Legacy attribute, do not use. 
}

begin
  #Create Tax Residence
  result = api_instance.post_taxresidence(body, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserTaxResidencesApi->post_taxresidence: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**Body12**](Body12.md)|  | 
 **access_signature** | **String**| Legacy attribute, do not use.  | [optional] 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined



# **put_taxresidence**
> InlineResponse20032 put_taxresidence(id, opts)

Update Tax Residence

Modify an existing Tax Residence.

### Example
```ruby
# load the gem
require 'treezor_client'

api_instance = TreezorClient::UserTaxResidencesApi.new

id = 56 # Integer | The unique identifier of the TaxResidence

opts = { 
  access_signature: 'access_signature_example', # String | Legacy attribute, do not use.
  user_id: 56, # Integer | User's id residence
  country: 'country_example', # String | country of the resident
  tax_payer_id: 'tax_payer_id_example', # String | Tax payer's id
  liability_waiver: true # BOOLEAN | Tax declaration
}

begin
  #Update Tax Residence
  result = api_instance.put_taxresidence(id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling UserTaxResidencesApi->put_taxresidence: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| The unique identifier of the TaxResidence | 
 **access_signature** | **String**| Legacy attribute, do not use. | [optional] 
 **user_id** | **Integer**| User&#39;s id residence | [optional] 
 **country** | **String**| country of the resident | [optional] 
 **tax_payer_id** | **String**| Tax payer&#39;s id | [optional] 
 **liability_waiver** | **BOOLEAN**| Tax declaration | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



