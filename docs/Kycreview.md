# TreezorClient::Kycreview

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**user_id** | **Integer** |  | [optional] 
**client_id** | **Integer** |  | [optional] 
**distribution_country** | **String** |  | [optional] 
**kyc_level** | **Integer** | Deprecated - retained by Treezor for migration purposes only. Use kycStatus. | [optional] 
**kyc_review** | **Integer** | Deprecated - retained by Treezor for migration purposes only. Use kycStatus. | [optional] 
**kyc_review_comment** | **String** |  | [optional] 
**kyc_status** | **String** | Replaces kycLevel and kycReview. | [optional] 
**kyc_review_type** | **String** | The reason for the verification: ONBOARDING - initial verification, PERIODIC - routine compliance check, ON_EVENT - triggered by account changes. | [optional] 
**code_status** | **String** |  | [optional] 
**information_status** | **String** |  | [optional] 
**last_request_datetime** | **String** | Timestamp of the user&#39;s most recent KYC request. | [optional] 
**last_review_datetime** | **String** | Timestamp of the most recent manual or automatic review by Treezor. | [optional] 
**next_review_date** | **String** | The date of the next scheduled review. Note: kycStatus changes to REVIEW NEEDED 3 months prior to this date. | [optional] 


