# YousignClient::SignatureRequestActivated

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**status** | **String** |  | 
**name** | **String** |  | 
**delivery_mode** | **String** |  | 
**created_at** | **DateTime** |  | 
**ordered_signers** | **BOOLEAN** | Enable an ordered workflow, each signer will be requested to sign in a sequential order | 
**reminder_settings** | [**SignatureRequestReminderSettings**](SignatureRequestReminderSettings.md) |  | 
**timezone** | **String** |  | 
**email_custom_note** | **String** |  | 
**expiration_date** | **DateTime** |  | 
**signers** | [**Array&lt;EmbeddedSignerWithSignatureLink&gt;**](EmbeddedSignerWithSignatureLink.md) |  | 
**approvers** | [**Array&lt;SignatureRequestActivatedApprovers&gt;**](SignatureRequestActivatedApprovers.md) |  | [optional] 
**documents** | [**Array&lt;SignatureRequestActivatedDocuments&gt;**](SignatureRequestActivatedDocuments.md) |  | 
**external_id** | **String** |  | 
**branding_id** | **String** |  | 
**custom_experience_id** | **String** |  | 

