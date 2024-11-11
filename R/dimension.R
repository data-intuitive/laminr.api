#' Create a new Dimension
#'
#' @description
#' Dimension Class
#'
#' @docType class
#' @title Dimension
#' @description Dimension Class
#' @format An \code{R6Class} generator object
#' @field field_name  character
#' @field func  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Dimension <- R6::R6Class(
  "Dimension",
  public = list(
    `field_name` = NULL,
    `func` = NULL,

    #' @description
    #' Initialize a new Dimension class.
    #'
    #' @param field_name field_name
    #' @param func func
    #' @param ... Other optional arguments.
    initialize = function(`field_name`, `func` = NULL, ...) {
      if (!missing(`field_name`)) {
        if (!(is.character(`field_name`) && length(`field_name`) == 1)) {
          stop(paste("Error! Invalid data for `field_name`. Must be a string:", `field_name`))
        }
        self$`field_name` <- `field_name`
      }
      if (!is.null(`func`)) {
        if (!(`func` %in% c("count", "sum", "min", "max", "mean"))) {
          stop(paste("Error! \"", `func`, "\" cannot be assigned to `func`. Must be \"count\", \"sum\", \"min\", \"max\", \"mean\".", sep = ""))
        }
        if (!(is.character(`func`) && length(`func`) == 1)) {
          stop(paste("Error! Invalid data for `func`. Must be a string:", `func`))
        }
        self$`func` <- `func`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return Dimension in JSON format
    toJSON = function() {
      DimensionObject <- list()
      if (!is.null(self$`field_name`)) {
        DimensionObject[["field_name"]] <-
          self$`field_name`
      }
      if (!is.null(self$`func`)) {
        DimensionObject[["func"]] <-
          self$`func`
      }
      DimensionObject
    },

    #' @description
    #' Deserialize JSON string into an instance of Dimension
    #'
    #' @param input_json the JSON input
    #' @return the instance of Dimension
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`field_name`)) {
        self$`field_name` <- this_object$`field_name`
      }
      if (!is.null(this_object$`func`)) {
        if (!is.null(this_object$`func`) && !(this_object$`func` %in% c("count", "sum", "min", "max", "mean"))) {
          stop(paste("Error! \"", this_object$`func`, "\" cannot be assigned to `func`. Must be \"count\", \"sum\", \"min\", \"max\", \"mean\".", sep = ""))
        }
        self$`func` <- this_object$`func`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return Dimension in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`field_name`)) {
          sprintf(
            '"field_name":
            "%s"
                    ',
            self$`field_name`
          )
        },
        if (!is.null(self$`func`)) {
          sprintf(
            '"func":
            "%s"
                    ',
            self$`func`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of Dimension
    #'
    #' @param input_json the JSON input
    #' @return the instance of Dimension
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`field_name` <- this_object$`field_name`
      if (!is.null(this_object$`func`) && !(this_object$`func` %in% c("count", "sum", "min", "max", "mean"))) {
        stop(paste("Error! \"", this_object$`func`, "\" cannot be assigned to `func`. Must be \"count\", \"sum\", \"min\", \"max\", \"mean\".", sep = ""))
      }
      self$`func` <- this_object$`func`
      self
    },

    #' @description
    #' Validate JSON input with respect to Dimension and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `field_name`
      if (!is.null(input_json$`field_name`)) {
        if (!(is.character(input_json$`field_name`) && length(input_json$`field_name`) == 1)) {
          stop(paste("Error! Invalid data for `field_name`. Must be a string:", input_json$`field_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Dimension: the required field `field_name` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Dimension
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `field_name` is null
      if (is.null(self$`field_name`)) {
        return(FALSE)
      }

      TRUE
    },

    #' @description
    #' Return a list of invalid fields (if any).
    #'
    #' @return A list of invalid fields (if any).
    getInvalidFields = function() {
      invalid_fields <- list()
      # check if the required `field_name` is null
      if (is.null(self$`field_name`)) {
        invalid_fields["field_name"] <- "Non-nullable required field `field_name` cannot be null."
      }

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
# Dimension$unlock()
#
## Below is an example to define the print function
# Dimension$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Dimension$lock()
