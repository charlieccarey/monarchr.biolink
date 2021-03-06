# BioLink API
#
# API integration layer for linked biological objects.   __Source:__ https://github.com/biolink/biolink-api/
#
# OpenAPI spec version: 0.1.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' SummaryPropertyValue Class
#'
#' @field pred 
#' @field xrefs 
#' @field val 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
SummaryPropertyValue <- R6::R6Class(
  'SummaryPropertyValue',
  public = list(
    `pred` = NULL,
    `xrefs` = NULL,
    `val` = NULL,
    initialize = function(`pred`, `xrefs`, `val`){
      if (!missing(`pred`)) {
        stopifnot(is.character(`pred`), length(`pred`) == 1)
        self$`pred` <- `pred`
      }
      if (!missing(`xrefs`)) {
        stopifnot(is.list(`xrefs`), length(`xrefs`) != 0)
        lapply(`xrefs`, function(x) stopifnot(is.character(x)))
        self$`xrefs` <- `xrefs`
      }
      if (!missing(`val`)) {
        stopifnot(is.character(`val`), length(`val`) == 1)
        self$`val` <- `val`
      }
    },
    toJSON = function() {
      SummaryPropertyValueObject <- list()
      if (!is.null(self$`pred`)) {
        SummaryPropertyValueObject[['pred']] <- self$`pred`
      }
      if (!is.null(self$`xrefs`)) {
        SummaryPropertyValueObject[['xrefs']] <- self$`xrefs`
      }
      if (!is.null(self$`val`)) {
        SummaryPropertyValueObject[['val']] <- self$`val`
      }

      SummaryPropertyValueObject
    },
    fromJSON = function(SummaryPropertyValueJson) {
      SummaryPropertyValueObject <- jsonlite::fromJSON(SummaryPropertyValueJson)
      if (!is.null(SummaryPropertyValueObject$`pred`)) {
        self$`pred` <- SummaryPropertyValueObject$`pred`
      }
      if (!is.null(SummaryPropertyValueObject$`xrefs`)) {
        self$`xrefs` <- SummaryPropertyValueObject$`xrefs`
      }
      if (!is.null(SummaryPropertyValueObject$`val`)) {
        self$`val` <- SummaryPropertyValueObject$`val`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "pred": %s,
           "xrefs": [%s],
           "val": %s
        }',
        self$`pred`,
        lapply(self$`xrefs`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`val`
      )
    },
    fromJSONString = function(SummaryPropertyValueJson) {
      SummaryPropertyValueObject <- jsonlite::fromJSON(SummaryPropertyValueJson)
      self$`pred` <- SummaryPropertyValueObject$`pred`
      self$`xrefs` <- SummaryPropertyValueObject$`xrefs`
      self$`val` <- SummaryPropertyValueObject$`val`
    }
  )
)
