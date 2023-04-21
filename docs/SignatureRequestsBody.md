# YousignClient::SignatureRequestsBody

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**name** | **String** | Name of the signature request | 
**delivery_mode** | **String** | Delivery mode to notify signers. | 
**ordered_signers** | **BOOLEAN** | Enable an ordered workflow, each signer will be requested to sign in a sequential order | [optional] 
**reminder_settings** | [**SignatureRequestsReminderSettings**](SignatureRequestsReminderSettings.md) |  | [optional] 
**timezone** | **String** | tz database format | [optional] 
**email_custom_note** | **String** | A custom note added to emails sent to signers. | [optional] 
**expiration_date** | **Date** | Due date of the signature request (yyyy-mm-dd). Default to 6 month after the activation. | [optional] 
**template_id** | **String** | Create a signature request from an existing template. This parameter is not available in Sandbox. | [optional] 
**external_id** | **String** | Store a custom id that will be added to webhooks &amp; appended to redirect urls. | [optional] 
**branding_id** | **String** | Use a specific branding to customize the signature experience. | [optional] 
**custom_experience_id** | **String** | Use a specific Custom Experience to customize the signature experience. | [optional] 
**documents** | **Array&lt;String&gt;** | You can directly attach orphan documents to the signature request. | [optional] 
**signers** | [**Array&lt;AnyOfsignatureRequestsBodySignersItems&gt;**](.md) | Can only be used if you add documents at the same time. | [optional] 
**workspace_id** | **String** | Scope the signature request to a specific workspace | [optional] 

