Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Interface Control

All Superinterfaces:
:   `Serializable`

All Known Implementing Classes:
:   `BasicControl`, `ManageReferralControl`, `PagedResultsControl`, `PagedResultsResponseControl`, `SortControl`, `SortResponseControl`

---

public interface Control
extends [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

This interface represents an LDAPv3 control as defined in
[RFC 2251](http://www.ietf.org/rfc/rfc2251.txt).

The LDAPv3 protocol uses controls to send and receive additional data
to affect the behavior of predefined operations.
Controls can be sent along with any LDAP operation to the server.
These are referred to as *request controls*. For example, a
"sort" control can be sent with an LDAP search operation to
request that the results be returned in a particular order.
Solicited and unsolicited controls can also be returned with
responses from the server. Such controls are referred to as
*response controls*. For example, an LDAP server might
define a special control to return change notifications.

This interface is used to represent both request and response controls.

Since:
:   1.3

See Also:
:   * [`ControlFactory`](ControlFactory.md "class in javax.naming.ldap")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final boolean`

  `CRITICAL`

  Indicates a critical control.

  `static final boolean`

  `NONCRITICAL`

  Indicates a non-critical control.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getEncodedValue()`

  Retrieves the ASN.1 BER encoded value of the LDAP control.

  `String`

  `getID()`

  Retrieves the object identifier assigned for the LDAP control.

  `boolean`

  `isCritical()`

  Determines the criticality of the LDAP control.

* ## Field Details

  + ### CRITICAL

    static final boolean CRITICAL

    Indicates a critical control.
    The value of this constant is `true`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.ldap.Control.CRITICAL)
  + ### NONCRITICAL

    static final boolean NONCRITICAL

    Indicates a non-critical control.
    The value of this constant is `false`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.ldap.Control.NONCRITICAL)
* ## Method Details

  + ### getID

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getID()

    Retrieves the object identifier assigned for the LDAP control.

    Returns:
    :   The non-null object identifier string.
  + ### isCritical

    boolean isCritical()

    Determines the criticality of the LDAP control.
    A critical control must not be ignored by the server.
    In other words, if the server receives a critical control
    that it does not support, regardless of whether the control
    makes sense for the operation, the operation will not be performed
    and an `OperationNotSupportedException` will be thrown.

    Returns:
    :   true if this control is critical; false otherwise.
  + ### getEncodedValue

    byte[] getEncodedValue()

    Retrieves the ASN.1 BER encoded value of the LDAP control.
    The result is the raw BER bytes including the tag and length of
    the control's value. It does not include the controls OID or criticality.
    Null is returned if the value is absent.

    Returns:
    :   A possibly null byte array representing the ASN.1 BER encoded
        value of the LDAP control.