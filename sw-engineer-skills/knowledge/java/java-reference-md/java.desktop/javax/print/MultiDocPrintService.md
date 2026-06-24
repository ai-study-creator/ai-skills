Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Interface MultiDocPrintService

All Superinterfaces:
:   `PrintService`

---

public interface MultiDocPrintService
extends [PrintService](PrintService.md "interface in javax.print")

Interface `MultiPrintService` is the factory for a
`MultiDocPrintJob`. A `MultiPrintService` describes the
capabilities of a printer and can be queried regarding a printer's supported
attributes.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `MultiDocPrintJob`

  `createMultiDocPrintJob()`

  Create a job which can print a multiDoc.

  ### Methods inherited from interface javax.print.[PrintService](PrintService.md "interface in javax.print")

  `addPrintServiceAttributeListener, createPrintJob, equals, getAttribute, getAttributes, getDefaultAttributeValue, getName, getServiceUIFactory, getSupportedAttributeCategories, getSupportedAttributeValues, getSupportedDocFlavors, getUnsupportedAttributes, hashCode, isAttributeCategorySupported, isAttributeValueSupported, isDocFlavorSupported, removePrintServiceAttributeListener`

* ## Method Details

  + ### createMultiDocPrintJob

    [MultiDocPrintJob](MultiDocPrintJob.md "interface in javax.print") createMultiDocPrintJob()

    Create a job which can print a multiDoc.

    Returns:
    :   a `MultiDocPrintJob`