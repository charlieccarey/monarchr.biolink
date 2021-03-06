# BioLink API
#
# API integration layer for linked biological objects.   __Source:__ https://github.com/biolink/biolink-api/
#
# OpenAPI spec version: 0.1.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Edge Class
#'
#' @field sub 
#' @field pred 
#' @field obj 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Edge <- R6::R6Class(
  'Edge',
  public = list(
    `sub` = NULL,
    `pred` = NULL,
    `obj` = NULL,
    initialize = function(`sub`, `pred`, `obj`){
      if (!missing(`sub`)) {
        stopifnot(is.character(`sub`), length(`sub`) == 1)
        self$`sub` <- `sub`
      }
      if (!missing(`pred`)) {
        stopifnot(is.character(`pred`), length(`pred`) == 1)
        self$`pred` <- `pred`
      }
      if (!missing(`obj`)) {
        stopifnot(is.character(`obj`), length(`obj`) == 1)
        self$`obj` <- `obj`
      }
    },
    toJSON = function() {
      EdgeObject <- list()
      if (!is.null(self$`sub`)) {
        EdgeObject[['sub']] <- self$`sub`
      }
      if (!is.null(self$`pred`)) {
        EdgeObject[['pred']] <- self$`pred`
      }
      if (!is.null(self$`obj`)) {
        EdgeObject[['obj']] <- self$`obj`
      }

      EdgeObject
    },
    fromJSON = function(EdgeJson) {
      EdgeObject <- jsonlite::fromJSON(EdgeJson)
      if (!is.null(EdgeObject$`sub`)) {
        self$`sub` <- EdgeObject$`sub`
      }
      if (!is.null(EdgeObject$`pred`)) {
        self$`pred` <- EdgeObject$`pred`
      }
      if (!is.null(EdgeObject$`obj`)) {
        self$`obj` <- EdgeObject$`obj`
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "sub": %s,
           "pred": %s,
           "obj": %s
        }',
        self$`sub`,
        self$`pred`,
        self$`obj`
      )
    },
    fromJSONString = function(EdgeJson) {
      EdgeObject <- jsonlite::fromJSON(EdgeJson)
      self$`sub` <- EdgeObject$`sub`
      self$`pred` <- EdgeObject$`pred`
      self$`obj` <- EdgeObject$`obj`
    }
  )
)
