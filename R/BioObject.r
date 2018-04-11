# BioLink API
#
# API integration layer for linked biological objects.   __Source:__ https://github.com/biolink/biolink-api/
#
# OpenAPI spec version: 0.1.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' BioObject Class
#'
#' @field id 
#' @field label 
#' @field categories 
#' @field types 
#' @field description 
#' @field consider 
#' @field deprecated 
#' @field replaced_by 
#' @field synonyms 
#' @field xrefs 
#' @field taxon 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
BioObject <- R6::R6Class(
  'BioObject',
  public = list(
    `id` = NULL,
    `label` = NULL,
    `categories` = NULL,
    `types` = NULL,
    `description` = NULL,
    `consider` = NULL,
    `deprecated` = NULL,
    `replaced_by` = NULL,
    `synonyms` = NULL,
    `xrefs` = NULL,
    `taxon` = NULL,
    initialize = function(`id`, `label`, `categories`, `types`, `description`, `consider`, `deprecated`, `replaced_by`, `synonyms`, `xrefs`, `taxon`){
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`label`)) {
        stopifnot(is.character(`label`), length(`label`) == 1)
        self$`label` <- `label`
      }
      if (!missing(`categories`)) {
        stopifnot(is.list(`categories`), length(`categories`) != 0)
        lapply(`categories`, function(x) stopifnot(is.character(x)))
        self$`categories` <- `categories`
      }
      if (!missing(`types`)) {
        stopifnot(is.list(`types`), length(`types`) != 0)
        lapply(`types`, function(x) stopifnot(is.character(x)))
        self$`types` <- `types`
      }
      if (!missing(`description`)) {
        stopifnot(is.character(`description`), length(`description`) == 1)
        self$`description` <- `description`
      }
      if (!missing(`consider`)) {
        stopifnot(is.list(`consider`), length(`consider`) != 0)
        lapply(`consider`, function(x) stopifnot(is.character(x)))
        self$`consider` <- `consider`
      }
      if (!missing(`deprecated`)) {
        self$`deprecated` <- `deprecated`
      }
      if (!missing(`replaced_by`)) {
        stopifnot(is.list(`replaced_by`), length(`replaced_by`) != 0)
        lapply(`replaced_by`, function(x) stopifnot(is.character(x)))
        self$`replaced_by` <- `replaced_by`
      }
      if (!missing(`synonyms`)) {
        stopifnot(is.list(`synonyms`), length(`synonyms`) != 0)
        lapply(`synonyms`, function(x) stopifnot(R6::is.R6(x)))
        self$`synonyms` <- `synonyms`
      }
      if (!missing(`xrefs`)) {
        stopifnot(is.list(`xrefs`), length(`xrefs`) != 0)
        lapply(`xrefs`, function(x) stopifnot(is.character(x)))
        self$`xrefs` <- `xrefs`
      }
      if (!missing(`taxon`)) {
        stopifnot(R6::is.R6(`taxon`))
        self$`taxon` <- `taxon`
      }
    },
    toJSON = function() {
      BioObjectObject <- list()
      if (!is.null(self$`id`)) {
        BioObjectObject[['id']] <- self$`id`
      }
      if (!is.null(self$`label`)) {
        BioObjectObject[['label']] <- self$`label`
      }
      if (!is.null(self$`categories`)) {
        BioObjectObject[['categories']] <- self$`categories`
      }
      if (!is.null(self$`types`)) {
        BioObjectObject[['types']] <- self$`types`
      }
      if (!is.null(self$`description`)) {
        BioObjectObject[['description']] <- self$`description`
      }
      if (!is.null(self$`consider`)) {
        BioObjectObject[['consider']] <- self$`consider`
      }
      if (!is.null(self$`deprecated`)) {
        BioObjectObject[['deprecated']] <- self$`deprecated`
      }
      if (!is.null(self$`replaced_by`)) {
        BioObjectObject[['replaced_by']] <- self$`replaced_by`
      }
      if (!is.null(self$`synonyms`)) {
        BioObjectObject[['synonyms']] <- lapply(self$`synonyms`, function(x) x$toJSON())
      }
      if (!is.null(self$`xrefs`)) {
        BioObjectObject[['xrefs']] <- self$`xrefs`
      }
      if (!is.null(self$`taxon`)) {
        BioObjectObject[['taxon']] <- self$`taxon`$toJSON()
      }

      BioObjectObject
    },
    fromJSON = function(BioObjectJson) {
      BioObjectObject <- jsonlite::fromJSON(BioObjectJson)
      if (!is.null(BioObjectObject$`id`)) {
        self$`id` <- BioObjectObject$`id`
      }
      if (!is.null(BioObjectObject$`label`)) {
        self$`label` <- BioObjectObject$`label`
      }
      if (!is.null(BioObjectObject$`categories`)) {
        self$`categories` <- BioObjectObject$`categories`
      }
      if (!is.null(BioObjectObject$`types`)) {
        self$`types` <- BioObjectObject$`types`
      }
      if (!is.null(BioObjectObject$`description`)) {
        self$`description` <- BioObjectObject$`description`
      }
      if (!is.null(BioObjectObject$`consider`)) {
        self$`consider` <- BioObjectObject$`consider`
      }
      if (!is.null(BioObjectObject$`deprecated`)) {
        self$`deprecated` <- BioObjectObject$`deprecated`
      }
      if (!is.null(BioObjectObject$`replaced_by`)) {
        self$`replaced_by` <- BioObjectObject$`replaced_by`
      }
      if (!is.null(BioObjectObject$`synonyms`)) {
        self$`synonyms` <- lapply(BioObjectObject$`synonyms`, function(x) {
          synonymsObject <- SynonymPropertyValue$new()
          synonymsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          synonymsObject
        })
      }
      if (!is.null(BioObjectObject$`xrefs`)) {
        self$`xrefs` <- BioObjectObject$`xrefs`
      }
      if (!is.null(BioObjectObject$`taxon`)) {
        taxonObject <- Taxon$new()
        taxonObject$fromJSON(jsonlite::toJSON(BioObjectObject$taxon, auto_unbox = TRUE))
        self$`taxon` <- taxonObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "id": %s,
           "label": %s,
           "categories": [%s],
           "types": [%s],
           "description": %s,
           "consider": [%s],
           "deprecated": %s,
           "replaced_by": [%s],
           "synonyms": [%s],
           "xrefs": [%s],
           "taxon": %s
        }',
        self$`id`,
        self$`label`,
        lapply(self$`categories`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`types`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`description`,
        lapply(self$`consider`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`deprecated`,
        lapply(self$`replaced_by`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`synonyms`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`xrefs`, function(x) paste(paste0('"', x, '"'), sep=",")),
        self$`taxon`$toJSON()
      )
    },
    fromJSONString = function(BioObjectJson) {
      BioObjectObject <- jsonlite::fromJSON(BioObjectJson)
      self$`id` <- BioObjectObject$`id`
      self$`label` <- BioObjectObject$`label`
      self$`categories` <- BioObjectObject$`categories`
      self$`types` <- BioObjectObject$`types`
      self$`description` <- BioObjectObject$`description`
      self$`consider` <- BioObjectObject$`consider`
      self$`deprecated` <- BioObjectObject$`deprecated`
      self$`replaced_by` <- BioObjectObject$`replaced_by`
      self$`synonyms` <- lapply(BioObjectObject$`synonyms`, function(x) SynonymPropertyValue$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`xrefs` <- BioObjectObject$`xrefs`
      TaxonObject <- Taxon$new()
      self$`taxon` <- TaxonObject$fromJSON(jsonlite::toJSON(BioObjectObject$taxon, auto_unbox = TRUE))
    }
  )
)