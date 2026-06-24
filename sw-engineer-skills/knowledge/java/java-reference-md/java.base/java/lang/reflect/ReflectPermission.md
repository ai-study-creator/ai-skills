Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class ReflectPermission

[java.lang.Object](../Object.md "class in java.lang")

[java.security.Permission](../../security/Permission.md "class in java.security")

[java.security.BasicPermission](../../security/BasicPermission.md "class in java.security")

java.lang.reflect.ReflectPermission

All Implemented Interfaces:
:   `Serializable`, `Guard`

---

public final class ReflectPermission
extends [BasicPermission](../../security/BasicPermission.md "class in java.security")

The Permission class for reflective operations.

The following table
provides a summary description of what the permission allows,
and discusses the risks of granting code the permission.

Table shows permission target name, what the permission allows, and associated risks

| Permission Target Name | What the Permission Allows | Risks of Allowing this Permission |
| --- | --- | --- |
| suppressAccessChecks | ability to suppress the standard Java language access checks on fields and methods in a class; allow access not only public members but also allow access to default (package) access, protected, and private members. | This is dangerous in that information (possibly confidential) and methods normally unavailable would be accessible to malicious code. |
| newProxyInPackage.{package name} | ability to create a proxy instance in the specified package of which the non-public interface that the proxy class implements. | This gives code access to classes in packages to which it normally does not have access and the dynamic proxy class is in the system protection domain. Malicious code may use these classes to help in its attempt to compromise security in the system. |

Since:
:   1.2

See Also:
:   * [`Permission`](../../security/Permission.md "class in java.security")
    * [`BasicPermission`](../../security/BasicPermission.md "class in java.security")
    * [`AccessibleObject`](AccessibleObject.md "class in java.lang.reflect")
    * [`Field.get(java.lang.Object)`](Field.md#get(java.lang.Object))
    * [`Field.set(java.lang.Object, java.lang.Object)`](Field.md#set(java.lang.Object,java.lang.Object))
    * [`Method.invoke(java.lang.Object, java.lang.Object...)`](Method.md#invoke(java.lang.Object,java.lang.Object...))
    * [`Constructor.newInstance(java.lang.Object...)`](Constructor.md#newInstance(java.lang.Object...))
    * [`Proxy.newProxyInstance(java.lang.ClassLoader, java.lang.Class<?>[], java.lang.reflect.InvocationHandler)`](Proxy.md#newProxyInstance(java.lang.ClassLoader,java.lang.Class%5B%5D,java.lang.reflect.InvocationHandler))
    * [Serialized Form](../../../../serialized-form.md#java.lang.reflect.ReflectPermission)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ReflectPermission(String name)`

  Constructs a ReflectPermission with the specified name.

  `ReflectPermission(String name,
  String actions)`

  Constructs a ReflectPermission with the specified name and actions.
* ## Method Summary

  ### Methods inherited from class java.security.[BasicPermission](../../security/BasicPermission.md "class in java.security")

  `equals, getActions, hashCode, implies, newPermissionCollection`

  ### Methods inherited from class java.security.[Permission](../../security/Permission.md "class in java.security")

  `checkGuard, getName, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ReflectPermission

    public ReflectPermission([String](../String.md "class in java.lang") name)

    Constructs a ReflectPermission with the specified name.

    Parameters:
    :   `name` - the name of the ReflectPermission

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is empty.
  + ### ReflectPermission

    public ReflectPermission([String](../String.md "class in java.lang") name,
    [String](../String.md "class in java.lang") actions)

    Constructs a ReflectPermission with the specified name and actions.
    The actions should be null; they are ignored.

    Parameters:
    :   `name` - the name of the ReflectPermission
    :   `actions` - should be null

    Throws:
    :   `NullPointerException` - if `name` is `null`.
    :   `IllegalArgumentException` - if `name` is empty.