Module [java.management](../../../module-summary.md)

Package [javax.management.relation](package-summary.md)

# Class RoleInfo

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.relation.RoleInfo

All Implemented Interfaces:
:   `Serializable`

---

public class RoleInfo
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

A RoleInfo object summarises a role in a relation type.

The **serialVersionUID** of this class is `2504952983494636987L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.relation.RoleInfo)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ROLE_CARDINALITY_INFINITY`

  To specify an unlimited cardinality.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RoleInfo(String roleName,
  String mbeanClassName)`

  Constructor.

  `RoleInfo(String roleName,
  String mbeanClassName,
  boolean read,
  boolean write)`

  Constructor.

  `RoleInfo(String roleName,
  String mbeanClassName,
  boolean read,
  boolean write,
  int min,
  int max,
  String descr)`

  Constructor.

  `RoleInfo(RoleInfo roleInfo)`

  Copy constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `checkMaxDegree(int value)`

  Returns true if the `value` parameter is lower than or equal to
  the expected maximum degree, false otherwise.

  `boolean`

  `checkMinDegree(int value)`

  Returns true if the `value` parameter is greater than or equal to
  the expected minimum degree, false otherwise.

  `String`

  `getDescription()`

  Returns description text for the role.

  `int`

  `getMaxDegree()`

  Returns maximum degree for corresponding role reference.

  `int`

  `getMinDegree()`

  Returns minimum degree for corresponding role reference.

  `String`

  `getName()`

  Returns the name of the role.

  `String`

  `getRefMBeanClassName()`

  Returns name of type of MBean expected to be referenced in
  corresponding role.

  `boolean`

  `isReadable()`

  Returns read access mode for the role (true if it is readable).

  `boolean`

  `isWritable()`

  Returns write access mode for the role (true if it is writable).

  `String`

  `toString()`

  Returns a string describing the role info.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ROLE\_CARDINALITY\_INFINITY

    public static final int ROLE\_CARDINALITY\_INFINITY

    To specify an unlimited cardinality.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.relation.RoleInfo.ROLE_CARDINALITY_INFINITY)
* ## Constructor Details

  + ### RoleInfo

    public RoleInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") mbeanClassName,
    boolean read,
    boolean write,
    int min,
    int max,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") descr)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [InvalidRoleInfoException](InvalidRoleInfoException.md "class in javax.management.relation"),
    [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"),
    [NotCompliantMBeanException](../NotCompliantMBeanException.md "class in javax.management")

    Constructor.

    Parameters:
    :   `roleName` - name of the role.
    :   `mbeanClassName` - name of the class of MBean(s) expected to
        be referenced in corresponding role. If an MBean *M* is in
        this role, then the MBean server must return true for
        [`isInstanceOf(M, mbeanClassName)`](../MBeanServer.md#isInstanceOf(javax.management.ObjectName,java.lang.String)).
    :   `read` - flag to indicate if the corresponding role
        can be read
    :   `write` - flag to indicate if the corresponding role
        can be set
    :   `min` - minimum degree for role, i.e. minimum number of
        MBeans to provide in corresponding role
        Must be less than or equal to `max`.
        (ROLE\_CARDINALITY\_INFINITY for unlimited)
    :   `max` - maximum degree for role, i.e. maximum number of
        MBeans to provide in corresponding role
        Must be greater than or equal to `min`
        (ROLE\_CARDINALITY\_INFINITY for unlimited)
    :   `descr` - description of the role (can be null)

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `InvalidRoleInfoException` - if the minimum degree is
        greater than the maximum degree.
    :   `ClassNotFoundException` - As of JMX 1.2, this exception
        can no longer be thrown. It is retained in the declaration of
        this class for compatibility with existing code.
    :   `NotCompliantMBeanException` - if the class mbeanClassName
        is not a MBean class.
  + ### RoleInfo

    public RoleInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") mbeanClassName,
    boolean read,
    boolean write)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"),
    [NotCompliantMBeanException](../NotCompliantMBeanException.md "class in javax.management")

    Constructor.

    Parameters:
    :   `roleName` - name of the role
    :   `mbeanClassName` - name of the class of MBean(s) expected to
        be referenced in corresponding role. If an MBean *M* is in
        this role, then the MBean server must return true for
        [`isInstanceOf(M, mbeanClassName)`](../MBeanServer.md#isInstanceOf(javax.management.ObjectName,java.lang.String)).
    :   `read` - flag to indicate if the corresponding role
        can be read
    :   `write` - flag to indicate if the corresponding role
        can be set

        Minimum and maximum degrees defaulted to 1.

        Description of role defaulted to null.

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `ClassNotFoundException` - As of JMX 1.2, this exception
        can no longer be thrown. It is retained in the declaration of
        this class for compatibility with existing code.
    :   `NotCompliantMBeanException` - As of JMX 1.2, this
        exception can no longer be thrown. It is retained in the
        declaration of this class for compatibility with existing code.
  + ### RoleInfo

    public RoleInfo([String](../../../../java.base/java/lang/String.md "class in java.lang") roleName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") mbeanClassName)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"),
    [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"),
    [NotCompliantMBeanException](../NotCompliantMBeanException.md "class in javax.management")

    Constructor.

    Parameters:
    :   `roleName` - name of the role
    :   `mbeanClassName` - name of the class of MBean(s) expected to
        be referenced in corresponding role. If an MBean *M* is in
        this role, then the MBean server must return true for
        [`isInstanceOf(M, mbeanClassName)`](../MBeanServer.md#isInstanceOf(javax.management.ObjectName,java.lang.String)).

        IsReadable and IsWritable defaulted to true.

        Minimum and maximum degrees defaulted to 1.

        Description of role defaulted to null.

    Throws:
    :   `IllegalArgumentException` - if null parameter
    :   `ClassNotFoundException` - As of JMX 1.2, this exception
        can no longer be thrown. It is retained in the declaration of
        this class for compatibility with existing code.
    :   `NotCompliantMBeanException` - As of JMX 1.2, this
        exception can no longer be thrown. It is retained in the
        declaration of this class for compatibility with existing code.
  + ### RoleInfo

    public RoleInfo([RoleInfo](RoleInfo.md "class in javax.management.relation") roleInfo)
    throws [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Copy constructor.

    Parameters:
    :   `roleInfo` - the `RoleInfo` instance to be copied.

    Throws:
    :   `IllegalArgumentException` - if null parameter
* ## Method Details

  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of the role.

    Returns:
    :   the name of the role.
  + ### isReadable

    public boolean isReadable()

    Returns read access mode for the role (true if it is readable).

    Returns:
    :   true if the role is readable.
  + ### isWritable

    public boolean isWritable()

    Returns write access mode for the role (true if it is writable).

    Returns:
    :   true if the role is writable.
  + ### getDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns description text for the role.

    Returns:
    :   the description of the role.
  + ### getMinDegree

    public int getMinDegree()

    Returns minimum degree for corresponding role reference.

    Returns:
    :   the minimum degree.
  + ### getMaxDegree

    public int getMaxDegree()

    Returns maximum degree for corresponding role reference.

    Returns:
    :   the maximum degree.
  + ### getRefMBeanClassName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRefMBeanClassName()

    Returns name of type of MBean expected to be referenced in
    corresponding role.

    Returns:
    :   the name of the referenced type.
  + ### checkMinDegree

    public boolean checkMinDegree(int value)

    Returns true if the `value` parameter is greater than or equal to
    the expected minimum degree, false otherwise.

    Parameters:
    :   `value` - the value to be checked

    Returns:
    :   true if greater than or equal to minimum degree, false otherwise.
  + ### checkMaxDegree

    public boolean checkMaxDegree(int value)

    Returns true if the `value` parameter is lower than or equal to
    the expected maximum degree, false otherwise.

    Parameters:
    :   `value` - the value to be checked

    Returns:
    :   true if lower than or equal to maximum degree, false otherwise.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string describing the role info.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a description of the role info.