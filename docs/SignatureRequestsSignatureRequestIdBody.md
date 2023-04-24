# YousignClient::SignatureRequestsSignatureRequestIdBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** |  | [optional] 
**delivery_mode** | **String** | Delivery mode to notify signers | [optional] 
**ordered_signers** | **BOOLEAN** | Enable an ordered workflow, each signer will be requested to sign in a sequential order | [optional] 
**reminder_settings** | [**SignatureRequestssignatureRequestIdReminderSettings**](SignatureRequestssignatureRequestIdReminderSettings.md) |  | [optional] 
**timezone** | **String** | tz database format | [optional] 
**email_custom_note** | **String** |  | [optional] 
**expiration_date** | **Date** | Due date of the signature request (yyyy-mm-dd). | [optional] 
**external_id** | **String** |  | [optional] 
**branding_id** | **String** |  | [optional] 
**custom_experience_id** | **String** | Use a specific Custom Experience to customize the signature experience. | [optional] 
**workspace_id** | **String** | Transfer the Signature Request into a given Workspace. | [optional] 

