#' Create a new GetRecordsRequestBody
#'
#' @description
#' GetRecordsRequestBody Class
#'
#' @docType class
#' @title GetRecordsRequestBody
#' @description GetRecordsRequestBody Class
#' @format An \code{R6Class} generator object
#' @field select  list(character) [optional]
#' @field filter  object [optional]
#' @field order_by  list(\link{OrderByColumn}) [optional]
#' @field search  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetRecordsRequestBody <- R6::R6Class(
  "GetRecordsRequestBody",
  public = list(
    `select` = NULL,
    `filter` = NULL,
    `order_by` = NULL,
    `search` = NULL,
    #' Initialize a new GetRecordsRequestBody class.
    #'
    #' @description
    #' Initialize a new GetRecordsRequestBody class.
    #'
    #' @param select select
    #' @param filter filter
    #' @param order_by order_by
    #' @param search search. Default to "".
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`select` = NULL, `filter` = NULL, `order_by` = NULL, `search` = "", ...) {
      if (!is.null(`select`)) {
        stopifnot(is.vector(`select`), length(`select`) != 0)
        sapply(`select`, function(x) stopifnot(is.character(x)))
        self$`select` <- `select`
      }
      if (!is.null(`filter`)) {
        self$`filter` <- `filter`
      }
      if (!is.null(`order_by`)) {
        stopifnot(is.vector(`order_by`), length(`order_by`) != 0)
        sapply(`order_by`, function(x) stopifnot(R6::is.R6(x)))
        self$`order_by` <- `order_by`
      }
      if (!is.null(`search`)) {
        if (!(is.character(`search`) && length(`search`) == 1)) {
          stop(paste("Error! Invalid data for `search`. Must be a string:", `search`))
        }
        self$`search` <- `search`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetRecordsRequestBody in JSON format
    #' @export
    toJSON = function() {
      GetRecordsRequestBodyObject <- list()
      if (!is.null(self$`select`)) {
        GetRecordsRequestBodyObject[["select"]] <-
          self$`select`
      }
      if (!is.null(self$`filter`)) {
        GetRecordsRequestBodyObject[["filter"]] <-
          self$`filter`
      }
      if (!is.null(self$`order_by`)) {
        GetRecordsRequestBodyObject[["order_by"]] <-
          lapply(self$`order_by`, function(x) x$toJSON())
      }
      if (!is.null(self$`search`)) {
        GetRecordsRequestBodyObject[["search"]] <-
          self$`search`
      }
      GetRecordsRequestBodyObject
    },
    #' Deserialize JSON string into an instance of GetRecordsRequestBody
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetRecordsRequestBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetRecordsRequestBody
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`select`)) {
        self$`select` <- ApiClient$new()$deserializeObj(this_object$`select`, "array[character]", loadNamespace("laminr.api"))
      }
      if (!is.null(this_object$`filter`)) {
        self$`filter` <- this_object$`filter`
      }
      if (!is.null(this_object$`order_by`)) {
        self$`order_by` <- ApiClient$new()$deserializeObj(this_object$`order_by`, "array[OrderByColumn]", loadNamespace("laminr.api"))
      }
      if (!is.null(this_object$`search`)) {
        self$`search` <- this_object$`search`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GetRecordsRequestBody in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`select`)) {
          sprintf(
          '"select":
             [%s]
          ',
          paste(unlist(lapply(self$`select`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        },
        if (!is.null(self$`filter`)) {
          sprintf(
          '"filter":
            "%s"
                    ',
          self$`filter`
          )
        },
        if (!is.null(self$`order_by`)) {
          sprintf(
          '"order_by":
          [%s]
',
          paste(sapply(self$`order_by`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`search`)) {
          sprintf(
          '"search":
            "%s"
                    ',
          self$`search`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GetRecordsRequestBody
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetRecordsRequestBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetRecordsRequestBody
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`select` <- ApiClient$new()$deserializeObj(this_object$`select`, "array[character]", loadNamespace("laminr.api"))
      self$`filter` <- this_object$`filter`
      self$`order_by` <- ApiClient$new()$deserializeObj(this_object$`order_by`, "array[OrderByColumn]", loadNamespace("laminr.api"))
      self$`search` <- this_object$`search`
      self
    },
    #' Validate JSON input with respect to GetRecordsRequestBody
    #'
    #' @description
    #' Validate JSON input with respect to GetRecordsRequestBody and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetRecordsRequestBody
    #' @export
    toString = function() {
      self$toJSONString()
    },
    #' Return true if the values in all fields are valid.
    #'
    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    #' @export
    isValid = function() {
      TRUE
    },
    #' Return a list of invalid fields (if any).
    #'
    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    #' @export
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },
    #' Print the object
    #'
    #' @description
    #' Print the object
    #'
    #' @export
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# GetRecordsRequestBody$unlock()
#
## Below is an example to define the print function
# GetRecordsRequestBody$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetRecordsRequestBody$lock()

