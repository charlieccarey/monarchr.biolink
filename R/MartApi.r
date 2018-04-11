# BioLink API
#
# API integration layer for linked biological objects.   __Source:__ https://github.com/biolink/biolink-api/
#
# OpenAPI spec version: 0.1.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Mart operations
#' @description swagger.Mart
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
#' get_mart_case_associations_resource Bulk download of case associations
#'
#'
#' get_mart_disease_associations_resource Bulk download of disease associations
#'
#'
#' get_mart_gene_associations_resource Bulk download of gene associations
#'
#' }
#'
#' @export
MartApi <- R6::R6Class(
  'MartApi',
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
    get_mart_case_associations_resource = function(object_category, taxon, slim, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`slim`)) {
        queryParams['slim'] <- slim
      }

      urlPath <- "/mart/case/{object_category}/{taxon}"
      if (!missing(`object_category`)) {
        urlPath <- gsub(paste0("\\{", "object_category", "\\}"), `object_category`, urlPath)
      }

      if (!missing(`taxon`)) {
        urlPath <- gsub(paste0("\\{", "taxon", "\\}"), `taxon`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_mart_disease_associations_resource = function(object_category, taxon, slim, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`slim`)) {
        queryParams['slim'] <- slim
      }

      urlPath <- "/mart/disease/{object_category}/{taxon}"
      if (!missing(`object_category`)) {
        urlPath <- gsub(paste0("\\{", "object_category", "\\}"), `object_category`, urlPath)
      }

      if (!missing(`taxon`)) {
        urlPath <- gsub(paste0("\\{", "taxon", "\\}"), `taxon`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_mart_gene_associations_resource = function(object_category, taxon, slim, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`slim`)) {
        queryParams['slim'] <- slim
      }

      urlPath <- "/mart/gene/{object_category}/{taxon}"
      if (!missing(`object_category`)) {
        urlPath <- gsub(paste0("\\{", "object_category", "\\}"), `object_category`, urlPath)
      }

      if (!missing(`taxon`)) {
        urlPath <- gsub(paste0("\\{", "taxon", "\\}"), `taxon`, urlPath)
      }

      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        # void response, no need to return anything
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    }
  )
)
