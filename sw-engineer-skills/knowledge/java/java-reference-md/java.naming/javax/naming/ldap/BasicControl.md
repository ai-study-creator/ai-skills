Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class BasicControl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.ldap.BasicControl

All Implemented Interfaces:
:   `Serializable`, `Control`

Direct Known Subclasses:
:   `ManageReferralControl`, `PagedResultsControl`, `PagedResultsResponseControl`, `SortControl`, `SortResponseControl`

---

public class BasicControl
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Control](Control.md "interface in javax.naming.ldap")

This class provides a basic implementation of the `Control`
interface. It represents an LDAPv3 Control as defined in
[RFC 2251](http://www.ietf.org/rfc/rfc2251.txt).

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.BasicControl)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `criticality`

  The control's criticality.

  `protected String`

  `id`

  The control's object identifier string.

  `protected byte[]`

  `value`

  The control's ASN.1 BER encoded value.

  ### Fields inherited from interface javax.naming.ldap.[Control](Control.md "interface in javax.naming.ldap")

  `CRITICAL, NONCRITICAL`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicControl(String id)`

  Constructs a non-critical control.

  `BasicControl(String id,
  boolean criticality,
  byte[] value)`

  Constructs a control using the supplied arguments.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getEncodedValue()`

  Retrieves the control's ASN.1 BER encoded value.

  `String`

  `getID()`

  Retrieves the control's object identifier string.

  `boolean`

  `isCritical()`

  Determines the control's criticality.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### id

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") id

    The control's object identifier string.
  + ### criticality

    protected boolean criticality

    The control's criticality.
  + ### value

    protected byte[] value

    The control's ASN.1 BER encoded value.
* ## Constructor Details

  + ### BasicControl

    public BasicControl([String](../../../../java.base/java/lang/String.md "class in java.lang") id)

    Constructs a non-critical control.

    Parameters:
    :   `id` - The control's object identifier string.
  + ### BasicControl

    public BasicControl([String](../../../../java.base/java/lang/String.md "class in java.lang") id,
    boolean criticality,
    byte[] value)

    Constructs a control using the supplied arguments.

    Parameters:
    :   `id` - The control's object identifier string.
    :   `criticality` - The control's criticality.
    :   `value` - The control's ASN.1 BER encoded value.
        It is not cloned - any changes to value
        will affect the contents of the control.
        It may be null.
* ## Method Details

  + ### getID

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getID()

    Retrieves the control's object identifier string.

    Specified by:
    :   `getID` in interface `Control`

    Returns:
    :   The non-null object identifier string.
  + ### isCritical

    public boolean isCritical()

    Determines the control's criticality.

    Specified by:
    :   `isCritical` in interface `Control`

    Returns:
    :   true if the control is critical; false otherwise.
  + ### getEncodedValue

    public byte[] getEncodedValue()

    Retrieves the control's ASN.1 BER encoded value.
    The result includes the BER tag and length for the control's value but
    does not include the control's object identifier and criticality setting.

    Specified by:
    :   `getEncodedValue` in interface `Control`

    Returns:
    :   A possibly null byte array representing the control's
        ASN.1 BER encoded value. It is not cloned - any changes to the
        returned value will affect the contents of the control.