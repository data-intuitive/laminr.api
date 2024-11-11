# **{laminr.api}**: R Interface to the LaminDB API


## Overview

The **{laminr.api}** package provides an low-level R interface to the
LaminDB API. The package is not meant to be used directly by end-users,
but is used by higher-level packages like **{laminr}**.

This package is mostly auto-generated from the OpenAPI specification of
the LaminDB API using the [OpenAPI
Generator](https://www.npmjs.com/package/@openapitools/openapi-generator-cli).

## Installation

To install directly from Github, use `remotes`:

``` r
if (!requireNamespace("remotes", quietly=TRUE)) {
    install.packages("remotes")
}
remotes::install_github("data-intuitive/laminr.api")
```

### Usage

``` r
library(laminr.api)

# retrieve these values from ~/.lamin/current_instance.env
# after running `lamin connect <instance_id>`
api_url <- "https://us-east-1.api.lamin.ai/"
instance_id <- "037ba1e08d804f91a90275a47735076a"
schema_id <- "097186c3e91c01ced47aa3e01a3c1515"

api_client <- ApiClient$new(base_path = api_url)

api <- DefaultApi$new(api_client = api_client)
```

Show API object:

``` r
api
```

    <DefaultApi>
      Public:
        AddCollaboratorPut: function (instance_id, account_id, schema_id, role = "read", 
        AddCollaboratorPutWithHttpInfo: function (instance_id, account_id, schema_id, role = "read", 
        api_client: ApiClient, R6
        clone: function (deep = FALSE) 
        CreateInstanceInstancesPut: function (name, storage = "create-s3", schema_str = NULL, db_server_key = NULL, 
        CreateInstanceInstancesPutWithHttpInfo: function (name, storage = "create-s3", schema_str = NULL, db_server_key = NULL, 
        CreateRecordPut: function (instance_id, module_name, model_name, schema_id, body, 
        CreateRecordPutWithHttpInfo: function (instance_id, module_name, model_name, schema_id, body, 
        DeleteCollaboratorDelete: function (instance_id, account_id, authorization = NULL, data_file = NULL, 
        DeleteCollaboratorDeleteWithHttpInfo: function (instance_id, account_id, authorization = NULL, data_file = NULL, 
        DeleteInstanceDelete: function (instance_id, instance_name, authorization = NULL, data_file = NULL, 
        DeleteInstanceDeleteWithHttpInfo: function (instance_id, instance_name, authorization = NULL, data_file = NULL, 
        DeleteRecordDelete: function (instance_id, module_name, model_name, uid, schema_id, 
        DeleteRecordDeleteWithHttpInfo: function (instance_id, module_name, model_name, uid, schema_id, 
        GeneratePasswordGet: function (instance_id, authorization = NULL, data_file = NULL, 
        GeneratePasswordGetWithHttpInfo: function (instance_id, authorization = NULL, data_file = NULL, 
        GenerateUrlGet: function (instance_id, authorization = NULL, data_file = NULL, 
        GenerateUrlGetWithHttpInfo: function (instance_id, authorization = NULL, data_file = NULL, 
        GetInstanceStatisticsGet: function (instance_id, schema_id, q = NULL, authorization = NULL, 
        GetInstanceStatisticsGetWithHttpInfo: function (instance_id, schema_id, q = NULL, authorization = NULL, 
        GetNonEmptyTablesGet: function (instance_id, schema_id, authorization = NULL, data_file = NULL, 
        GetNonEmptyTablesGetWithHttpInfo: function (instance_id, schema_id, authorization = NULL, data_file = NULL, 
        GetRecordPost: function (instance_id, module_name, model_name, id_or_uid, schema_id, 
        GetRecordPostWithHttpInfo: function (instance_id, module_name, model_name, id_or_uid, schema_id, 
        GetRecordsPost: function (instance_id, module_name, model_name, schema_id, limit = 50, 
        GetRecordsPostWithHttpInfo: function (instance_id, module_name, model_name, schema_id, limit = 50, 
        GetRelationCountsGet: function (instance_id, module_name, model_name, id, schema_id, 
        GetRelationCountsGetWithHttpInfo: function (instance_id, module_name, model_name, id, schema_id, 
        GetRelationsGet: function (module_name, model_name, instance_id, authorization = NULL, 
        GetRelationsGetWithHttpInfo: function (module_name, model_name, instance_id, authorization = NULL, 
        GetSchemaGet: function (instance_id, authorization = NULL, data_file = NULL, 
        GetSchemaGetWithHttpInfo: function (instance_id, authorization = NULL, data_file = NULL, 
        GetValuesPost: function (instance_id, module_name, model_name, field_path, schema_id, 
        GetValuesPostWithHttpInfo: function (instance_id, module_name, model_name, field_path, schema_id, 
        GrantS3PermissionsPut: function (bucket_name, s3_permissions_request, aws_account_id = "767398070972", 
        GrantS3PermissionsPutWithHttpInfo: function (bucket_name, s3_permissions_request, aws_account_id = "767398070972", 
        GroupByPost: function (instance_id, module_name, model_name, schema_id, group_by_request_body, 
        GroupByPostWithHttpInfo: function (instance_id, module_name, model_name, schema_id, group_by_request_body, 
        initialize: function (api_client) 
        TransferOwnershipPatch: function (instance_id, handle, schema_id, authorization = NULL, 
        TransferOwnershipPatchWithHttpInfo: function (instance_id, handle, schema_id, authorization = NULL, 
        UpdateCollaboratorPatch: function (instance_id, account_id, role, authorization = NULL, 
        UpdateCollaboratorPatchWithHttpInfo: function (instance_id, account_id, role, authorization = NULL, 
        UpdateRecordPatch: function (instance_id, module_name, model_name, uid, schema_id, 
        UpdateRecordPatchWithHttpInfo: function (instance_id, module_name, model_name, uid, schema_id, 

Get schema:

``` r
schema <- api$GetSchemaGet(instance_id)
names(schema)
```

    [1] "core"   "bionty" "wetlab"

``` r
names(schema$core)
```

     [1] "run"                  "user"                 "param"               
     [4] "ulabel"               "feature"              "storage"             
     [7] "artifact"             "transform"            "collection"          
    [10] "featureset"           "paramvalue"           "featurevalue"        
    [13] "runparamvalue"        "artifactulabel"       "collectionulabel"    
    [16] "featuresetfeature"    "artifactfeatureset"   "artifactparamvalue"  
    [19] "collectionartifact"   "artifactfeaturevalue"

Get record:

``` r
api$GetRecordPost(
  instance_id,
  "core",
  "artifact",
  "3TNCsZZcnIBv2WGb0001",
  schema_id,
  include_foreign_keys = TRUE
)
```

    $n_objects
    NULL

    $uid
    [1] "3TNCsZZcnIBv2WGb0001"

    $hash
    [1] "iETHP3Lw-tVqZxYAuEC-SA"

    $storage_id
    [1] 2

    $version
    NULL

    $`_accessor`
    [1] "AnnData"

    $transform_id
    [1] 163

    $id
    [1] 938

    $created_at
    [1] "2024-10-18T21:46:55.467982+00:00"

    $description
    [1] "10x reference adata, trusted cell type annotation"

    $`_key_is_virtual`
    [1] TRUE

    $key
    NULL

    $updated_at
    [1] "2024-10-18T21:58:06.010689+00:00"

    $n_observations
    [1] 70

    $size
    [1] 851664

    $`_hash_type`
    [1] "md5"

    $created_by_id
    [1] 9

    $is_latest
    [1] TRUE

    $visibility
    [1] 1

    $type
    [1] "dataset"

    $run_id
    [1] 305

    $suffix
    [1] ".h5ad"

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

| Class | Method | HTTP request | Description |
|----|----|----|----|
| *DefaultApi* | [**AddCollaboratorPut**](docs/DefaultApi.md#AddCollaboratorPut) | **PUT** /instances/{instance_id}/collaborators/{account_id} | Add Collaborator |
| *DefaultApi* | [**CreateInstanceInstancesPut**](docs/DefaultApi.md#CreateInstanceInstancesPut) | **PUT** /instances | Create Instance |
| *DefaultApi* | [**CreateRecordPut**](docs/DefaultApi.md#CreateRecordPut) | **PUT** /instances/{instance_id}/modules/{module_name}/{model_name} | Create Record |
| *DefaultApi* | [**DeleteCollaboratorDelete**](docs/DefaultApi.md#DeleteCollaboratorDelete) | **DELETE** /instances/{instance_id}/collaborators/{account_id} | Delete Collaborator |
| *DefaultApi* | [**DeleteInstanceDelete**](docs/DefaultApi.md#DeleteInstanceDelete) | **DELETE** /instances/{instance_id} | Delete Instance |
| *DefaultApi* | [**DeleteRecordDelete**](docs/DefaultApi.md#DeleteRecordDelete) | **DELETE** /instances/{instance_id}/modules/{module_name}/{model_name}/{uid} | Delete Record |
| *DefaultApi* | [**GeneratePasswordGet**](docs/DefaultApi.md#GeneratePasswordGet) | **GET** /instances/{instance_id}/db/password | Generate Password |
| *DefaultApi* | [**GenerateUrlGet**](docs/DefaultApi.md#GenerateUrlGet) | **GET** /instances/{instance_id}/db/url | Generate Url |
| *DefaultApi* | [**GetInstanceStatisticsGet**](docs/DefaultApi.md#GetInstanceStatisticsGet) | **GET** /instances/{instance_id}/statistics | Get Instance Statistics |
| *DefaultApi* | [**GetNonEmptyTablesGet**](docs/DefaultApi.md#GetNonEmptyTablesGet) | **GET** /instances/{instance_id}/non_empty_tables | Get Non Empty Tables |
| *DefaultApi* | [**GetRecordPost**](docs/DefaultApi.md#GetRecordPost) | **POST** /instances/{instance_id}/modules/{module_name}/{model_name}/{id_or_uid} | Get Record |
| *DefaultApi* | [**GetRecordsPost**](docs/DefaultApi.md#GetRecordsPost) | **POST** /instances/{instance_id}/modules/{module_name}/{model_name} | Get Records |
| *DefaultApi* | [**GetRelationsGet**](docs/DefaultApi.md#GetRelationsGet) | **GET** /instances/{instance_id}/schema/{module_name}/{model_name} | Get Relations |
| *DefaultApi* | [**GetSchemaGet**](docs/DefaultApi.md#GetSchemaGet) | **GET** /instances/{instance_id}/schema | Get Schema |
| *DefaultApi* | [**GetValuesPost**](docs/DefaultApi.md#GetValuesPost) | **POST** /instances/{instance_id}/modules/{module_name}/{model_name}/fields/{field_path} | Get Values |
| *DefaultApi* | [**GrantS3PermissionsPut**](docs/DefaultApi.md#GrantS3PermissionsPut) | **PUT** /storages/s3/{bucket_name}/permissions | Grant S3 Permissions |
| *DefaultApi* | [**GroupByPost**](docs/DefaultApi.md#GroupByPost) | **POST** /instances/{instance_id}/modules/{module_name}/{model_name}/group-by | Group By |
| *DefaultApi* | [**TransferOwnershipPatch**](docs/DefaultApi.md#TransferOwnershipPatch) | **PATCH** /instances/{instance_id}/owner/{handle} | Transfer Ownership |
| *DefaultApi* | [**UpdateCollaboratorPatch**](docs/DefaultApi.md#UpdateCollaboratorPatch) | **PATCH** /instances/{instance_id}/collaborators/{account_id} | Update Collaborator |
| *DefaultApi* | [**UpdateRecordPatch**](docs/DefaultApi.md#UpdateRecordPatch) | **PATCH** /instances/{instance_id}/modules/{module_name}/{model_name}/{uid} | Update Record |

## Documentation for Models

- [Dimension](docs/Dimension.md)
- [GetRecordRequestBody](docs/GetRecordRequestBody.md)
- [GetRecordsRequestBody](docs/GetRecordsRequestBody.md)
- [GetValuesRequestBody](docs/GetValuesRequestBody.md)
- [GroupByRequestBody](docs/GroupByRequestBody.md)
- [HTTPValidationError](docs/HTTPValidationError.md)
- [Measure](docs/Measure.md)
- [OrderByColumn](docs/OrderByColumn.md)
- [S3PermissionsRequest](docs/S3PermissionsRequest.md)
- [ValidationError](docs/ValidationError.md)
- [ValidationErrorLocInner](docs/ValidationErrorLocInner.md)

## Documentation for Authorization

Endpoints do not require authorization.
