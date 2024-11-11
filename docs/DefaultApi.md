# DefaultApi

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddCollaboratorPut**](DefaultApi.md#AddCollaboratorPut) | **PUT** /instances/{instance_id}/collaborators/{account_id} | Add Collaborator
[**CreateInstanceInstancesPut**](DefaultApi.md#CreateInstanceInstancesPut) | **PUT** /instances | Create Instance
[**CreateRecordPut**](DefaultApi.md#CreateRecordPut) | **PUT** /instances/{instance_id}/modules/{module_name}/{model_name} | Create Record
[**DeleteCollaboratorDelete**](DefaultApi.md#DeleteCollaboratorDelete) | **DELETE** /instances/{instance_id}/collaborators/{account_id} | Delete Collaborator
[**DeleteInstanceDelete**](DefaultApi.md#DeleteInstanceDelete) | **DELETE** /instances/{instance_id} | Delete Instance
[**DeleteRecordDelete**](DefaultApi.md#DeleteRecordDelete) | **DELETE** /instances/{instance_id}/modules/{module_name}/{model_name}/{uid} | Delete Record
[**GeneratePasswordGet**](DefaultApi.md#GeneratePasswordGet) | **GET** /instances/{instance_id}/db/password | Generate Password
[**GenerateUrlGet**](DefaultApi.md#GenerateUrlGet) | **GET** /instances/{instance_id}/db/url | Generate Url
[**GetInstanceStatisticsGet**](DefaultApi.md#GetInstanceStatisticsGet) | **GET** /instances/{instance_id}/statistics | Get Instance Statistics
[**GetNonEmptyTablesGet**](DefaultApi.md#GetNonEmptyTablesGet) | **GET** /instances/{instance_id}/non_empty_tables | Get Non Empty Tables
[**GetRecordPost**](DefaultApi.md#GetRecordPost) | **POST** /instances/{instance_id}/modules/{module_name}/{model_name}/{id_or_uid} | Get Record
[**GetRecordsPost**](DefaultApi.md#GetRecordsPost) | **POST** /instances/{instance_id}/modules/{module_name}/{model_name} | Get Records
[**GetRelationCountsGet**](DefaultApi.md#GetRelationCountsGet) | **GET** /instances/{instance_id}/modules/{module_name}/{model_name}/{id}/counts | Get Relation Counts
[**GetRelationsGet**](DefaultApi.md#GetRelationsGet) | **GET** /instances/{instance_id}/schema/{module_name}/{model_name} | Get Relations
[**GetSchemaGet**](DefaultApi.md#GetSchemaGet) | **GET** /instances/{instance_id}/schema | Get Schema
[**GetValuesPost**](DefaultApi.md#GetValuesPost) | **POST** /instances/{instance_id}/modules/{module_name}/{model_name}/fields/{field_path} | Get Values
[**GrantS3PermissionsPut**](DefaultApi.md#GrantS3PermissionsPut) | **PUT** /storages/s3/{bucket_name}/permissions | Grant S3 Permissions
[**GroupByPost**](DefaultApi.md#GroupByPost) | **POST** /instances/{instance_id}/modules/{module_name}/{model_name}/group-by | Group By
[**TransferOwnershipPatch**](DefaultApi.md#TransferOwnershipPatch) | **PATCH** /instances/{instance_id}/owner/{handle} | Transfer Ownership
[**UpdateCollaboratorPatch**](DefaultApi.md#UpdateCollaboratorPatch) | **PATCH** /instances/{instance_id}/collaborators/{account_id} | Update Collaborator
[**UpdateRecordPatch**](DefaultApi.md#UpdateRecordPatch) | **PATCH** /instances/{instance_id}/modules/{module_name}/{model_name}/{uid} | Update Record


# **AddCollaboratorPut**
> AnyType AddCollaboratorPut(instance_id, account_id, schema_id, role = "read", authorization = var.authorization)

Add Collaborator

### Example
```R
library(laminr.api)

# Add Collaborator
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_account_id <- "account_id_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_role <- "read" # character |  (Optional)
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **account_id** | **character**|  | 
 **schema_id** | **character**|  | 
 **role** | Enum [admin, write, read] |  | [optional] [default to &quot;read&quot;]
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **CreateInstanceInstancesPut**
> AnyType CreateInstanceInstancesPut(name, storage = "create-s3", schema_str = var.schema_str, db_server_key = var.db_server_key, db_server_url = var.db_server_url, authorization = var.authorization)

Create Instance

### Example
```R
library(laminr.api)

# Create Instance
#
# prepare function argument(s)
var_name <- "name_example" # character | 
var_storage <- "create-s3" # character |  (Optional)
var_schema_str <- "schema_str_example" # character |  (Optional)
var_db_server_key <- "db_server_key_example" # character |  (Optional)
var_db_server_url <- "db_server_url_example" # character |  (Optional)
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **character**|  | 
 **storage** | **character**|  | [optional] [default to &quot;create-s3&quot;]
 **schema_str** | **character**|  | [optional] 
 **db_server_key** | **character**|  | [optional] 
 **db_server_url** | **character**|  | [optional] 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **CreateRecordPut**
> AnyType CreateRecordPut(instance_id, module_name, model_name, schema_id, body, authorization = var.authorization)

Create Record

### Example
```R
library(laminr.api)

# Create Record
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_module_name <- "module_name_example" # character | 
var_model_name <- "model_name_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_body <- TODO # AnyType | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **module_name** | **character**|  | 
 **model_name** | **character**|  | 
 **schema_id** | **character**|  | 
 **body** | **AnyType**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **DeleteCollaboratorDelete**
> AnyType DeleteCollaboratorDelete(instance_id, account_id, authorization = var.authorization)

Delete Collaborator

### Example
```R
library(laminr.api)

# Delete Collaborator
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_account_id <- "account_id_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **account_id** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **DeleteInstanceDelete**
> AnyType DeleteInstanceDelete(instance_id, instance_name, authorization = var.authorization)

Delete Instance

### Example
```R
library(laminr.api)

# Delete Instance
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_instance_name <- "instance_name_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **instance_name** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **DeleteRecordDelete**
> AnyType DeleteRecordDelete(instance_id, module_name, model_name, uid, schema_id, authorization = var.authorization)

Delete Record

### Example
```R
library(laminr.api)

# Delete Record
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_module_name <- "module_name_example" # character | 
var_model_name <- "model_name_example" # character | 
var_uid <- "uid_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **module_name** | **character**|  | 
 **model_name** | **character**|  | 
 **uid** | **character**|  | 
 **schema_id** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GeneratePasswordGet**
> AnyType GeneratePasswordGet(instance_id, authorization = var.authorization)

Generate Password

### Example
```R
library(laminr.api)

# Generate Password
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GenerateUrlGet**
> AnyType GenerateUrlGet(instance_id, authorization = var.authorization)

Generate Url

### Example
```R
library(laminr.api)

# Generate Url
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GetInstanceStatisticsGet**
> AnyType GetInstanceStatisticsGet(instance_id, schema_id, q = var.q, authorization = var.authorization)

Get Instance Statistics

### Example
```R
library(laminr.api)

# Get Instance Statistics
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_q <- c("inner_example") # array[character] | In ${module}.${model} format (case-sensitive) (Optional)
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **schema_id** | **character**|  | 
 **q** | list( **character** )| In ${module}.${model} format (case-sensitive) | [optional] 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GetNonEmptyTablesGet**
> AnyType GetNonEmptyTablesGet(instance_id, schema_id, authorization = var.authorization)

Get Non Empty Tables

### Example
```R
library(laminr.api)

# Get Non Empty Tables
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **schema_id** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GetRecordPost**
> AnyType GetRecordPost(instance_id, module_name, model_name, id_or_uid, schema_id, limit_to_many = 10, include_foreign_keys = FALSE, authorization = var.authorization, get_record_request_body = var.get_record_request_body)

Get Record

### Example
```R
library(laminr.api)

# Get Record
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_module_name <- "module_name_example" # character | 
var_model_name <- "model_name_example" # character | 
var_id_or_uid <- "id_or_uid_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_limit_to_many <- 10 # integer |  (Optional)
var_include_foreign_keys <- FALSE # character |  (Optional)
var_authorization <- "authorization_example" # character |  (Optional)
var_get_record_request_body <- GetRecordRequestBody$new(c("select_example")) # GetRecordRequestBody |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **module_name** | **character**|  | 
 **model_name** | **character**|  | 
 **id_or_uid** | **character**|  | 
 **schema_id** | **character**|  | 
 **limit_to_many** | **integer**|  | [optional] [default to 10]
 **include_foreign_keys** | **character**|  | [optional] [default to FALSE]
 **authorization** | **character**|  | [optional] 
 **get_record_request_body** | [**GetRecordRequestBody**](GetRecordRequestBody.md)|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GetRecordsPost**
> AnyType GetRecordsPost(instance_id, module_name, model_name, schema_id, limit = 50, offset = 0, limit_to_many = 10, include_foreign_keys = FALSE, authorization = var.authorization, get_records_request_body = var.get_records_request_body)

Get Records

### Example
```R
library(laminr.api)

# Get Records
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_module_name <- "module_name_example" # character | 
var_model_name <- "model_name_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_limit <- 50 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_limit_to_many <- 10 # integer |  (Optional)
var_include_foreign_keys <- FALSE # character |  (Optional)
var_authorization <- "authorization_example" # character |  (Optional)
var_get_records_request_body <- GetRecordsRequestBody$new(c("select_example"), 123, c(OrderByColumn$new("field_example", "descending_example")), "search_example") # GetRecordsRequestBody |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **module_name** | **character**|  | 
 **model_name** | **character**|  | 
 **schema_id** | **character**|  | 
 **limit** | **integer**|  | [optional] [default to 50]
 **offset** | **integer**|  | [optional] [default to 0]
 **limit_to_many** | **integer**|  | [optional] [default to 10]
 **include_foreign_keys** | **character**|  | [optional] [default to FALSE]
 **authorization** | **character**|  | [optional] 
 **get_records_request_body** | [**GetRecordsRequestBody**](GetRecordsRequestBody.md)|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GetRelationCountsGet**
> AnyType GetRelationCountsGet(instance_id, module_name, model_name, id, schema_id, authorization = var.authorization)

Get Relation Counts

### Example
```R
library(laminr.api)

# Get Relation Counts
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_module_name <- "module_name_example" # character | 
var_model_name <- "model_name_example" # character | 
var_id <- 56 # integer | 
var_schema_id <- "schema_id_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **module_name** | **character**|  | 
 **model_name** | **character**|  | 
 **id** | **integer**|  | 
 **schema_id** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GetRelationsGet**
> AnyType GetRelationsGet(module_name, model_name, instance_id, authorization = var.authorization)

Get Relations

### Example
```R
library(laminr.api)

# Get Relations
#
# prepare function argument(s)
var_module_name <- "module_name_example" # character | 
var_model_name <- "model_name_example" # character | 
var_instance_id <- "instance_id_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **module_name** | **character**|  | 
 **model_name** | **character**|  | 
 **instance_id** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GetSchemaGet**
> AnyType GetSchemaGet(instance_id, authorization = var.authorization)

Get Schema

### Example
```R
library(laminr.api)

# Get Schema
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GetValuesPost**
> AnyType GetValuesPost(instance_id, module_name, model_name, field_path, schema_id, limit = 50, offset = 0, authorization = var.authorization, get_values_request_body = var.get_values_request_body)

Get Values

### Example
```R
library(laminr.api)

# Get Values
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_module_name <- "module_name_example" # character | 
var_model_name <- "model_name_example" # character | 
var_field_path <- "field_path_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_limit <- 50 # integer |  (Optional)
var_offset <- 0 # integer |  (Optional)
var_authorization <- "authorization_example" # character |  (Optional)
var_get_values_request_body <- GetValuesRequestBody$new(123, c(OrderByColumn$new("field_example", "descending_example")), "search_example") # GetValuesRequestBody |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **module_name** | **character**|  | 
 **model_name** | **character**|  | 
 **field_path** | **character**|  | 
 **schema_id** | **character**|  | 
 **limit** | **integer**|  | [optional] [default to 50]
 **offset** | **integer**|  | [optional] [default to 0]
 **authorization** | **character**|  | [optional] 
 **get_values_request_body** | [**GetValuesRequestBody**](GetValuesRequestBody.md)|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GrantS3PermissionsPut**
> AnyType GrantS3PermissionsPut(bucket_name, s3_permissions_request, aws_account_id = "767398070972", aws_user_name = "lamin-manager", authorization = var.authorization)

Grant S3 Permissions

### Example
```R
library(laminr.api)

# Grant S3 Permissions
#
# prepare function argument(s)
var_bucket_name <- "bucket_name_example" # character | 
var_s3_permissions_request <- S3PermissionsRequest$new("aws_access_key_id_example", "aws_secret_access_key_example", "region_example") # S3PermissionsRequest | 
var_aws_account_id <- "767398070972" # character |  (Optional)
var_aws_user_name <- "lamin-manager" # character |  (Optional)
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucket_name** | **character**|  | 
 **s3_permissions_request** | [**S3PermissionsRequest**](S3PermissionsRequest.md)|  | 
 **aws_account_id** | **character**|  | [optional] [default to &quot;767398070972&quot;]
 **aws_user_name** | **character**|  | [optional] [default to &quot;lamin-manager&quot;]
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **GroupByPost**
> AnyType GroupByPost(instance_id, module_name, model_name, schema_id, group_by_request_body, authorization = var.authorization)

Group By

### Example
```R
library(laminr.api)

# Group By
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_module_name <- "module_name_example" # character | 
var_model_name <- "model_name_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_group_by_request_body <- GroupByRequestBody$new(c(Dimension$new("field_name_example", "count")), c(Measure$new("field_name_example", "count", "alias_example")), 123) # GroupByRequestBody | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **module_name** | **character**|  | 
 **model_name** | **character**|  | 
 **schema_id** | **character**|  | 
 **group_by_request_body** | [**GroupByRequestBody**](GroupByRequestBody.md)|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **TransferOwnershipPatch**
> AnyType TransferOwnershipPatch(instance_id, handle, schema_id, authorization = var.authorization)

Transfer Ownership

### Example
```R
library(laminr.api)

# Transfer Ownership
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_handle <- "handle_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **handle** | **character**|  | 
 **schema_id** | **character**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **UpdateCollaboratorPatch**
> AnyType UpdateCollaboratorPatch(instance_id, account_id, role, authorization = var.authorization)

Update Collaborator

### Example
```R
library(laminr.api)

# Update Collaborator
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_account_id <- "account_id_example" # character | 
var_role <- "role_example" # character | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **account_id** | **character**|  | 
 **role** | Enum [admin, write, read] |  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

# **UpdateRecordPatch**
> AnyType UpdateRecordPatch(instance_id, module_name, model_name, uid, schema_id, body, authorization = var.authorization)

Update Record

### Example
```R
library(laminr.api)

# Update Record
#
# prepare function argument(s)
var_instance_id <- "instance_id_example" # character | 
var_module_name <- "module_name_example" # character | 
var_model_name <- "model_name_example" # character | 
var_uid <- "uid_example" # character | 
var_schema_id <- "schema_id_example" # character | 
var_body <- TODO # AnyType | 
var_authorization <- "authorization_example" # character |  (Optional)

api_instance <- DefaultApi$new()
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **instance_id** | **character**|  | 
 **module_name** | **character**|  | 
 **model_name** | **character**|  | 
 **uid** | **character**|  | 
 **schema_id** | **character**|  | 
 **body** | **AnyType**|  | 
 **authorization** | **character**|  | [optional] 

### Return type

AnyType

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Successful Response |  -  |
| **422** | Validation Error |  -  |

