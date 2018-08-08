# TreezorClient::Transfer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**transfer_id** | **Integer** |  | [optional] 
**transfer_status** | **String** |  | [optional] 
**transfer_tag** | **String** |  | [optional] 
**wallet_id** | **Integer** |  | [optional] 
**wallet_type_id** | **Integer** | | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) |  | [optional] 
**beneficiary_wallet_id** | **Integer** |  | [optional] 
**beneficiary_wallet_type_id** | **Integer** | | Id | Description | |----|----| | 9 | Electronic Money Wallet | | 10 | Payment Account Wallet | | 13 | Mirror Wallet | | 14 | Electronic Money Card (Internal only) |  | [optional] 
**transfer_date** | **String** | Date YYYY-MM-DD | [optional] 
**wallet_event_name** | **String** |  | [optional] 
**wallet_alias** | **String** |  | [optional] 
**beneficiary_wallet_event_name** | **String** |  | [optional] 
**beneficiary_wallet_alias** | **String** |  | [optional] 
**amount** | **String** |  | [optional] 
**currency** | **String** |  | [optional] 
**label** | **String** |  | [optional] 
**transfer_type_id** | **Integer** | Transfer type  | Status | Description | | ------ | -------     | | 1 | Wallet to wallet | | 2 | Card transaction | | 3 | Client fees | | 4 | Credit note |  | [optional] 
**created_date** | **String** | Date YYYY-MM-DD HH:MM:SS | [optional] 
**modified_date** | **String** | Date YYYY-MM-DD HH:MM:SS | [optional] 
**total_rows** | **Integer** |  | [optional] 


