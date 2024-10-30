#' Create a new GetRecordRequestBody
#'
#' @description
#' GetRecordRequestBody Class
#'
#' @docType class
#' @title GetRecordRequestBody
#' @description GetRecordRequestBody Class
#' @format An \code{R6Class} generator object
#' @field select  list(character) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GetRecordRequestBody <- R6::R6Class(
  "GetRecordRequestBody",
  public = list(
    `select` = NULL,

    #' @description
    #' Initialize a new GetRecordRequestBody class.
    #'
    #' @param select select
    #' @param ... Other optional arguments.
    initialize = function(`select` = NULL, ...) {
      if (!is.null(`select`)) {
        stopifnot(is.vector(`select`), length(`select`) != 0)
        sapply(`select`, function(x) stopifnot(is.character(x)))
        self$`select` <- `select`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return GetRecordRequestBody in JSON format
    toJSON = function() {
      GetRecordRequestBodyObject <- list()
      if (!is.null(self$`select`)) {
        GetRecordRequestBodyObject[["select"]] <-
          self$`select`
      }
      GetRecordRequestBodyObject
    },

    #' @description
    #' Deserialize JSON string into an instance of GetRecordRequestBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetRecordRequestBody
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`select`)) {
        self$`select` <- ApiClient$new()$deserializeObj(this_object$`select`, "array[character]", loadNamespace("laminr.api"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return GetRecordRequestBody in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`select`)) {
          sprintf(
            '"select":
             [%s]
          ',
            paste(unlist(lapply(self$`select`, function(x) paste0('"', x, '"'))), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of GetRecordRequestBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of GetRecordRequestBody
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`select` <- ApiClient$new()$deserializeObj(this_object$`select`, "array[character]", loadNamespace("laminr.api"))
      self
    },

    #' @description
    #' Validate JSON input with respect to GetRecordRequestBody and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GetRecordRequestBody
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      invalid_fields
    },

    #' @description
    #' Print the object
    print = function() {
      print(jsonlite::prettify(self$toJSONString()))
      invisible(self)
    }
  ),
  # Lock the class to prevent modifications to the method or field
  lock_class = TRUE
)
## Uncomment below to unlock the class to allow modifications of the method or field
# GetRecordRequestBody$unlock()
#
## Below is an example to define the print function
# GetRecordRequestBody$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GetRecordRequestBody$lock()
