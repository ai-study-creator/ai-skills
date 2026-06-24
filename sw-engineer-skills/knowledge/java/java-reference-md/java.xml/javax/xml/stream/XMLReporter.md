Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Interface XMLReporter

---

public interface XMLReporter

This interface is used to report non-fatal errors.
Only warnings should be echoed through this interface.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `report(String message,
  String errorType,
  Object relatedInformation,
  Location location)`

  Report the desired message in an application specific format.

* ## Method Details

  + ### report

    void report([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") errorType,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") relatedInformation,
    [Location](Location.md "interface in javax.xml.stream") location)
    throws [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

    Report the desired message in an application specific format.
    Only warnings and non-fatal errors should be reported through
    this interface.
    Fatal errors should be thrown as XMLStreamException.

    Parameters:
    :   `message` - the error message
    :   `errorType` - an implementation defined error type
    :   `relatedInformation` - information related to the error, if available
    :   `location` - the location of the error, if available

    Throws:
    :   `XMLStreamException` - if an error occurs