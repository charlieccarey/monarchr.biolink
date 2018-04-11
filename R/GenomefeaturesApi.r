# BioLink API
#
# API integration layer for linked biological objects.   __Source:__ https://github.com/biolink/biolink-api/
#
# OpenAPI spec version: 0.1.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Genomefeatures operations
#' @description swagger.Genomefeatures
#'
#' @field path Stores url path of the request.
#' @field apiClient Handles the client-server communication.
#' @field userAgent Set the user agent of the request.
#'
#' @importFrom R6 R6Class
#'
#' @section Methods:
#' \describe{
#'
#' get_features_within_resource Returns list of matches
#'
#' }
#'
#' @export
GenomefeaturesApi <- R6::R6Class(
  'GenomefeaturesApi',
  public = list(
    userAgent = "Swagger-Codegen/1.0.0/r",
    apiClient = NULL,
    initialize = function(apiClient){
      if (!missing(apiClient)) {
        self$apiClient <- apiClient
      }
      else {
        self$apiClient <- ApiClient$new()
      }
    },
    get_features_within_resource = function(build, reference, begin, end, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      urlPath <- "/genome/features/within/{build}/{reference}/{begin}/{end}"
      if (!missing(`build`)) {
        urlPath <- gsub(paste0("\\{", "build", "\\}"), `build`, urlPath)
      }

      if (!missing(`reference`)) {
        urlPath <- gsub(paste0("\\{", "reference", "\\}"), `reference`, urlPath)
      }

      if (!missing(`begin`)) {
        urlPath <- gsub(paste0("\\{", "begin", "\\}"), `begin`, urlPath)
      }

      if (!missing(`end`)) {
        urlPath <- gsub(paste0("\\{", "end", "\\}"), `end`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- SequenceFeature$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
