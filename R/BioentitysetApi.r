# BioLink API
#
# API integration layer for linked biological objects.   __Source:__ https://github.com/biolink/biolink-api/
#
# OpenAPI spec version: 0.1.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git

#' @title Bioentityset operations
#' @description swagger.Bioentityset
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
#' get_entity_set_associations Returns compact associations for a given input set
#'
#'
#' get_entity_set_graph_resource TODO Graph object spanning all entities
#'
#'
#' get_entity_set_summary Summary statistics for objects associated
#'
#'
#' get_over_representation Summary statistics for objects associated
#'
#' }
#'
#' @export
BioentitysetApi <- R6::R6Class(
  'BioentitysetApi',
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
    get_entity_set_associations = function(object_slim, background, subject, object_category, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`object_slim`)) {
        queryParams['object_slim'] <- object_slim
      }

      if (!missing(`background`)) {
        queryParams['background'] <- background
      }

      if (!missing(`subject`)) {
        queryParams['subject'] <- subject
      }

      if (!missing(`object_category`)) {
        queryParams['object_category'] <- object_category
      }

      urlPath <- "/bioentityset/associations/"
      resp <- self$apiClient$callApi(url = paste0(self$apiClient$basePath, urlPath),
                                 method = "GET",
                                 queryParams = queryParams,
                                 headerParams = headerParams,
                                 body = body,
                                 ...)
      
      if (httr::status_code(resp) >= 200 && httr::status_code(resp) <= 299) {
        returnObject <- AssociationResults$new()
        result <- returnObject$fromJSON(httr::content(resp, "text", encoding = "UTF-8"))
        Response$new(returnObject, resp)
      } else if (httr::status_code(resp) >= 400 && httr::status_code(resp) <= 499) {
        Response$new("API client error", resp)
      } else if (httr::status_code(resp) >= 500 && httr::status_code(resp) <= 599) {
        Response$new("API server error", resp)
      }

    },
    get_entity_set_graph_resource = function(object_slim, background, subject, object_category, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`object_slim`)) {
        queryParams['object_slim'] <- object_slim
      }

      if (!missing(`background`)) {
        queryParams['background'] <- background
      }

      if (!missing(`subject`)) {
        queryParams['subject'] <- subject
      }

      if (!missing(`object_category`)) {
        queryParams['object_category'] <- object_category
      }

      urlPath <- "/bioentityset/graph/"
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
    get_entity_set_summary = function(object_slim, background, subject, object_category, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`object_slim`)) {
        queryParams['object_slim'] <- object_slim
      }

      if (!missing(`background`)) {
        queryParams['background'] <- background
      }

      if (!missing(`subject`)) {
        queryParams['subject'] <- subject
      }

      if (!missing(`object_category`)) {
        queryParams['object_category'] <- object_category
      }

      urlPath <- "/bioentityset/descriptor/counts/"
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
    get_over_representation = function(background, subject, subject_category, ontology, taxon, max_p_value, object_category, ...){
      args <- list(...)
      queryParams <- list()
      headerParams <- character()

      if (!missing(`background`)) {
        queryParams['background'] <- background
      }

      if (!missing(`subject`)) {
        queryParams['subject'] <- subject
      }

      if (!missing(`subject_category`)) {
        queryParams['subject_category'] <- subject_category
      }

      if (!missing(`ontology`)) {
        queryParams['ontology'] <- ontology
      }

      if (!missing(`taxon`)) {
        queryParams['taxon'] <- taxon
      }

      if (!missing(`max_p_value`)) {
        queryParams['max_p_value'] <- max_p_value
      }

      if (!missing(`object_category`)) {
        queryParams['object_category'] <- object_category
      }

      urlPath <- "/bioentityset/overrepresentation/"
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
