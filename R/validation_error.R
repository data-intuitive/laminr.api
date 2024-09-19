#' Create a new ValidationError
#'
#' @description
#' ValidationError Class
#'
#' @docType class
#' @title ValidationError
#' @description ValidationError Class
#' @format An \code{R6Class} generator object
#' @field loc  list(\link{ValidationErrorLocInner})
#' @field msg  character
#' @field type  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ValidationError <- R6::R6Class(
  "ValidationError",
  public = list(
    `loc` = NULL,
    `msg` = NULL,
    `type` = NULL,
    #' Initialize a new ValidationError class.
    #'
    #' @description
    #' Initialize a new ValidationError class.
    #'
    #' @param loc loc
    #' @param msg msg
    #' @param type type
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(`loc`, `msg`, `type`, ...) {
      if (!missing(`loc`)) {
        stopifnot(is.vector(`loc`), length(`loc`) != 0)
        sapply(`loc`, function(x) stopifnot(R6::is.R6(x)))
        self$`loc` <- `loc`
      }
      if (!missing(`msg`)) {
        if (!(is.character(`msg`) && length(`msg`) == 1)) {
          stop(paste("Error! Invalid data for `msg`. Must be a string:", `msg`))
        }
        self$`msg` <- `msg`
      }
      if (!missing(`type`)) {
        if (!(is.character(`type`) && length(`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", `type`))
        }
        self$`type` <- `type`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ValidationError in JSON format
    #' @export
    toJSON = function() {
      ValidationErrorObject <- list()
      if (!is.null(self$`loc`)) {
        ValidationErrorObject[["loc"]] <-
          lapply(self$`loc`, function(x) x$toJSON())
      }
      if (!is.null(self$`msg`)) {
        ValidationErrorObject[["msg"]] <-
          self$`msg`
      }
      if (!is.null(self$`type`)) {
        ValidationErrorObject[["type"]] <-
          self$`type`
      }
      ValidationErrorObject
    },
    #' Deserialize JSON string into an instance of ValidationError
    #'
    #' @description
    #' Deserialize JSON string into an instance of ValidationError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ValidationError
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`loc`)) {
        self$`loc` <- ApiClient$new()$deserializeObj(this_object$`loc`, "array[ValidationErrorLocInner]", loadNamespace("openapi"))
      }
      if (!is.null(this_object$`msg`)) {
        self$`msg` <- this_object$`msg`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ValidationError in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`loc`)) {
          sprintf(
          '"loc":
          [%s]
',
          paste(sapply(self$`loc`, function(x) jsonlite::toJSON(x$toJSON(), auto_unbox = TRUE, digits = NA)), collapse = ",")
          )
        },
        if (!is.null(self$`msg`)) {
          sprintf(
          '"msg":
            "%s"
                    ',
          self$`msg`
          )
        },
        if (!is.null(self$`type`)) {
          sprintf(
          '"type":
            "%s"
                    ',
          self$`type`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },
    #' Deserialize JSON string into an instance of ValidationError
    #'
    #' @description
    #' Deserialize JSON string into an instance of ValidationError
    #'
    #' @param input_json the JSON input
    #' @return the instance of ValidationError
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`loc` <- ApiClient$new()$deserializeObj(this_object$`loc`, "array[ValidationErrorLocInner]", loadNamespace("openapi"))
      self$`msg` <- this_object$`msg`
      self$`type` <- this_object$`type`
      self
    },
    #' Validate JSON input with respect to ValidationError
    #'
    #' @description
    #' Validate JSON input with respect to ValidationError and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `loc`
      if (!is.null(input_json$`loc`)) {
        stopifnot(is.vector(input_json$`loc`), length(input_json$`loc`) != 0)
        tmp <- sapply(input_json$`loc`, function(x) stopifnot(R6::is.R6(x)))
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ValidationError: the required field `loc` is missing."))
      }
      # check the required field `msg`
      if (!is.null(input_json$`msg`)) {
        if (!(is.character(input_json$`msg`) && length(input_json$`msg`) == 1)) {
          stop(paste("Error! Invalid data for `msg`. Must be a string:", input_json$`msg`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ValidationError: the required field `msg` is missing."))
      }
      # check the required field `type`
      if (!is.null(input_json$`type`)) {
        if (!(is.character(input_json$`type`) && length(input_json$`type`) == 1)) {
          stop(paste("Error! Invalid data for `type`. Must be a string:", input_json$`type`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for ValidationError: the required field `type` is missing."))
      }
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ValidationError
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
      # check if the required `loc` is null
      if (is.null(self$`loc`)) {
        return(FALSE)
      }

      # check if the required `msg` is null
      if (is.null(self$`msg`)) {
        return(FALSE)
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
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
      # check if the required `loc` is null
      if (is.null(self$`loc`)) {
        invalid_fields["loc"] <- "Non-nullable required field `loc` cannot be null."
      }

      # check if the required `msg` is null
      if (is.null(self$`msg`)) {
        invalid_fields["msg"] <- "Non-nullable required field `msg` cannot be null."
      }

      # check if the required `type` is null
      if (is.null(self$`type`)) {
        invalid_fields["type"] <- "Non-nullable required field `type` cannot be null."
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
# ValidationError$unlock()
#
## Below is an example to define the print function
# ValidationError$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# ValidationError$lock()

