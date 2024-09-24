#' Create a new GroupByRequestBody
#'
#' @description
#' GroupByRequestBody Class
#'
#' @docType class
#' @title GroupByRequestBody
#' @description GroupByRequestBody Class
#' @format An \code{R6Class} generator object
#' @field dimensions  list(\link{Dimension})
#' @field measures  list(\link{Measure})
#' @field filter  object [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
GroupByRequestBody <- R6::R6Class(
  "GroupByRequestBody",
  public = list(
    `dimensions` = NULL,
    `measures` = NULL,
    `filter` = NULL,
    #' Initialize a new GroupByRequestBody class.
    #'
    #' @description
    #' Initialize a new GroupByRequestBody class.
    #'
    #' @param dimensions dimensions
    #' @param measures measures
    #' @param filter filter
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`dimensions`, `measures`, `filter` = NULL, ...) {
      if (!missing(`dimensions`)) {
        stopifnot(is.vector(`dimensions`), length(`dimensions`) != 0)
        sapply(`dimensions`, function(x) stopifnot(R6::is.R6(x)))
        self$`dimensions` <- `dimensions`
      }
      if (!missing(`measures`)) {
        stopifnot(is.vector(`measures`), length(`measures`) != 0)
        sapply(`measures`, function(x) stopifnot(R6::is.R6(x)))
        self$`measures` <- `measures`
      }
      if (!is.null(`filter`)) {
        self$`filter` <- `filter`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GroupByRequestBody in JSON format
    #' @export
    toJSON = function() {
      GroupByRequestBodyObject <- list()
      if (!is.null(self$`dimensions`)) {
        GroupByRequestBodyObject[["dimensions"]] <-
          lapply(self$`dimensions`, function(x) x$toJSON())
      }
      if (!is.null(self$`measures`)) {
        GroupByRequestBodyObject[["measures"]] <-
          lapply(self$`measures`, function(x) x$toJSON())
      }
      if (!is.null(self$`filter`)) {
        GroupByRequestBodyObject[["filter"]] <-
          self$`filter`
      }
      GroupByRequestBodyObject
    },
    #' Deserialize JSON string into an instance of GroupByRequestBody
    #'
    #' @description
    #' Deserialize JSON string into an instance of GroupByRequestBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of GroupByRequestBody
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`dimensions`)) {
        self$`dimensions` <- ApiClient$new()$deserializeObj(this_object$`dimensions`, "array[Dimension]", loadNamespace("laminr.api"))
      }
      if (!is.null(this_object$`measures`)) {
        self$`measures` <- ApiClient$new()$deserializeObj(this_object$`measures`, "array[Measure]", loadNamespace("laminr.api"))
      }
      if (!is.null(this_object$`filter`)) {
        self$`filter` <- this_object$`filter`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return GroupByRequestBody in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`dimensions`)) {
          sprintf(
          '"dimensions":
          [%s]
',
          paste(sapply(self$`dimensions`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`measures`)) {
          sprintf(
          '"measures":
          [%s]
',
          paste(sapply(self$`measures`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`filter`)) {
          sprintf(
          '"filter":
            "%s"
                    ',
          self$`filter`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of GroupByRequestBody
    #'
    #' @description
    #' Deserialize JSON string into an instance of GroupByRequestBody
    #'
    #' @param input_json the JSON input
    #' @return the instance of GroupByRequestBody
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`dimensions` <- ApiClient$new()$deserializeObj(this_object$`dimensions`, "array[Dimension]", loadNamespace("laminr.api"))
      self$`measures` <- ApiClient$new()$deserializeObj(this_object$`measures`, "array[Measure]", loadNamespace("laminr.api"))
      self$`filter` <- this_object$`filter`
      self
    },
    #' Validate JSON input with respect to GroupByRequestBody
    #'
    #' @description
    #' Validate JSON input with respect to GroupByRequestBody and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `dimensions`
      if (!is.null(input_json$`dimensions`)) {
        stopifnot(is.vector(input_json$`dimensions`), length(input_json$`dimensions`) != 0)
        tmp <- sapply(input_json$`dimensions`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GroupByRequestBody: the required field `dimensions` is missing."))
      }
      # check the required field `measures`
      if (!is.null(input_json$`measures`)) {
        stopifnot(is.vector(input_json$`measures`), length(input_json$`measures`) != 0)
        tmp <- sapply(input_json$`measures`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for GroupByRequestBody: the required field `measures` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of GroupByRequestBody
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
      # check if the required `dimensions` is null
      if (is.null(self$`dimensions`)) {
        return(FALSE)
      }

      # check if the required `measures` is null
      if (is.null(self$`measures`)) {
        return(FALSE)
      }

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
      # check if the required `dimensions` is null
      if (is.null(self$`dimensions`)) {
        invalid_fields["dimensions"] <- "Non-nullable required field `dimensions` cannot be null."
      }

      # check if the required `measures` is null
      if (is.null(self$`measures`)) {
        invalid_fields["measures"] <- "Non-nullable required field `measures` cannot be null."
      }

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
# GroupByRequestBody$unlock()
#
## Below is an example to define the print function
# GroupByRequestBody$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# GroupByRequestBody$lock()

