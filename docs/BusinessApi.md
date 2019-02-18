# TreezorClient::BusinessApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**businessinformations_get**](BusinessApi.md#businessinformations_get) | **GET** /businessinformations | get business information
[**businesssearchs_get**](BusinessApi.md#businesssearchs_get) | **GET** /businesssearchs | search businesses


# **businessinformations_get**
> InlineResponse2005 businessinformations_get(country, opts)

get business information

The get business information endpoint returns all already known business information. End user will have then to verify/correct it. 

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

api_instance = TreezorClient::BusinessApi.new

country = "country_example" # String | In which country to search. Format [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) 

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  external_id: "external_id_example", # String | External unique business id. As given in businesssearch reponse.
  registration_number: "registration_number_example", # String | Unique business registration number.
  vat_number: "vat_number_example" # String | Unique business VAT number.
}

begin
  #get business information
  result = api_instance.businessinformations_get(country, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling BusinessApi->businessinformations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **String**| In which country to search. Format [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **external_id** | **String**| External unique business id. As given in businesssearch reponse. | [optional] 
 **registration_number** | **String**| Unique business registration number. | [optional] 
 **vat_number** | **String**| Unique business VAT number. | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **businesssearchs_get**
> Array&lt;InlineResponse2004&gt; businesssearchs_get(country, opts)

search businesses

The search endpoint returns some business information. 

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

api_instance = TreezorClient::BusinessApi.new

country = "country_example" # String | In which country to search. Format [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) 

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  name_exact: "name_exact_example", # String | Business exact name. Exclusive with nameMatchBeginning and nameClosestKeywords. 
  name_match_beginning: "name_match_beginning_example", # String | Business names begin with. Exclusive with nameExact and nameClosestKeywords. 
  name_closest_keywords: "name_closest_keywords_example", # String | Business names closed to keywords. Exclusive with nameExact and nameMatchBeginning. 
  registration_number: "registration_number_example", # String | Business registration number.
  vat_number: "vat_number_example", # String | Business VAT number.
  phone_number: "phone_number_example", # String | Business phone number.
  address_street: "address_street_example", # String | Business' street address.
  address_city: "address_city_example", # String | Business' city address.
  address_postal_code: "address_postal_code_example" # String | Business' postal code address.
}

begin
  #search businesses
  result = api_instance.businesssearchs_get(country, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling BusinessApi->businesssearchs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **country** | **String**| In which country to search. Format [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **name_exact** | **String**| Business exact name. Exclusive with nameMatchBeginning and nameClosestKeywords.  | [optional] 
 **name_match_beginning** | **String**| Business names begin with. Exclusive with nameExact and nameClosestKeywords.  | [optional] 
 **name_closest_keywords** | **String**| Business names closed to keywords. Exclusive with nameExact and nameMatchBeginning.  | [optional] 
 **registration_number** | **String**| Business registration number. | [optional] 
 **vat_number** | **String**| Business VAT number. | [optional] 
 **phone_number** | **String**| Business phone number. | [optional] 
 **address_street** | **String**| Business&#39; street address. | [optional] 
 **address_city** | **String**| Business&#39; city address. | [optional] 
 **address_postal_code** | **String**| Business&#39; postal code address. | [optional] 

### Return type

[**Array&lt;InlineResponse2004&gt;**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



