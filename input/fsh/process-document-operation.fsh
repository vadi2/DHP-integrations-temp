Instance: process-document
InstanceOf: OperationDefinition
Title: "Process Document"
Description: "Process a clinical document bundle by extracting and creating individual resources, then archiving a complete self-contained copy for long-term persistence."
Usage: #definition

* url = "https://dhp.uz/fhir/integrations/OperationDefinition/process-document"
* name = "ProcessDocument"
* status = #draft
* kind = #operation
* affectsState = true
* code = #process-document
* system = true
* type = false
* instance = false

* inputProfile = "http://hl7.org/fhir/StructureDefinition/Bundle"

* parameter[+]
  * name = #document
  * use = #in
  * min = 1
  * max = "1"
  * documentation = "The document bundle to process. Must be a Bundle with type 'document' containing a Composition as the first entry. May contain references to existing server resources and new resources with urn:uuid identifiers."
  * type = #Bundle

* parameter[+]
  * name = #composition
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Reference to the created Composition resource."
  * type = #Reference

* parameter[+]
  * name = #created
  * use = #out
  * min = 0
  * max = "*"
  * documentation = "References to all resources created from the document bundle (excluding the Composition)."
  * type = #Reference

* parameter[+]
  * name = #archived
  * use = #out
  * min = 1
  * max = "1"
  * documentation = "Reference to the archived document bundle. This is a complete, self-contained copy where all references have been resolved and included."
  * type = #Reference
