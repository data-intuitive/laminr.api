#' Create a new GetValuesRequestBody
#'
#' @description
#' GetValuesRequestBody Class
#'
#' @docType class
#' @title GetValuesRequestBody
#' @description GetValuesRequestBody Class
#' @format An \code{R6Class} generator object
#' @field filter  object [optional]
#' @field order_by  list(\link{OrderByColumn}) [optional]
#' @field search  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetValuesRequestBody <- R6::R6Class(
  "GetValuesRequestBody",
  public = list(
    `filter` = NULL,
    `order_by` = NULL,
    `search` = NULL,
    #' Initialize a new GetValuesRequestBody class.
    #'
    #' @description
    #' Initialize a new GetValuesRequestBody class.
    #'
    #' @param filter filter
    #' @param order_by order_by
    #' @param search search. Default to "".
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`filter` = NULL, `order_by` = NULL, `search` = "", ...) {
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
    #' @return GetValuesRequestBody in JSON format
    #' @export
    toJSON = function() {
      GetValuesRequestBodyObject <- list()
      if (!is.null(self$`filter`)) {
        GetValuesRequestBodyObject[["filter"]] <-
          self$`filter`
      }
      if (!is.null(self$`order_by`)) {
        GetValuesRequestBodyObject[["order_by"]] <-
          lapply(self$`order_by`, function(x) x$toJSON())
      }
      if (!is.null(self$`search`)) {
        GetValuesRequestBodyObject[["search"]] <-
          self$`search`
      }
      GetValuesRequestBodyObject
    },
    #' Deserialize JSON string into an instance of GetValuesRequestBody
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetValuesRequestBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetValuesRequestBody
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
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
    #' @return GetValuesRequestBody in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
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
    #' Deserialize JSON string into an instance of GetValuesRequestBody
    #'
    #' @description
    #' Deserialize JSON string into an instance of GetValuesRequestBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetValuesRequestBody
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`filter` <- this_object$`filter`
      self$`order_by` <- ApiClient$new()$deserializeObj(this_object$`order_by`, "array[OrderByColumn]", loadNamespace("laminr.api"))
      self$`search` <- this_object$`search`
      self
    },
    #' Validate JSON input with respect to GetValuesRequestBody
    #'
    #' @description
    #' Validate JSON input with respect to GetValuesRequestBody and throw an exception if invalid
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
    #' @return String representation of GetValuesRequestBody
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
# GetValuesRequestBody$unlock()
#
## Below is an example to define the print function
# GetValuesRequestBody$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetValuesRequestBody$lock()

