Module [java.xml](../../../module-summary.md)

Package [javax.xml.transform](package-summary.md)

# Interface Source

All Known Implementing Classes:
:   `DOMSource`, `SAXSource`, `StAXSource`, `StreamSource`

---

public interface Source

An object that implements this interface contains the information
needed to act as source input (XML source or transformation instructions).

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `String`

  `getSystemId()`

  Get the system identifier that was set with setSystemId.

  `default boolean`

  `isEmpty()`

  Indicates whether the `Source` object is empty.

  `void`

  `setSystemId(String systemId)`

  Set the system identifier for this Source.

* ## Method Details

  + ### setSystemId

    void setSystemId([String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Set the system identifier for this Source.

    The system identifier is optional if the source does not
    get its data from a URL, but it may still be useful to provide one.
    The application can use a system identifier, for example, to resolve
    relative URIs and to include in error messages and warnings.

    Parameters:
    :   `systemId` - The system identifier as a URL string.
  + ### getSystemId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Get the system identifier that was set with setSystemId.

    Returns:
    :   The system identifier that was set with setSystemId, or null
        if setSystemId was not called.
  + ### isEmpty

    default boolean isEmpty()

    Indicates whether the `Source` object is empty. Empty means
    that there is no input available from this Source.

    Returns:
    :   true if the `Source` object is empty, false otherwise