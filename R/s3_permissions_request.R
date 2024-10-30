#' Create a new S3PermissionsRequest
#'
#' @description
#' S3PermissionsRequest Class
#'
#' @docType class
#' @title S3PermissionsRequest
#' @description S3PermissionsRequest Class
#' @format An \code{R6Class} generator object
#' @field aws_access_key_id  character
#' @field aws_secret_access_key  character
#' @field region  character
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
S3PermissionsRequest <- R6::R6Class(
  "S3PermissionsRequest",
  public = list(
    `aws_access_key_id` = NULL,
    `aws_secret_access_key` = NULL,
    `region` = NULL,

    #' @description
    #' Initialize a new S3PermissionsRequest class.
    #'
    #' @param aws_access_key_id aws_access_key_id
    #' @param aws_secret_access_key aws_secret_access_key
    #' @param region region
    #' @param ... Other optional arguments.
    initialize = function(`aws_access_key_id`, `aws_secret_access_key`, `region`, ...) {
      if (!missing(`aws_access_key_id`)) {
        if (!(is.character(`aws_access_key_id`) && length(`aws_access_key_id`) == 1)) {
          stop(paste("Error! Invalid data for `aws_access_key_id`. Must be a string:", `aws_access_key_id`))
        }
        self$`aws_access_key_id` <- `aws_access_key_id`
      }
      if (!missing(`aws_secret_access_key`)) {
        if (!(is.character(`aws_secret_access_key`) && length(`aws_secret_access_key`) == 1)) {
          stop(paste("Error! Invalid data for `aws_secret_access_key`. Must be a string:", `aws_secret_access_key`))
        }
        self$`aws_secret_access_key` <- `aws_secret_access_key`
      }
      if (!missing(`region`)) {
        if (!(is.character(`region`) && length(`region`) == 1)) {
          stop(paste("Error! Invalid data for `region`. Must be a string:", `region`))
        }
        self$`region` <- `region`
      }
    },

    #' @description
    #' To JSON String
    #'
    #' @return S3PermissionsRequest in JSON format
    toJSON = function() {
      S3PermissionsRequestObject <- list()
      if (!is.null(self$`aws_access_key_id`)) {
        S3PermissionsRequestObject[["aws_access_key_id"]] <-
          self$`aws_access_key_id`
      }
      if (!is.null(self$`aws_secret_access_key`)) {
        S3PermissionsRequestObject[["aws_secret_access_key"]] <-
          self$`aws_secret_access_key`
      }
      if (!is.null(self$`region`)) {
        S3PermissionsRequestObject[["region"]] <-
          self$`region`
      }
      S3PermissionsRequestObject
    },

    #' @description
    #' Deserialize JSON string into an instance of S3PermissionsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of S3PermissionsRequest
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`aws_access_key_id`)) {
        self$`aws_access_key_id` <- this_object$`aws_access_key_id`
      }
      if (!is.null(this_object$`aws_secret_access_key`)) {
        self$`aws_secret_access_key` <- this_object$`aws_secret_access_key`
      }
      if (!is.null(this_object$`region`)) {
        self$`region` <- this_object$`region`
      }
      self
    },

    #' @description
    #' To JSON String
    #'
    #' @return S3PermissionsRequest in JSON format
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`aws_access_key_id`)) {
          sprintf(
            '"aws_access_key_id":
            "%s"
                    ',
            self$`aws_access_key_id`
          )
        },
        if (!is.null(self$`aws_secret_access_key`)) {
          sprintf(
            '"aws_secret_access_key":
            "%s"
                    ',
            self$`aws_secret_access_key`
          )
        },
        if (!is.null(self$`region`)) {
          sprintf(
            '"region":
            "%s"
                    ',
            self$`region`
          )
        }
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      json_string <- as.character(jsonlite::minify(paste("{", jsoncontent, "}", sep = "")))
    },

    #' @description
    #' Deserialize JSON string into an instance of S3PermissionsRequest
    #'
    #' @param input_json the JSON input
    #' @return the instance of S3PermissionsRequest
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`aws_access_key_id` <- this_object$`aws_access_key_id`
      self$`aws_secret_access_key` <- this_object$`aws_secret_access_key`
      self$`region` <- this_object$`region`
      self
    },

    #' @description
    #' Validate JSON input with respect to S3PermissionsRequest and throw an exception if invalid
    #'
    #' @param input the JSON input
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
      # check the required field `aws_access_key_id`
      if (!is.null(input_json$`aws_access_key_id`)) {
        if (!(is.character(input_json$`aws_access_key_id`) && length(input_json$`aws_access_key_id`) == 1)) {
          stop(paste("Error! Invalid data for `aws_access_key_id`. Must be a string:", input_json$`aws_access_key_id`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for S3PermissionsRequest: the required field `aws_access_key_id` is missing."))
      }
      # check the required field `aws_secret_access_key`
      if (!is.null(input_json$`aws_secret_access_key`)) {
        if (!(is.character(input_json$`aws_secret_access_key`) && length(input_json$`aws_secret_access_key`) == 1)) {
          stop(paste("Error! Invalid data for `aws_secret_access_key`. Must be a string:", input_json$`aws_secret_access_key`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for S3PermissionsRequest: the required field `aws_secret_access_key` is missing."))
      }
      # check the required field `region`
      if (!is.null(input_json$`region`)) {
        if (!(is.character(input_json$`region`) && length(input_json$`region`) == 1)) {
          stop(paste("Error! Invalid data for `region`. Must be a string:", input_json$`region`))
        }
      } else {
        stop(paste("The JSON input `", input, "` is invalid for S3PermissionsRequest: the required field `region` is missing."))
      }
    },

    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of S3PermissionsRequest
    toString = function() {
      self$toJSONString()
    },

    #' @description
    #' Return true if the values in all fields are valid.
    #'
    #' @return true if the values in all fields are valid.
    isValid = function() {
      # check if the required `aws_access_key_id` is null
      if (is.null(self$`aws_access_key_id`)) {
        return(FALSE)
      }

      # check if the required `aws_secret_access_key` is null
      if (is.null(self$`aws_secret_access_key`)) {
        return(FALSE)
      }

      # check if the required `region` is null
      if (is.null(self$`region`)) {
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
      # check if the required `aws_access_key_id` is null
      if (is.null(self$`aws_access_key_id`)) {
        invalid_fields["aws_access_key_id"] <- "Non-nullable required field `aws_access_key_id` cannot be null."
      }

      # check if the required `aws_secret_access_key` is null
      if (is.null(self$`aws_secret_access_key`)) {
        invalid_fields["aws_secret_access_key"] <- "Non-nullable required field `aws_secret_access_key` cannot be null."
      }

      # check if the required `region` is null
      if (is.null(self$`region`)) {
        invalid_fields["region"] <- "Non-nullable required field `region` cannot be null."
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
# S3PermissionsRequest$unlock()
#
## Below is an example to define the print function
# S3PermissionsRequest$set("public", "print", function(...) {
#   print(jsonlite::prettify(self$toJSONString()))
#   invisible(self)
# })
## Uncomment below to lock the class to prevent modifications to the method or field
# S3PermissionsRequest$lock()
