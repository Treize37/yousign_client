# YousignClient::SignatureRequest

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
**source** | **String** |  | 
**signers** | [**Array&lt;SignatureRequestSigners&gt;**](SignatureRequestSigners.md) |  | 
**approvers** | [**Array&lt;SignatureRequestApprovers&gt;**](SignatureRequestApprovers.md) |  | [optional] 
**documents** | [**Array&lt;SignatureRequestDocuments&gt;**](SignatureRequestDocuments.md) |  | 
**sender** | [**SignatureRequestSender**](SignatureRequestSender.md) |  | 
**external_id** | **String** |  | 
**branding_id** | **String** |  | 
**custom_experience_id** | **String** |  | 
**workspace_id** | **String** |  | [optional] 

