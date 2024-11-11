#' Create a new HTTPValidationError
#'
#' @description
#' HTTPValidationError Class
#'
#' @docType class
#' @title HTTPValidationError
#' @description HTTPValidationError Class
#' @format An \code{R6Class} generator object
#' @field detail  list(\link{ValidationError}) [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
HTTPValidationError <- R6::R6Class(
  "HTTPValidationError",
  public = list(
    `detail` = NULL,

    #' @description
    #' Initialize a new HTTPValidationError class.
    #'
    #' @param detail detail
    #' @param ... Other optional arguments.
    initialize = function(`detail` = NULL, ...) {
      if (!is.null(`detail`)) {
        stopifnot(is.vector(`detail`), length(`detail`) != 0)
        sapply(`detail`, function(x) stopifnot(R6::is.R6(x)))
        self$`detail` <- `detail`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return HTTPValidationError in JSON format
    toJSON = function() {
      HTTPValidationErrorObject <- list()
      if (!is.null(self$`detail`)) {
        HTTPValidationErrorObject[["detail"]] <-
          lapply(self$`detail`, function(x) x$toJSON())
      }
      HTTPValidationErrorObject
    },

    #' @description
    #' Deserialize JSON string into an instance of HTTPValidationError
    #'
    #' @param input_json the JSON input
    #' @return the instance of HTTPValidationError
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`detail`)) {
        self$`detail` <- ApiClient$new()$deserializeObj(this_object$`detail`, "array[ValidationError]", loadNamespace("laminr.api"))
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return HTTPValidationError in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`detail`)) {
          sprintf(
            '"detail":
          [%s]
',
            paste(sapply(self$`detail`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of HTTPValidationError
    #'
    #' @param input_json the JSON input
    #' @return the instance of HTTPValidationError
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`detail` <- ApiClient$new()$deserializeObj(this_object$`detail`, "array[ValidationError]", loadNamespace("laminr.api"))
      self
    },

    #' @description
    #' Validate JSON input with respect to HTTPValidationError and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of HTTPValidationError
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
# HTTPValidationError$unlock()
#
## Below is an example to define the print function
# HTTPValidationError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# HTTPValidationError$lock()
