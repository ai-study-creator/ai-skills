Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Interface MultiDocPrintJob

All Superinterfaces:
:   `DocPrintJob`

---

public interface MultiDocPrintJob
extends [DocPrintJob](DocPrintJob.md "interface in javax.print")

Obtained from a `MultiDocPrintService`, a `MultiDocPrintJob` can
print a specified collection of documents as a single print job with a set of
job attributes.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `print(MultiDoc multiDoc,
  PrintRequestAttributeSet attributes)`

  Print a `MultiDoc` with the specified job attributes.

  ### Methods inherited from interface javax.print.[DocPrintJob](DocPrintJob.md "interface in javax.print")

  `addPrintJobAttributeListener, addPrintJobListener, getAttributes, getPrintService, print, removePrintJobAttributeListener, removePrintJobListener`

* ## Method Details

  + ### print

    void print([MultiDoc](MultiDoc.md "interface in javax.print") multiDoc,
    [PrintRequestAttributeSet](attribute/PrintRequestAttributeSet.md "interface in javax.print.attribute") attributes)
    throws [PrintException](PrintException.md "class in javax.print")

    Print a `MultiDoc` with the specified job attributes. This method
    should only be called once for a given print job. Calling it again will
    not result in a new job being spooled to the printer. The service
    implementation will define policy for service interruption and recovery.
    Application clients which want to monitor the success or failure should
    register a `PrintJobListener`.

    Parameters:
    :   `multiDoc` - the documents to be printed. ALL must be a flavor
        supported by the PrintJob & PrintService.
    :   `attributes` - the job attributes to be applied to this print job. If
        this parameter is `null` then the default attributes are
        used.

    Throws:
    :   `PrintException` - the exception additionally may implement an
        interfaces which more precisely describes the cause of the
        exception
        - `FlavorException`. If the document has a flavor not
          supported by this print job.- `AttributeException`. If one or more of the
            attributes are not valid for this print job.