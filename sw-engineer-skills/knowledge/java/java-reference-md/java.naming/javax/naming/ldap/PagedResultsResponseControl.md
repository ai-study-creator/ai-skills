Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class PagedResultsResponseControl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.ldap.BasicControl](BasicControl.md "class in javax.naming.ldap")

javax.naming.ldap.PagedResultsResponseControl

All Implemented Interfaces:
:   `Serializable`, `Control`

---

public final class PagedResultsResponseControl
extends [BasicControl](BasicControl.md "class in javax.naming.ldap")

Indicates the end of a batch of search results.
Contains an estimate of the total number of entries in the result set
and an opaque cookie. The cookie must be supplied to the next search
operation in order to get the next batch of results.

The code sample in [`PagedResultsControl`](PagedResultsControl.md "class in javax.naming.ldap") shows how this class may
be used.

This class implements the LDAPv3 Response Control for
paged-results as defined in
[RFC 2696](http://www.ietf.org/rfc/rfc2696).
The control's value has the following ASN.1 definition:

```
     realSearchControlValue ::= SEQUENCE {
         size      INTEGER (0..maxInt),
                           -- requested page size from client
                           -- result set size estimate from server
         cookie    OCTET STRING
     }
```

Since:
:   1.5

See Also:
:   * [`PagedResultsControl`](PagedResultsControl.md "class in javax.naming.ldap")
    * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.PagedResultsResponseControl)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `OID`

  The paged-results response control's assigned object identifier
  is 1.2.840.113556.1.4.319.

  ### Fields inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `criticality, id, value`

  ### Fields inherited from interface javax.naming.ldap.[Control](Control.md "interface in javax.naming.ldap")

  `CRITICAL, NONCRITICAL`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PagedResultsResponseControl(String id,
  boolean criticality,
  byte[] value)`

  Constructs a paged-results response control.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getCookie()`

  Retrieves the server-generated cookie.

  `int`

  `getResultSize()`

  Retrieves (an estimate of) the number of entries in the search result.

  ### Methods inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `getEncodedValue, getID, isCritical`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OID

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OID

    The paged-results response control's assigned object identifier
    is 1.2.840.113556.1.4.319.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.ldap.PagedResultsResponseControl.OID)
* ## Constructor Details

  + ### PagedResultsResponseControl

    public PagedResultsResponseControl([String](../../../../java.base/java/lang/String.md "class in java.lang") id,
    boolean criticality,
    byte[] value)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a paged-results response control.

    Parameters:
    :   `id` - The control's object identifier string.
    :   `criticality` - The control's criticality.
    :   `value` - The control's ASN.1 BER encoded value.
        It is not cloned - any changes to value
        will affect the contents of the control.

    Throws:
    :   `IOException` - If an error was encountered while decoding
        the control's value.
* ## Method Details

  + ### getResultSize

    public int getResultSize()

    Retrieves (an estimate of) the number of entries in the search result.

    Returns:
    :   The number of entries in the search result, or zero if unknown.
  + ### getCookie

    public byte[] getCookie()

    Retrieves the server-generated cookie. Null is returned when there are
    no more entries for the server to return.

    Returns:
    :   A possibly null server-generated cookie. It is not cloned - any
        changes to the cookie will update the control's state and thus
        are not recommended.