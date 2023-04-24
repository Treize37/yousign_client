# YousignClient::Document

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** |  | 
**filename** | **String** |  | 
**nature** | **String** |  | 
**content_type** | **String** |  | 
**sha256** | **String** | Sha256 checksum | 
**is_protected** | **BOOLEAN** |  | 
**is_signed** | **BOOLEAN** |  | 
**created_at** | **DateTime** |  | 
**total_pages** | **Integer** | Number of pages for signable document | 
**is_locked** | **BOOLEAN** | If protected by password and not yet unlocked | 
**initials** | [**DocumentInitials**](DocumentInitials.md) |  | 
**total_anchors** | **Integer** | Number of parsed anchors from the document. | 

