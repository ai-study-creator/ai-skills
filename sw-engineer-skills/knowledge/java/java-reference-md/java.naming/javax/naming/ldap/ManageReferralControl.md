Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class ManageReferralControl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.ldap.BasicControl](BasicControl.md "class in javax.naming.ldap")

javax.naming.ldap.ManageReferralControl

All Implemented Interfaces:
:   `Serializable`, `Control`

---

public final class ManageReferralControl
extends [BasicControl](BasicControl.md "class in javax.naming.ldap")

Requests that referral and other special LDAP objects be manipulated
as normal LDAP objects. It enables the requestor to interrogate or
update such objects.

This class implements the LDAPv3 Request Control for ManageDsaIT
as defined in
[RFC 3296](http://www.ietf.org/rfc/rfc3296.txt).
The control has no control value.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.ManageReferralControl)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `OID`

  The ManageReferral control's assigned object identifier
  is 2.16.840.1.113730.3.4.2.

  ### Fields inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `criticality, id, value`

  ### Fields inherited from interface javax.naming.ldap.[Control](Control.md "interface in javax.naming.ldap")

  `CRITICAL, NONCRITICAL`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ManageReferralControl()`

  Constructs a critical ManageReferral control.

  `ManageReferralControl(boolean criticality)`

  Constructs a ManageReferral control.
* ## Method Summary

  ### Methods inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `getEncodedValue, getID, isCritical`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OID

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OID

    The ManageReferral control's assigned object identifier
    is 2.16.840.1.113730.3.4.2.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.ldap.ManageReferralControl.OID)
* ## Constructor Details

  + ### ManageReferralControl

    public ManageReferralControl()

    Constructs a critical ManageReferral control.
  + ### ManageReferralControl

    public ManageReferralControl(boolean criticality)

    Constructs a ManageReferral control.

    Parameters:
    :   `criticality` - The control's criticality setting.