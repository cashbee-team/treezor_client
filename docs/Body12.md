# TreezorClient::Body12

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **Integer** | The unique identifier of the user. | 
**country** | **String** | The country of the resident. | 
**tax_payer_id** | **String** | Tax payer&#39;s id. This field is mandatory if the country of the resident is &#x60;US&#x60;, but optional otherwise.  | [optional] 
**liability_waiver** | **BOOLEAN** | Must be set to true if the &#x60;taxPayerId&#x60; is empty or null, and set to false otherwise.  | 


