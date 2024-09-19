#' Create a new Measure
#'
#' @description
#' Measure Class
#'
#' @docType class
#' @title Measure
#' @description Measure Class
#' @format An \code{R6Class} generator object
#' @field field_name  character
#' @field agg_func  character
#' @field alias  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Measure <- R6::R6Class(
  "Measure",
  public = list(
    `field_name` = NULL,
    `agg_func` = NULL,
    `alias` = NULL,
    #' Initialize a new Measure class.
    #'
    #' @description
    #' Initialize a new Measure class.
    #'
    #' @param field_name field_name
    #' @param agg_func agg_func
    #' @param alias alias
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`field_name`, `agg_func`, `alias` = NULL, ...) {
      if (!missing(`field_name`)) {
        if (!(is.character(`field_name`) && length(`field_name`) == 1)) {
          stop(paste("Error! Invalid data for `field_name`. Must be a string:", `field_name`))
        }
        self$`field_name` <- `field_name`
      }
      if (!missing(`agg_func`)) {
        if (!(`agg_func` %in% c("count", "sum", "min", "max", "mean"))) {
          stop(paste("Error! \"", `agg_func`, "\" cannot be assigned to `agg_func`. Must be \"count\", \"sum\", \"min\", \"max\", \"mean\".", sep = ""))
        }
        if (!(is.character(`agg_func`) && length(`agg_func`) == 1)) {
          stop(paste("Error! Invalid data for `agg_func`. Must be a string:", `agg_func`))
        }
        self$`agg_func` <- `agg_func`
      }
      if (!is.null(`alias`)) {
        if (!(is.character(`alias`) && length(`alias`) == 1)) {
          stop(paste("Error! Invalid data for `alias`. Must be a string:", `alias`))
        }
        self$`alias` <- `alias`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Measure in JSON format
    #' @export
    toJSON = function() {
      MeasureObject <- list()
      if (!is.null(self$`field_name`)) {
        MeasureObject[["field_name"]] <-
          self$`field_name`
      }
      if (!is.null(self$`agg_func`)) {
        MeasureObject[["agg_func"]] <-
          self$`agg_func`
      }
      if (!is.null(self$`alias`)) {
        MeasureObject[["alias"]] <-
          self$`alias`
      }
      MeasureObject
    },
    #' Deserialize JSON string into an instance of Measure
    #'
    #' @description
    #' Deserialize JSON string into an instance of Measure
    #'
    #' @param input_json the JSON input
    #' @return the instance of Measure
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`field_name`)) {
        self$`field_name` <- this_object$`field_name`
      }
      if (!is.null(this_object$`agg_func`)) {
        if (!is.null(this_object$`agg_func`) && !(this_object$`agg_func` %in% c("count", "sum", "min", "max", "mean"))) {
          stop(paste("Error! \"", this_object$`agg_func`, "\" cannot be assigned to `agg_func`. Must be \"count\", \"sum\", \"min\", \"max\", \"mean\".", sep = ""))
        }
        self$`agg_func` <- this_object$`agg_func`
      }
      if (!is.null(this_object$`alias`)) {
        self$`alias` <- this_object$`alias`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return Measure in JSON format
    #' @export
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
        if (!is.null(self$`agg_func`)) {
          sprintf(
          '"agg_func":
            "%s"
                    ',
          self$`agg_func`
          )
        },
        if (!is.null(self$`alias`)) {
          sprintf(
          '"alias":
            "%s"
                    ',
          self$`alias`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of Measure
    #'
    #' @description
    #' Deserialize JSON string into an instance of Measure
    #'
    #' @param input_json the JSON input
    #' @return the instance of Measure
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`field_name` <- this_object$`field_name`
      if (!is.null(this_object$`agg_func`) && !(this_object$`agg_func` %in% c("count", "sum", "min", "max", "mean"))) {
        stop(paste("Error! \"", this_object$`agg_func`, "\" cannot be assigned to `agg_func`. Must be \"count\", \"sum\", \"min\", \"max\", \"mean\".", sep = ""))
      }
      self$`agg_func` <- this_object$`agg_func`
      self$`alias` <- this_object$`alias`
      self
    },
    #' Validate JSON input with respect to Measure
    #'
    #' @description
    #' Validate JSON input with respect to Measure and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `field_name`
      if (!is.null(input_json$`field_name`)) {
        if (!(is.character(input_json$`field_name`) && length(input_json$`field_name`) == 1)) {
          stop(paste("Error! Invalid data for `field_name`. Must be a string:", input_json$`field_name`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Measure: the required field `field_name` is missing."))
      }
      # check the required field `agg_func`
      if (!is.null(input_json$`agg_func`)) {
        if (!(is.character(input_json$`agg_func`) && length(input_json$`agg_func`) == 1)) {
          stop(paste("Error! Invalid data for `agg_func`. Must be a string:", input_json$`agg_func`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for Measure: the required field `agg_func` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of Measure
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
      # check if the required `field_name` is null
      if (is.null(self$`field_name`)) {
        return(FALSE)
      }

      # check if the required `agg_func` is null
      if (is.null(self$`agg_func`)) {
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
      # check if the required `field_name` is null
      if (is.null(self$`field_name`)) {
        invalid_fields["field_name"] <- "Non-nullable required field `field_name` cannot be null."
      }

      # check if the required `agg_func` is null
      if (is.null(self$`agg_func`)) {
        invalid_fields["agg_func"] <- "Non-nullable required field `agg_func` cannot be null."
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
# Measure$unlock()
#
## Below is an example to define the print function
# Measure$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# Measure$lock()

