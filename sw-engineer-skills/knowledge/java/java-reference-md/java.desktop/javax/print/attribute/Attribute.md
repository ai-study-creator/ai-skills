Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Interface Attribute

All Superinterfaces:
:   `Serializable`

All Known Subinterfaces:
:   `DocAttribute`, `PrintJobAttribute`, `PrintRequestAttribute`, `PrintServiceAttribute`, `SupportedValuesAttribute`

All Known Implementing Classes:
:   `Chromaticity`, `ColorSupported`, `Compression`, `Copies`, `CopiesSupported`, `DateTimeAtCompleted`, `DateTimeAtCreation`, `DateTimeAtProcessing`, `Destination`, `DialogOwner`, `DialogTypeSelection`, `DocumentName`, `Fidelity`, `Finishings`, `JobHoldUntil`, `JobImpressions`, `JobImpressionsCompleted`, `JobImpressionsSupported`, `JobKOctets`, `JobKOctetsProcessed`, `JobKOctetsSupported`, `JobMediaSheets`, `JobMediaSheetsCompleted`, `JobMediaSheetsSupported`, `JobMessageFromOperator`, `JobName`, `JobOriginatingUserName`, `JobPriority`, `JobPrioritySupported`, `JobSheets`, `JobState`, `JobStateReason`, `JobStateReasons`, `Media`, `MediaName`, `MediaPrintableArea`, `MediaSize`, `MediaSizeName`, `MediaTray`, `MultipleDocumentHandling`, `NumberOfDocuments`, `NumberOfInterveningJobs`, `NumberUp`, `NumberUpSupported`, `OrientationRequested`, `OutputDeviceAssigned`, `PageRanges`, `PagesPerMinute`, `PagesPerMinuteColor`, `PDLOverrideSupported`, `PresentationDirection`, `PrinterInfo`, `PrinterIsAcceptingJobs`, `PrinterLocation`, `PrinterMakeAndModel`, `PrinterMessageFromOperator`, `PrinterMoreInfo`, `PrinterMoreInfoManufacturer`, `PrinterName`, `PrinterResolution`, `PrinterState`, `PrinterStateReason`, `PrinterStateReasons`, `PrinterURI`, `PrintQuality`, `QueuedJobCount`, `ReferenceUriSchemesSupported`, `RequestingUserName`, `Severity`, `SheetCollate`, `Sides`

---

public interface Attribute
extends [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Interface `Attribute` is the base interface implemented by any and
every printing attribute class to indicate that the class represents a
printing attribute. All printing attributes are serializable.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value when it is added to an attribute set.

  `String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

* ## Method Details

  + ### getCategory

    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value when it is added to an attribute set.

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    *Note:* This method is intended to provide a default, nonlocalized
    string for the attribute's category. If two attribute objects return the
    same category from the `getCategory()` method, they should return
    the same name from the `getName()` method.

    Returns:
    :   attribute category name