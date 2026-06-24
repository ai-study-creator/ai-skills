Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RoleStatus

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.relation.RoleStatus

---

public class RoleStatus
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

This class describes the various problems which can be encountered when
accessing a role.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `LESS_THAN_MIN_ROLE_DEGREE`

  Problem type when trying to set a role value with less ObjectNames than
  the minimum expected cardinality.

  `static final int`

  `MORE_THAN_MAX_ROLE_DEGREE`

  Problem type when trying to set a role value with more ObjectNames than
  the maximum expected cardinality.

  `static final int`

  `NO_ROLE_WITH_NAME`

  Problem type when trying to access an unknown role.

  `static final int`

  `REF_MBEAN_NOT_REGISTERED`

  Problem type when trying to set a role value including the ObjectName of
  a MBean not registered in the MBean Server.

  `static final int`

  `REF_MBEAN_OF_INCORRECT_CLASS`

  Problem type when trying to set a role value including the ObjectName of
  a MBean not of the class expected for that role.

  `static final int`

  `ROLE_NOT_READABLE`

  Problem type when trying to read a non-readable attribute.

  `static final int`

  `ROLE_NOT_WRITABLE`

  Problem type when trying to update a non-writable attribute.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RoleStatus()`

  Deprecated, for removal: This API element is subject to removal in a future version.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static boolean`

  `isRoleStatus(int status)`

  Returns true if given value corresponds to a known role status, false
  otherwise.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### NO\_ROLE\_WITH\_NAME

    public static final int NO\_ROLE\_WITH\_NAME

    Problem type when trying to access an unknown role.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RoleStatus.NO_ROLE_WITH_NAME)
  + ### ROLE\_NOT\_READABLE

    public static final int ROLE\_NOT\_READABLE

    Problem type when trying to read a non-readable attribute.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RoleStatus.ROLE_NOT_READABLE)
  + ### ROLE\_NOT\_WRITABLE

    public static final int ROLE\_NOT\_WRITABLE

    Problem type when trying to update a non-writable attribute.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RoleStatus.ROLE_NOT_WRITABLE)
  + ### LESS\_THAN\_MIN\_ROLE\_DEGREE

    public static final int LESS\_THAN\_MIN\_ROLE\_DEGREE

    Problem type when trying to set a role value with less ObjectNames than
    the minimum expected cardinality.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RoleStatus.LESS_THAN_MIN_ROLE_DEGREE)
  + ### MORE\_THAN\_MAX\_ROLE\_DEGREE

    public static final int MORE\_THAN\_MAX\_ROLE\_DEGREE

    Problem type when trying to set a role value with more ObjectNames than
    the maximum expected cardinality.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RoleStatus.MORE_THAN_MAX_ROLE_DEGREE)
  + ### REF\_MBEAN\_OF\_INCORRECT\_CLASS

    public static final int REF\_MBEAN\_OF\_INCORRECT\_CLASS

    Problem type when trying to set a role value including the ObjectName of
    a MBean not of the class expected for that role.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RoleStatus.REF_MBEAN_OF_INCORRECT_CLASS)
  + ### REF\_MBEAN\_NOT\_REGISTERED

    public static final int REF\_MBEAN\_NOT\_REGISTERED

    Problem type when trying to set a role value including the ObjectName of
    a MBean not registered in the MBean Server.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RoleStatus.REF_MBEAN_NOT_REGISTERED)
* ## Constructor Details

  + ### RoleStatus

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="16",
    [forRemoval](../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
    public RoleStatus()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Do not call.
* ## Method Details

  + ### isRoleStatus

    public static boolean isRoleStatus(int status)

    Returns true if given value corresponds to a known role status, false
    otherwise.

    Parameters:
    :   `status` - a status code.

    Returns:
    :   true if this value is a known role status.