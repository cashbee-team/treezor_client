# TreezorClient::MandateApi

All URIs are relative to *https://sandbox.treezor.com/v1/index.php*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete_mandate**](MandateApi.md#delete_mandate) | **DELETE** /mandates/{id} | revoke a mandate
[**get_mandate**](MandateApi.md#get_mandate) | **GET** /mandates/{id} | get mandate
[**get_mandates**](MandateApi.md#get_mandates) | **GET** /mandates | search mandates
[**mandates_id_resend_otp_put**](MandateApi.md#mandates_id_resend_otp_put) | **PUT** /mandates/{id}/ResendOtp/ | send an OTP
[**mandates_id_sign_put**](MandateApi.md#mandates_id_sign_put) | **PUT** /mandates/{id}/Sign/ | sign a mandate
[**post_mandates**](MandateApi.md#post_mandates) | **POST** /mandates | create a mandate


# **delete_mandate**
> InlineResponse20013 delete_mandate(id, origin)

revoke a mandate

Change mandate's status to canceled.

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

api_instance = TreezorClient::MandateApi.new

id = 56 # Integer | Mandate's internal id.

origin = 'origin_example' # String | The origin of the request for revocation


begin
  #revoke a mandate
  result = api_instance.delete_mandate(id, origin)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MandateApi->delete_mandate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mandate&#39;s internal id. | 
 **origin** | **String**| The origin of the request for revocation | 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mandate**
> InlineResponse20013 get_mandate(id)

get mandate

Get a mandate from the system.

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

api_instance = TreezorClient::MandateApi.new

id = 789 # Integer | Mandate's internal id.


begin
  #get mandate
  result = api_instance.get_mandate(id)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MandateApi->get_mandate: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mandate&#39;s internal id. | 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **get_mandates**
> InlineResponse20013 get_mandates(opts)

search mandates

Get mandates that match search criteria.

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

api_instance = TreezorClient::MandateApi.new

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  mandate_id: 56, # Integer | Mandate's Id
  user_id: 56, # Integer | User's id who initiates the mandate request.
  unique_mandate_reference: 'unique_mandate_reference_example', # String | Unique Mandate Reference (UMR) of the searched mandate. It is a sequence of characters that ensures the mandate traceability. UMR coupled with SCI allows to uniquely identify a creditor and a contract for any mandate. It is provided at the mandate creation.
  mandate_status: 'mandate_status_example', # String | Mandate's status. Possible values: * CANCELED * PENDING * VALIDATED 
  filter: 'filter_example' # String | You can filter the API response by using filter(s). Filters should be separated by a \";\". Example for 3 filters : FILTER1;FILTER2;FILTER3. A single filter has the following syntax : \"fieldName criterion expression\". Where :  - fieldName : the name of a filterable field of this object.   - expression : the values to be included or excluded (see the table below for more information)   - criterion : a filter criterion.  Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |  |----------|------------------------|------------------------------------------|--------------------|  |     >    |      greater than      |            alphanumeric string           |         100        |  |    >=    | greater or equal than  |            alphanumeric string           |         100        |  |     <    |        less than       |            alphanumeric string           |         100        |  |    <=    |   less or equal than   |            alphanumeric string           |         100        |  |    !=    |      not equal to      |            alphanumeric string           |         100        |  |   like   |          like          |            alphanumeric string           |         100        |  |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |  |    ==    |         equals         |            alphanumeric string           |         100        | 
}

begin
  #search mandates
  result = api_instance.get_mandates(opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MandateApi->get_mandates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **mandate_id** | **Integer**| Mandate&#39;s Id | [optional] 
 **user_id** | **Integer**| User&#39;s id who initiates the mandate request. | [optional] 
 **unique_mandate_reference** | **String**| Unique Mandate Reference (UMR) of the searched mandate. It is a sequence of characters that ensures the mandate traceability. UMR coupled with SCI allows to uniquely identify a creditor and a contract for any mandate. It is provided at the mandate creation. | [optional] 
 **mandate_status** | **String**| Mandate&#39;s status. Possible values: * CANCELED * PENDING * VALIDATED  | [optional] 
 **filter** | **String**| You can filter the API response by using filter(s). Filters should be separated by a \&quot;;\&quot;. Example for 3 filters : FILTER1;FILTER2;FILTER3. A single filter has the following syntax : \&quot;fieldName criterion expression\&quot;. Where :  - fieldName : the name of a filterable field of this object.   - expression : the values to be included or excluded (see the table below for more information)   - criterion : a filter criterion.  Here are the possible values for criterion :   | Criteria |         Description    |                   Type                   | Expression Example |  |----------|------------------------|------------------------------------------|--------------------|  |     &gt;    |      greater than      |            alphanumeric string           |         100        |  |    &gt;&#x3D;    | greater or equal than  |            alphanumeric string           |         100        |  |     &lt;    |        less than       |            alphanumeric string           |         100        |  |    &lt;&#x3D;    |   less or equal than   |            alphanumeric string           |         100        |  |    !&#x3D;    |      not equal to      |            alphanumeric string           |         100        |  |   like   |          like          |            alphanumeric string           |         100        |  |    in    |           in           | alphanumeric strings separated by commas |      100,30,25     |  |    &#x3D;&#x3D;    |         equals         |            alphanumeric string           |         100        |  | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **mandates_id_resend_otp_put**
> InlineResponse20013 mandates_id_resend_otp_put(id, access_token, access_signature, user_id, opts)

send an OTP

Send an OTP to sign a specific mandate. The OTP will be sent to the user's mobile phone OR to a specific mobile phone number in the request. 

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

api_instance = TreezorClient::MandateApi.new

id = 56 # Integer | Mandate's id.

access_token = 'access_token_example' # String | Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication). 

access_signature = 'access_signature_example' # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 

user_id = 56 # Integer | User's id who initiates the mandate request.

opts = { 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  debtor_mobile: 'debtor_mobile_example' # String | Debtor's mobile phone number. Used to send the OTP for signature
}

begin
  #send an OTP
  result = api_instance.mandates_id_resend_otp_put(id, access_token, access_signature, user_id, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MandateApi->mandates_id_resend_otp_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mandate&#39;s id. | 
 **access_token** | **String**| Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication).  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | 
 **user_id** | **Integer**| User&#39;s id who initiates the mandate request. | 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **debtor_mobile** | **String**| Debtor&#39;s mobile phone number. Used to send the OTP for signature | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **mandates_id_sign_put**
> InlineResponse20013 mandates_id_sign_put(id, access_token, access_signature, user_id, otp, opts)

sign a mandate

Sign a mandate with the received OTP.

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

api_instance = TreezorClient::MandateApi.new

id = 56 # Integer | Mandate's id.

access_token = 'access_token_example' # String | Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication). 

access_signature = 'access_signature_example' # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 

user_id = 56 # Integer | User's is who initiates the mandate request.

otp = 'otp_example' # String | The One-time password that the user got once mandate created.

opts = { 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  debtor_signature_ip: 'debtor_signature_ip_example' # String | IP address from which the mandate will be signed.
}

begin
  #sign a mandate
  result = api_instance.mandates_id_sign_put(id, access_token, access_signature, user_id, otp, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MandateApi->mandates_id_sign_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Mandate&#39;s id. | 
 **access_token** | **String**| Access token must be defined here or in Authorization HTTP header. More info [here](https://agent.treezor.com/security-authentication).  | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | 
 **user_id** | **Integer**| User&#39;s is who initiates the mandate request. | 
 **otp** | **String**| The One-time password that the user got once mandate created. | 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **debtor_signature_ip** | **String**| IP address from which the mandate will be signed. | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined



# **post_mandates**
> InlineResponse20013 post_mandates(sdd_type, is_paper, user_id, debtor_name, debtor_address, debtor_city, debtor_zip_code, debtor_country, debtor_iban, sequence_type, created_ip, opts)

create a mandate

Create a new mandate in the system. 

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

api_instance = TreezorClient::MandateApi.new

sdd_type = 'sdd_type_example' # String | Type of mandate.  | Type | Description | | ---- | ----------- | | core | Sepa Direct Debit Core | | b2b | Sepa Direct Debit Business 2 Business  | 

is_paper = true # BOOLEAN | Indicate if it's a paper mandate or not

user_id = 'user_id_example' # String | User's id who initiates the mandate request. The creditor.

debtor_name = 'debtor_name_example' # String | Debtor's full name

debtor_address = 'debtor_address_example' # String | Debtor's address.

debtor_city = 'debtor_city_example' # String | Debtor's city.

debtor_zip_code = 'debtor_zip_code_example' # String | Debtor's zip code

debtor_country = 'debtor_country_example' # String | Debtor's country

debtor_iban = 'debtor_iban_example' # String | Debtor's IBAN

sequence_type = 'sequence_type_example' # String | Type of mandate.  | Type | Description | | ---- | ----------- | | one-off | One-off payment | | recurrent | Recurrent payment |  Default value: one-off. 

created_ip = 'created_ip_example' # String | IP address of the system that created mandate.

opts = { 
  access_signature: 'access_signature_example', # String | Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication). 
  access_tag: 'access_tag_example', # String | Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics). 
  access_user_id: 56, # Integer | Access user's id is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  access_user_ip: 'access_user_ip_example', # String | Access user's ip is used for user's action restriction. More info [here](https://agent.treezor.com/basics). 
  debtor_bic: 'debtor_bic_example', # String | Debtor's BIC (or SWIFT)
  signature_date: 'signature_date_example' # String | Signature date of the mandate. Required if is paper.
}

begin
  #create a mandate
  result = api_instance.post_mandates(sdd_type, is_paper, user_id, debtor_name, debtor_address, debtor_city, debtor_zip_code, debtor_country, debtor_iban, sequence_type, created_ip, opts)
  p result
rescue TreezorClient::ApiError => e
  puts "Exception when calling MandateApi->post_mandates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sdd_type** | **String**| Type of mandate.  | Type | Description | | ---- | ----------- | | core | Sepa Direct Debit Core | | b2b | Sepa Direct Debit Business 2 Business  |  | 
 **is_paper** | **BOOLEAN**| Indicate if it&#39;s a paper mandate or not | 
 **user_id** | **String**| User&#39;s id who initiates the mandate request. The creditor. | 
 **debtor_name** | **String**| Debtor&#39;s full name | 
 **debtor_address** | **String**| Debtor&#39;s address. | 
 **debtor_city** | **String**| Debtor&#39;s city. | 
 **debtor_zip_code** | **String**| Debtor&#39;s zip code | 
 **debtor_country** | **String**| Debtor&#39;s country | 
 **debtor_iban** | **String**| Debtor&#39;s IBAN | 
 **sequence_type** | **String**| Type of mandate.  | Type | Description | | ---- | ----------- | | one-off | One-off payment | | recurrent | Recurrent payment |  Default value: one-off.  | 
 **created_ip** | **String**| IP address of the system that created mandate. | 
 **access_signature** | **String**| Access signature can be mandatory for specific context. Treezor will contact you if so. More info [here](https://agent.treezor.com/security-authentication).  | [optional] 
 **access_tag** | **String**| Access tag is used for idem potency query. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_id** | **Integer**| Access user&#39;s id is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **access_user_ip** | **String**| Access user&#39;s ip is used for user&#39;s action restriction. More info [here](https://agent.treezor.com/basics).  | [optional] 
 **debtor_bic** | **String**| Debtor&#39;s BIC (or SWIFT) | [optional] 
 **signature_date** | **String**| Signature date of the mandate. Required if is paper. | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



