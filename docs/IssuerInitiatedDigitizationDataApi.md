# TreezorClient::IssuerInitiatedDigitizationDataApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**tav_request_post**](IssuerInitiatedDigitizationDataApi.md#tav_request_post) | **POST** /issuerInitiatedDigitizationDatas | Request the issuerInitiatedDigitizationData
[**tavrequestget**](IssuerInitiatedDigitizationDataApi.md#tavrequestget) | **GET** /issuerInitiatedDigitizationDatas | Search issuerInitiatedDigitizationData requests


# **tav_request_post**
> InlineResponse200 tav_request_post(opts)

Request the issuerInitiatedDigitizationData

Create a new issuerInitiatedDigitizationData request

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

api_instance = TreezorClient::IssuerInitiatedDigitizationDataApi.new

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://www.treezor.com/security-authentication).
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://www.treezor.com/basics).
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://www.treezor.com/basics).
  body: TreezorClient::Body.new # Body | 
}

begin
  #Request the issuerInitiatedDigitizationData
  result = api_instance.tav_request_post(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling IssuerInitiatedDigitizationDataApi->tav_request_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://www.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics). | [optional] 
 **body** | [**Body**](Body.md)|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **tavrequestget**
> InlineResponse200 tavrequestget(opts)

Search issuerInitiatedDigitizationData requests

Search tav issuerInitiatedDigitizationData requests that match search criteria.

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

api_instance = TreezorClient::IssuerInitiatedDigitizationDataApi.new

opts = { 
  access_signature: "access_signature_example", # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://www.treezor.com/security-authentication).
  access_tag: "access_tag_example", # String | Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics).
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://www.treezor.com/basics).
  access_user_ip: "access_user_ip_example", # String | Access user's ip is used for user's action restriction. More info [here](https://www.treezor.com/basics).
  fields: ["fields_example"], # Array<String> | List of the object's properties you want to pick up.
  filter: "filter_example", # String | You can filter the API response by using filter(s). Filterable fields are :  - id  - cardId  - tokenRequestor  - statusId  - createdDate  - modifiedDate  Filters should be separated by a \";\". Example for 3 filters : FILTER1;FILTER2;FILTER3. A single filter has the following syntax : \"fieldName criterion expression\". Where :  - fieldName : the name of a filterable field of this object.   - expression : the values to be included or excluded (see the table below for more information)   - criterion : a filter criterion.  Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |  |----------|------------------------|------------------------------------------|--------------------|  |     >    |      greater than      |            alphanumeric string           |         100        |  |    >=    | greater or equal than  |            alphanumeric string           |         100        |  |     <    |        less than       |            alphanumeric string           |         100        |  |    <=    |   less or equal than   |            alphanumeric string           |         100        |  |    !=    |      not equal to      |            alphanumeric string           |         100        |  |   like   |          like          |            alphanumeric string           |         100        |  |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |  |    ==    |         equals         |            alphanumeric string           |         100        | 
  page_number: 56, # Integer | Pagination page number. More info [here](https://www.treezor.com/lists).
  page_count: 56, # Integer | The number of items per page. More info [here](https://www.treezor.com/lists).
  sort_by: "sort_by_example", # String | The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://www.treezor.com/lists).
  sort_order: "sort_order_example" # String | The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://www.treezor.com/lists). 
}

begin
  #Search issuerInitiatedDigitizationData requests
  result = api_instance.tavrequestget(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling IssuerInitiatedDigitizationDataApi->tavrequestget: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://www.treezor.com/security-authentication). | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://www.treezor.com/basics). | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics). | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://www.treezor.com/basics). | [optional] 
 **fields** | [**Array&lt;String&gt;**](String.md)| List of the object&#39;s properties you want to pick up. | [optional] 
 **filter** | **String**| You can filter the API response by using filter(s). Filterable fields are :  - id  - cardId  - tokenRequestor  - statusId  - createdDate  - modifiedDate  Filters should be separated by a \&quot;;\&quot;. Example for 3 filters : FILTER1;FILTER2;FILTER3. A single filter has the following syntax : \&quot;fieldName criterion expression\&quot;. Where :  - fieldName : the name of a filterable field of this object.   - expression : the values to be included or excluded (see the table below for more information)   - criterion : a filter criterion.  Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |  |----------|------------------------|------------------------------------------|--------------------|  |     &gt;    |      greater than      |            alphanumeric string           |         100        |  |    &gt;&#x3D;    | greater or equal than  |            alphanumeric string           |         100        |  |     &lt;    |        less than       |            alphanumeric string           |         100        |  |    &lt;&#x3D;    |   less or equal than   |            alphanumeric string           |         100        |  |    !&#x3D;    |      not equal to      |            alphanumeric string           |         100        |  |   like   |          like          |            alphanumeric string           |         100        |  |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |  |    &#x3D;&#x3D;    |         equals         |            alphanumeric string           |         100        |  | [optional] 
 **page_number** | **Integer**| Pagination page number. More info [here](https://www.treezor.com/lists). | [optional] 
 **page_count** | **Integer**| The number of items per page. More info [here](https://www.treezor.com/lists). | [optional] 
 **sort_by** | **String**| The transaction element you want to sort the list with. Default value : _createdDate_. More info [here](https://www.treezor.com/lists). | [optional] 
 **sort_order** | **String**| The order you want to sort the list. * **DESC** for a descending sort * **ASC** for a ascending sort.  Default value : DESC. More info [here](https://www.treezor.com/lists).  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



