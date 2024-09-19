#' Create a new OrderByColumn
#'
#' @description
#' OrderByColumn Class
#'
#' @docType class
#' @title OrderByColumn
#' @description OrderByColumn Class
#' @format An \code{R6Class} generator object
#' @field field  character
#' @field descending  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
OrderByColumn <- R6::R6Class(
  "OrderByColumn",
  public = list(
    `field` = NULL,
    `descending` = NULL,
    #' Initialize a new OrderByColumn class.
    #'
    #' @description
    #' Initialize a new OrderByColumn class.
    #'
    #' @param field field
    #' @param descending descending. Default to FALSE.
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`field`, `descending` = FALSE, ...) {
      if (!missing(`field`)) {
        if (!(is.character(`field`) && length(`field`) == 1)) {
          stop(paste("Error! Invalid data for `field`. Must be a string:", `field`))
        }
        self$`field` <- `field`
      }
      if (!is.null(`descending`)) {
        if (!(is.logical(`descending`) && length(`descending`) == 1)) {
          stop(paste("Error! Invalid data for `descending`. Must be a boolean:", `descending`))
        }
        self$`descending` <- `descending`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderByColumn in JSON format
    #' @export
    toJSON = function() {
      OrderByColumnObject <- list()
      if (!is.null(self$`field`)) {
        OrderByColumnObject[["field"]] <-
          self$`field`
      }
      if (!is.null(self$`descending`)) {
        OrderByColumnObject[["descending"]] <-
          self$`descending`
      }
      OrderByColumnObject
    },
    #' Deserialize JSON string into an instance of OrderByColumn
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderByColumn
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderByColumn
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`field`)) {
        self$`field` <- this_object$`field`
      }
      if (!is.null(this_object$`descending`)) {
        self$`descending` <- this_object$`descending`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return OrderByColumn in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`field`)) {
          sprintf(
          '"field":
            "%s"
                    ',
          self$`field`
          )
        },
        if (!is.null(self$`descending`)) {
          sprintf(
          '"descending":
            %s
                    ',
          tolower(self$`descending`)
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of OrderByColumn
    #'
    #' @description
    #' Deserialize JSON string into an instance of OrderByColumn
    #'
    #' @param input_json the JSON input
    #' @return the instance of OrderByColumn
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`field` <- this_object$`field`
      self$`descending` <- this_object$`descending`
      self
    },
    #' Validate JSON input with respect to OrderByColumn
    #'
    #' @description
    #' Validate JSON input with respect to OrderByColumn and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `field`
      if (!is.null(input_json$`field`)) {
        if (!(is.character(input_json$`field`) && length(input_json$`field`) == 1)) {
          stop(paste("Error! Invalid data for `field`. Must be a string:", input_json$`field`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for OrderByColumn: the required field `field` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of OrderByColumn
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
      # check if the required `field` is null
      if (is.null(self$`field`)) {
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
      # check if the required `field` is null
      if (is.null(self$`field`)) {
        invalid_fields["field"] <- "Non-nullable required field `field` cannot be null."
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
# OrderByColumn$unlock()
#
## Below is an example to define the print function
# OrderByColumn$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# OrderByColumn$lock()

