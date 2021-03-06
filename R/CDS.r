# BioLink API
#
# API integration layer for linked biological objects.   __Source:__ https://github.com/biolink/biolink-api/
#
# OpenAPI spec version: 0.1.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' CDS Class
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
#' @field genes 
#' @field sequence_features 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
CDS <- R6::R6Class(
  'CDS',
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
    `genes` = NULL,
    `sequence_features` = NULL,
    initialize = function(`id`, `label`, `categories`, `types`, `description`, `consider`, `deprecated`, `replaced_by`, `synonyms`, `xrefs`, `taxon`, `genes`, `sequence_features`){
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
      if (!missing(`genes`)) {
        stopifnot(is.list(`genes`), length(`genes`) != 0)
        lapply(`genes`, function(x) stopifnot(R6::is.R6(x)))
        self$`genes` <- `genes`
      }
      if (!missing(`sequence_features`)) {
        stopifnot(is.list(`sequence_features`), length(`sequence_features`) != 0)
        lapply(`sequence_features`, function(x) stopifnot(R6::is.R6(x)))
        self$`sequence_features` <- `sequence_features`
      }
    },
    toJSON = function() {
      CDSObject <- list()
      if (!is.null(self$`id`)) {
        CDSObject[['id']] <- self$`id`
      }
      if (!is.null(self$`label`)) {
        CDSObject[['label']] <- self$`label`
      }
      if (!is.null(self$`categories`)) {
        CDSObject[['categories']] <- self$`categories`
      }
      if (!is.null(self$`types`)) {
        CDSObject[['types']] <- self$`types`
      }
      if (!is.null(self$`description`)) {
        CDSObject[['description']] <- self$`description`
      }
      if (!is.null(self$`consider`)) {
        CDSObject[['consider']] <- self$`consider`
      }
      if (!is.null(self$`deprecated`)) {
        CDSObject[['deprecated']] <- self$`deprecated`
      }
      if (!is.null(self$`replaced_by`)) {
        CDSObject[['replaced_by']] <- self$`replaced_by`
      }
      if (!is.null(self$`synonyms`)) {
        CDSObject[['synonyms']] <- lapply(self$`synonyms`, function(x) x$toJSON())
      }
      if (!is.null(self$`xrefs`)) {
        CDSObject[['xrefs']] <- self$`xrefs`
      }
      if (!is.null(self$`taxon`)) {
        CDSObject[['taxon']] <- self$`taxon`$toJSON()
      }
      if (!is.null(self$`genes`)) {
        CDSObject[['genes']] <- lapply(self$`genes`, function(x) x$toJSON())
      }
      if (!is.null(self$`sequence_features`)) {
        CDSObject[['sequence_features']] <- lapply(self$`sequence_features`, function(x) x$toJSON())
      }

      CDSObject
    },
    fromJSON = function(CDSJson) {
      CDSObject <- jsonlite::fromJSON(CDSJson)
      if (!is.null(CDSObject$`id`)) {
        self$`id` <- CDSObject$`id`
      }
      if (!is.null(CDSObject$`label`)) {
        self$`label` <- CDSObject$`label`
      }
      if (!is.null(CDSObject$`categories`)) {
        self$`categories` <- CDSObject$`categories`
      }
      if (!is.null(CDSObject$`types`)) {
        self$`types` <- CDSObject$`types`
      }
      if (!is.null(CDSObject$`description`)) {
        self$`description` <- CDSObject$`description`
      }
      if (!is.null(CDSObject$`consider`)) {
        self$`consider` <- CDSObject$`consider`
      }
      if (!is.null(CDSObject$`deprecated`)) {
        self$`deprecated` <- CDSObject$`deprecated`
      }
      if (!is.null(CDSObject$`replaced_by`)) {
        self$`replaced_by` <- CDSObject$`replaced_by`
      }
      if (!is.null(CDSObject$`synonyms`)) {
        self$`synonyms` <- lapply(CDSObject$`synonyms`, function(x) {
          synonymsObject <- SynonymPropertyValue$new()
          synonymsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          synonymsObject
        })
      }
      if (!is.null(CDSObject$`xrefs`)) {
        self$`xrefs` <- CDSObject$`xrefs`
      }
      if (!is.null(CDSObject$`taxon`)) {
        taxonObject <- Taxon$new()
        taxonObject$fromJSON(jsonlite::toJSON(CDSObject$taxon, auto_unbox = TRUE))
        self$`taxon` <- taxonObject
      }
      if (!is.null(CDSObject$`genes`)) {
        self$`genes` <- lapply(CDSObject$`genes`, function(x) {
          genesObject <- EntityReference$new()
          genesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          genesObject
        })
      }
      if (!is.null(CDSObject$`sequence_features`)) {
        self$`sequence_features` <- lapply(CDSObject$`sequence_features`, function(x) {
          sequence_featuresObject <- SequenceFeature$new()
          sequence_featuresObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          sequence_featuresObject
        })
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
           "taxon": %s,
           "genes": [%s],
           "sequence_features": [%s]
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
        self$`taxon`$toJSON(),
        lapply(self$`genes`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`sequence_features`, function(x) paste(x$toJSON(), sep=","))
      )
    },
    fromJSONString = function(CDSJson) {
      CDSObject <- jsonlite::fromJSON(CDSJson)
      self$`id` <- CDSObject$`id`
      self$`label` <- CDSObject$`label`
      self$`categories` <- CDSObject$`categories`
      self$`types` <- CDSObject$`types`
      self$`description` <- CDSObject$`description`
      self$`consider` <- CDSObject$`consider`
      self$`deprecated` <- CDSObject$`deprecated`
      self$`replaced_by` <- CDSObject$`replaced_by`
      self$`synonyms` <- lapply(CDSObject$`synonyms`, function(x) SynonymPropertyValue$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`xrefs` <- CDSObject$`xrefs`
      TaxonObject <- Taxon$new()
      self$`taxon` <- TaxonObject$fromJSON(jsonlite::toJSON(CDSObject$taxon, auto_unbox = TRUE))
      self$`genes` <- lapply(CDSObject$`genes`, function(x) EntityReference$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`sequence_features` <- lapply(CDSObject$`sequence_features`, function(x) SequenceFeature$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
    }
  )
)
