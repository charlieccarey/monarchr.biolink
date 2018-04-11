# BioLink API
#
# API integration layer for linked biological objects.   __Source:__ https://github.com/biolink/biolink-api/
#
# OpenAPI spec version: 0.1.1
# 
# Generated by: https://github.com/swagger-api/swagger-codegen.git


#' Association Class
#'
#' @field subject 
#' @field object 
#' @field id 
#' @field slim 
#' @field provided_by 
#' @field subject_extensions 
#' @field publications 
#' @field qualifiers 
#' @field object_extensions 
#' @field evidence_graph 
#' @field negated 
#' @field evidence_types 
#' @field type 
#' @field relation 
#'
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
Association <- R6::R6Class(
  'Association',
  public = list(
    `subject` = NULL,
    `object` = NULL,
    `id` = NULL,
    `slim` = NULL,
    `provided_by` = NULL,
    `subject_extensions` = NULL,
    `publications` = NULL,
    `qualifiers` = NULL,
    `object_extensions` = NULL,
    `evidence_graph` = NULL,
    `negated` = NULL,
    `evidence_types` = NULL,
    `type` = NULL,
    `relation` = NULL,
    initialize = function(`subject`, `object`, `id`, `slim`, `provided_by`, `subject_extensions`, `publications`, `qualifiers`, `object_extensions`, `evidence_graph`, `negated`, `evidence_types`, `type`, `relation`){
      if (!missing(`subject`)) {
        stopifnot(R6::is.R6(`subject`))
        self$`subject` <- `subject`
      }
      if (!missing(`object`)) {
        stopifnot(R6::is.R6(`object`))
        self$`object` <- `object`
      }
      if (!missing(`id`)) {
        stopifnot(is.character(`id`), length(`id`) == 1)
        self$`id` <- `id`
      }
      if (!missing(`slim`)) {
        stopifnot(is.list(`slim`), length(`slim`) != 0)
        lapply(`slim`, function(x) stopifnot(is.character(x)))
        self$`slim` <- `slim`
      }
      if (!missing(`provided_by`)) {
        stopifnot(is.list(`provided_by`), length(`provided_by`) != 0)
        lapply(`provided_by`, function(x) stopifnot(is.character(x)))
        self$`provided_by` <- `provided_by`
      }
      if (!missing(`subject_extensions`)) {
        stopifnot(is.list(`subject_extensions`), length(`subject_extensions`) != 0)
        lapply(`subject_extensions`, function(x) stopifnot(R6::is.R6(x)))
        self$`subject_extensions` <- `subject_extensions`
      }
      if (!missing(`publications`)) {
        stopifnot(is.list(`publications`), length(`publications`) != 0)
        lapply(`publications`, function(x) stopifnot(R6::is.R6(x)))
        self$`publications` <- `publications`
      }
      if (!missing(`qualifiers`)) {
        stopifnot(is.list(`qualifiers`), length(`qualifiers`) != 0)
        lapply(`qualifiers`, function(x) stopifnot(is.character(x)))
        self$`qualifiers` <- `qualifiers`
      }
      if (!missing(`object_extensions`)) {
        stopifnot(is.list(`object_extensions`), length(`object_extensions`) != 0)
        lapply(`object_extensions`, function(x) stopifnot(R6::is.R6(x)))
        self$`object_extensions` <- `object_extensions`
      }
      if (!missing(`evidence_graph`)) {
        stopifnot(R6::is.R6(`evidence_graph`))
        self$`evidence_graph` <- `evidence_graph`
      }
      if (!missing(`negated`)) {
        self$`negated` <- `negated`
      }
      if (!missing(`evidence_types`)) {
        stopifnot(is.list(`evidence_types`), length(`evidence_types`) != 0)
        lapply(`evidence_types`, function(x) stopifnot(R6::is.R6(x)))
        self$`evidence_types` <- `evidence_types`
      }
      if (!missing(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!missing(`relation`)) {
        stopifnot(R6::is.R6(`relation`))
        self$`relation` <- `relation`
      }
    },
    toJSON = function() {
      AssociationObject <- list()
      if (!is.null(self$`subject`)) {
        AssociationObject[['subject']] <- self$`subject`$toJSON()
      }
      if (!is.null(self$`object`)) {
        AssociationObject[['object']] <- self$`object`$toJSON()
      }
      if (!is.null(self$`id`)) {
        AssociationObject[['id']] <- self$`id`
      }
      if (!is.null(self$`slim`)) {
        AssociationObject[['slim']] <- self$`slim`
      }
      if (!is.null(self$`provided_by`)) {
        AssociationObject[['provided_by']] <- self$`provided_by`
      }
      if (!is.null(self$`subject_extensions`)) {
        AssociationObject[['subject_extensions']] <- lapply(self$`subject_extensions`, function(x) x$toJSON())
      }
      if (!is.null(self$`publications`)) {
        AssociationObject[['publications']] <- lapply(self$`publications`, function(x) x$toJSON())
      }
      if (!is.null(self$`qualifiers`)) {
        AssociationObject[['qualifiers']] <- self$`qualifiers`
      }
      if (!is.null(self$`object_extensions`)) {
        AssociationObject[['object_extensions']] <- lapply(self$`object_extensions`, function(x) x$toJSON())
      }
      if (!is.null(self$`evidence_graph`)) {
        AssociationObject[['evidence_graph']] <- self$`evidence_graph`$toJSON()
      }
      if (!is.null(self$`negated`)) {
        AssociationObject[['negated']] <- self$`negated`
      }
      if (!is.null(self$`evidence_types`)) {
        AssociationObject[['evidence_types']] <- lapply(self$`evidence_types`, function(x) x$toJSON())
      }
      if (!is.null(self$`type`)) {
        AssociationObject[['type']] <- self$`type`
      }
      if (!is.null(self$`relation`)) {
        AssociationObject[['relation']] <- self$`relation`$toJSON()
      }

      AssociationObject
    },
    fromJSON = function(AssociationJson) {
      AssociationObject <- jsonlite::fromJSON(AssociationJson)
      if (!is.null(AssociationObject$`subject`)) {
        subjectObject <- BioObjectCore$new()
        subjectObject$fromJSON(jsonlite::toJSON(AssociationObject$subject, auto_unbox = TRUE))
        self$`subject` <- subjectObject
      }
      if (!is.null(AssociationObject$`object`)) {
        objectObject <- BioObjectCore$new()
        objectObject$fromJSON(jsonlite::toJSON(AssociationObject$object, auto_unbox = TRUE))
        self$`object` <- objectObject
      }
      if (!is.null(AssociationObject$`id`)) {
        self$`id` <- AssociationObject$`id`
      }
      if (!is.null(AssociationObject$`slim`)) {
        self$`slim` <- AssociationObject$`slim`
      }
      if (!is.null(AssociationObject$`provided_by`)) {
        self$`provided_by` <- AssociationObject$`provided_by`
      }
      if (!is.null(AssociationObject$`subject_extensions`)) {
        self$`subject_extensions` <- lapply(AssociationObject$`subject_extensions`, function(x) {
          subject_extensionsObject <- AnnotationExtension$new()
          subject_extensionsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          subject_extensionsObject
        })
      }
      if (!is.null(AssociationObject$`publications`)) {
        self$`publications` <- lapply(AssociationObject$`publications`, function(x) {
          publicationsObject <- Publication$new()
          publicationsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          publicationsObject
        })
      }
      if (!is.null(AssociationObject$`qualifiers`)) {
        self$`qualifiers` <- AssociationObject$`qualifiers`
      }
      if (!is.null(AssociationObject$`object_extensions`)) {
        self$`object_extensions` <- lapply(AssociationObject$`object_extensions`, function(x) {
          object_extensionsObject <- AnnotationExtension$new()
          object_extensionsObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          object_extensionsObject
        })
      }
      if (!is.null(AssociationObject$`evidence_graph`)) {
        evidence_graphObject <- Graph$new()
        evidence_graphObject$fromJSON(jsonlite::toJSON(AssociationObject$evidence_graph, auto_unbox = TRUE))
        self$`evidence_graph` <- evidence_graphObject
      }
      if (!is.null(AssociationObject$`negated`)) {
        self$`negated` <- AssociationObject$`negated`
      }
      if (!is.null(AssociationObject$`evidence_types`)) {
        self$`evidence_types` <- lapply(AssociationObject$`evidence_types`, function(x) {
          evidence_typesObject <- NamedObject$new()
          evidence_typesObject$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE))
          evidence_typesObject
        })
      }
      if (!is.null(AssociationObject$`type`)) {
        self$`type` <- AssociationObject$`type`
      }
      if (!is.null(AssociationObject$`relation`)) {
        relationObject <- RelationRef$new()
        relationObject$fromJSON(jsonlite::toJSON(AssociationObject$relation, auto_unbox = TRUE))
        self$`relation` <- relationObject
      }
    },
    toJSONString = function() {
       sprintf(
        '{
           "subject": %s,
           "object": %s,
           "id": %s,
           "slim": [%s],
           "provided_by": [%s],
           "subject_extensions": [%s],
           "publications": [%s],
           "qualifiers": [%s],
           "object_extensions": [%s],
           "evidence_graph": %s,
           "negated": %s,
           "evidence_types": [%s],
           "type": %s,
           "relation": %s
        }',
        self$`subject`$toJSON(),
        self$`object`$toJSON(),
        self$`id`,
        lapply(self$`slim`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`provided_by`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`subject_extensions`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`publications`, function(x) paste(x$toJSON(), sep=",")),
        lapply(self$`qualifiers`, function(x) paste(paste0('"', x, '"'), sep=",")),
        lapply(self$`object_extensions`, function(x) paste(x$toJSON(), sep=",")),
        self$`evidence_graph`$toJSON(),
        self$`negated`,
        lapply(self$`evidence_types`, function(x) paste(x$toJSON(), sep=",")),
        self$`type`,
        self$`relation`$toJSON()
      )
    },
    fromJSONString = function(AssociationJson) {
      AssociationObject <- jsonlite::fromJSON(AssociationJson)
      BioObjectCoreObject <- BioObjectCore$new()
      self$`subject` <- BioObjectCoreObject$fromJSON(jsonlite::toJSON(AssociationObject$subject, auto_unbox = TRUE))
      BioObjectCoreObject <- BioObjectCore$new()
      self$`object` <- BioObjectCoreObject$fromJSON(jsonlite::toJSON(AssociationObject$object, auto_unbox = TRUE))
      self$`id` <- AssociationObject$`id`
      self$`slim` <- AssociationObject$`slim`
      self$`provided_by` <- AssociationObject$`provided_by`
      self$`subject_extensions` <- lapply(AssociationObject$`subject_extensions`, function(x) AnnotationExtension$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`publications` <- lapply(AssociationObject$`publications`, function(x) Publication$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`qualifiers` <- AssociationObject$`qualifiers`
      self$`object_extensions` <- lapply(AssociationObject$`object_extensions`, function(x) AnnotationExtension$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      GraphObject <- Graph$new()
      self$`evidence_graph` <- GraphObject$fromJSON(jsonlite::toJSON(AssociationObject$evidence_graph, auto_unbox = TRUE))
      self$`negated` <- AssociationObject$`negated`
      self$`evidence_types` <- lapply(AssociationObject$`evidence_types`, function(x) NamedObject$new()$fromJSON(jsonlite::toJSON(x, auto_unbox = TRUE)))
      self$`type` <- AssociationObject$`type`
      RelationRefObject <- RelationRef$new()
      self$`relation` <- RelationRefObject$fromJSON(jsonlite::toJSON(AssociationObject$relation, auto_unbox = TRUE))
    }
  )
)
