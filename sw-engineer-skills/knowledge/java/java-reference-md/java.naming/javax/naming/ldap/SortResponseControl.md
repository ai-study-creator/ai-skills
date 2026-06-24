Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class SortResponseControl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.ldap.BasicControl](BasicControl.md "class in javax.naming.ldap")

javax.naming.ldap.SortResponseControl

All Implemented Interfaces:
:   `Serializable`, `Control`

---

public final class SortResponseControl
extends [BasicControl](BasicControl.md "class in javax.naming.ldap")

Indicates whether the requested sort of search results was successful or not.
When the result code indicates success then the results have been sorted as
requested. Otherwise the sort was unsuccessful and additional details
regarding the cause of the error may have been provided by the server.

The code sample in [`SortControl`](SortControl.md "class in javax.naming.ldap") shows how this class may be used.

This class implements the LDAPv3 Response Control for server-side sorting
as defined in
[RFC 2891](http://www.ietf.org/rfc/rfc2891.txt).
The control's value has the following ASN.1 definition:

```
     SortResult ::= SEQUENCE {
        sortResult  ENUMERATED {
            success                   (0), -- results are sorted
            operationsError           (1), -- server internal failure
            timeLimitExceeded         (3), -- timelimit reached before
                                           -- sorting was completed
            strongAuthRequired        (8), -- refused to return sorted
                                           -- results via insecure
                                           -- protocol
            adminLimitExceeded       (11), -- too many matching entries
                                           -- for the server to sort
            noSuchAttribute          (16), -- unrecognized attribute
                                           -- type in sort key
            inappropriateMatching    (18), -- unrecognized or inappro-
                                           -- priate matching rule in
                                           -- sort key
            insufficientAccessRights (50), -- refused to return sorted
                                           -- results to this client
            busy                     (51), -- too busy to process
            unwillingToPerform       (53), -- unable to sort
            other                    (80)
            },
      attributeType [0] AttributeType OPTIONAL }
```

Since:
:   1.5

See Also:
:   * [`SortControl`](SortControl.md "class in javax.naming.ldap")
    * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.SortResponseControl)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `OID`

  The server-side sort response control's assigned object identifier
  is 1.2.840.113556.1.4.474.

  ### Fields inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `criticality, id, value`

  ### Fields inherited from interface javax.naming.ldap.[Control](Control.md "interface in javax.naming.ldap")

  `CRITICAL, NONCRITICAL`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SortResponseControl(String id,
  boolean criticality,
  byte[] value)`

  Constructs a control to indicate the outcome of a sort request.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAttributeID()`

  Retrieves the ID of the attribute that caused the sort to fail.

  `NamingException`

  `getException()`

  Retrieves the NamingException appropriate for the result code.

  `int`

  `getResultCode()`

  Retrieves the LDAP result code of the sort operation.

  `boolean`

  `isSorted()`

  Determines if the search results have been successfully sorted.

  ### Methods inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `getEncodedValue, getID, isCritical`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OID

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OID

    The server-side sort response control's assigned object identifier
    is 1.2.840.113556.1.4.474.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.ldap.SortResponseControl.OID)
* ## Constructor Details

  + ### SortResponseControl

    public SortResponseControl([String](../../../../java.base/java/lang/String.md "class in java.lang") id,
    boolean criticality,
    byte[] value)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a control to indicate the outcome of a sort request.

    Parameters:
    :   `id` - The control's object identifier string.
    :   `criticality` - The control's criticality.
    :   `value` - The control's ASN.1 BER encoded value.
        It is not cloned - any changes to value
        will affect the contents of the control.

    Throws:
    :   `IOException` - if an error is encountered
        while decoding the control's value.
* ## Method Details

  + ### isSorted

    public boolean isSorted()

    Determines if the search results have been successfully sorted.
    If an error occurred during sorting a NamingException is thrown.

    Returns:
    :   true if the search results have been sorted.
  + ### getResultCode

    public int getResultCode()

    Retrieves the LDAP result code of the sort operation.

    Returns:
    :   The result code. A zero value indicates success.
  + ### getAttributeID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getAttributeID()

    Retrieves the ID of the attribute that caused the sort to fail.
    Returns null if no ID was returned by the server.

    Returns:
    :   The possibly null ID of the bad attribute.
  + ### getException

    public [NamingException](../NamingException.md "class in javax.naming") getException()

    Retrieves the NamingException appropriate for the result code.

    Returns:
    :   A NamingException or null if the result code indicates
        success.