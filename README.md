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
        AddCollaboratorInstancesInstanceIdCollaboratorsAccountIdPut: function (instance_id, account_id, schema_id, role = "read", 
        AddCollaboratorInstancesInstanceIdCollaboratorsAccountIdPutWithHttpInfo: function (instance_id, account_id, schema_id, role = "read", 
        api_client: ApiClient, R6
        clone: function (deep = FALSE) 
        CreateInstanceInstancesPut: function (name, storage = "create-s3", schema_str = NULL, db_server_key = NULL, 
        CreateInstanceInstancesPutWithHttpInfo: function (name, storage = "create-s3", schema_str = NULL, db_server_key = NULL, 
        CreateRecordInstancesInstanceIdModulesModuleNameModelNamePut: function (instance_id, module_name, model_name, schema_id, body, 
        CreateRecordInstancesInstanceIdModulesModuleNameModelNamePutWithHttpInfo: function (instance_id, module_name, model_name, schema_id, body, 
        DeleteCollaboratorInstancesInstanceIdCollaboratorsAccountIdDelete: function (instance_id, account_id, authorization = NULL, data_file = NULL, 
        DeleteCollaboratorInstancesInstanceIdCollaboratorsAccountIdDeleteWithHttpInfo: function (instance_id, account_id, authorization = NULL, data_file = NULL, 
        DeleteInstanceInstancesInstanceIdDelete: function (instance_id, instance_name, authorization = NULL, data_file = NULL, 
        DeleteInstanceInstancesInstanceIdDeleteWithHttpInfo: function (instance_id, instance_name, authorization = NULL, data_file = NULL, 
        DeleteRecordInstancesInstanceIdModulesModuleNameModelNameUidDelete: function (instance_id, module_name, model_name, uid, schema_id, 
        DeleteRecordInstancesInstanceIdModulesModuleNameModelNameUidDeleteWithHttpInfo: function (instance_id, module_name, model_name, uid, schema_id, 
        GeneratePasswordInstancesInstanceIdDbPasswordGet: function (instance_id, authorization = NULL, data_file = NULL, 
        GeneratePasswordInstancesInstanceIdDbPasswordGetWithHttpInfo: function (instance_id, authorization = NULL, data_file = NULL, 
        GenerateUrlInstancesInstanceIdDbUrlGet: function (instance_id, authorization = NULL, data_file = NULL, 
        GenerateUrlInstancesInstanceIdDbUrlGetWithHttpInfo: function (instance_id, authorization = NULL, data_file = NULL, 
        GetInstanceStatisticsInstancesInstanceIdStatisticsGet: function (instance_id, schema_id, q = NULL, authorization = NULL, 
        GetInstanceStatisticsInstancesInstanceIdStatisticsGetWithHttpInfo: function (instance_id, schema_id, q = NULL, authorization = NULL, 
        GetNonEmptyTablesInstancesInstanceIdNonEmptyTablesGet: function (instance_id, schema_id, authorization = NULL, data_file = NULL, 
        GetNonEmptyTablesInstancesInstanceIdNonEmptyTablesGetWithHttpInfo: function (instance_id, schema_id, authorization = NULL, data_file = NULL, 
        GetRecordInstancesInstanceIdModulesModuleNameModelNameIdOrUidPost: function (instance_id, module_name, model_name, id_or_uid, schema_id, 
        GetRecordInstancesInstanceIdModulesModuleNameModelNameIdOrUidPostWithHttpInfo: function (instance_id, module_name, model_name, id_or_uid, schema_id, 
        GetRecordsInstancesInstanceIdModulesModuleNameModelNamePost: function (instance_id, module_name, model_name, schema_id, limit = 50, 
        GetRecordsInstancesInstanceIdModulesModuleNameModelNamePostWithHttpInfo: function (instance_id, module_name, model_name, schema_id, limit = 50, 
        GetRelationCountsInstancesInstanceIdModulesModuleNameModelNameIdCountsGet: function (instance_id, module_name, model_name, id, schema_id, 
        GetRelationCountsInstancesInstanceIdModulesModuleNameModelNameIdCountsGetWithHttpInfo: function (instance_id, module_name, model_name, id, schema_id, 
        GetRelationsInstancesInstanceIdSchemaModuleNameModelNameGet: function (module_name, model_name, instance_id, authorization = NULL, 
        GetRelationsInstancesInstanceIdSchemaModuleNameModelNameGetWithHttpInfo: function (module_name, model_name, instance_id, authorization = NULL, 
        GetSchemaInstancesInstanceIdSchemaGet: function (instance_id, authorization = NULL, data_file = NULL, 
        GetSchemaInstancesInstanceIdSchemaGetWithHttpInfo: function (instance_id, authorization = NULL, data_file = NULL, 
        GetValuesInstancesInstanceIdModulesModuleNameModelNameFieldsFieldPathPost: function (instance_id, module_name, model_name, field_path, schema_id, 
        GetValuesInstancesInstanceIdModulesModuleNameModelNameFieldsFieldPathPostWithHttpInfo: function (instance_id, module_name, model_name, field_path, schema_id, 
        GrantS3PermissionsStoragesS3BucketNamePermissionsPut: function (bucket_name, s3_permissions_request, aws_account_id = "767398070972", 
        GrantS3PermissionsStoragesS3BucketNamePermissionsPutWithHttpInfo: function (bucket_name, s3_permissions_request, aws_account_id = "767398070972", 
        GroupByInstancesInstanceIdModulesModuleNameModelNameGroupByPost: function (instance_id, module_name, model_name, schema_id, group_by_request_body, 
        GroupByInstancesInstanceIdModulesModuleNameModelNameGroupByPostWithHttpInfo: function (instance_id, module_name, model_name, schema_id, group_by_request_body, 
        initialize: function (api_client) 
        TransferOwnershipInstancesInstanceIdOwnerHandlePatch: function (instance_id, handle, schema_id, authorization = NULL, 
        TransferOwnershipInstancesInstanceIdOwnerHandlePatchWithHttpInfo: function (instance_id, handle, schema_id, authorization = NULL, 
        UpdateCollaboratorInstancesInstanceIdCollaboratorsAccountIdPatch: function (instance_id, account_id, role, authorization = NULL, 
        UpdateCollaboratorInstancesInstanceIdCollaboratorsAccountIdPatchWithHttpInfo: function (instance_id, account_id, role, authorization = NULL, 
        UpdateRecordInstancesInstanceIdModulesModuleNameModelNameUidPatch: function (instance_id, module_name, model_name, uid, schema_id, 
        UpdateRecordInstancesInstanceIdModulesModuleNameModelNameUidPatchWithHttpInfo: function (instance_id, module_name, model_name, uid, schema_id, 

Get schema:

``` r
schema <- api$GetSchemaInstancesInstanceIdSchemaGet(instance_id)
names(schema)
```

    [1] "core"   "bionty" "wetlab"

``` r
names(schema$core)
```

     [1] "run"                  "user"                 "param"                "ulabel"               "feature"              "storage"              "artifact"            
     [8] "transform"            "collection"           "featureset"           "paramvalue"           "featurevalue"         "runparamvalue"        "artifactulabel"      
    [15] "collectionulabel"     "featuresetfeature"    "artifactfeatureset"   "artifactparamvalue"   "collectionartifact"   "artifactfeaturevalue"

Get record:

``` r
api$GetRecordInstancesInstanceIdModulesModuleNameModelNameIdOrUidPost(
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
