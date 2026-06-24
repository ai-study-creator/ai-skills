Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class GuardedObject

[java.lang.Object](../lang/Object.md "class in java.lang")

java.security.GuardedObject

All Implemented Interfaces:
:   `Serializable`

---

public class GuardedObject
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

A GuardedObject is an object that is used to protect access to
another object.

A GuardedObject encapsulates a target object and a Guard object,
such that access to the target object is possible
only if the Guard object allows it.
Once an object is encapsulated by a GuardedObject,
access to that object is controlled by the `getObject`
method, which invokes the
`checkGuard` method on the Guard object that is
guarding access. If access is not allowed,
an exception is thrown.

Since:
:   1.2

See Also:
:   * [`Guard`](Guard.md "interface in java.security")
    * [`Permission`](Permission.md "class in java.security")
    * [Serialized Form](../../../serialized-form.md#java.security.GuardedObject)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GuardedObject(Object object,
  Guard guard)`

  Constructs a GuardedObject using the specified object and guard.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getObject()`

  Retrieves the guarded object, or throws an exception if access
  to the guarded object is denied by the guard.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### GuardedObject

    public GuardedObject([Object](../lang/Object.md "class in java.lang") object,
    [Guard](Guard.md "interface in java.security") guard)

    Constructs a GuardedObject using the specified object and guard.
    If the Guard object is `null`, then no restrictions will
    be placed on who can access the object.

    Parameters:
    :   `object` - the object to be guarded.
    :   `guard` - the Guard object that guards access to the object.
* ## Method Details

  + ### getObject

    public [Object](../lang/Object.md "class in java.lang") getObject()
    throws [SecurityException](../lang/SecurityException.md "class in java.lang")

    Retrieves the guarded object, or throws an exception if access
    to the guarded object is denied by the guard.

    Returns:
    :   the guarded object.

    Throws:
    :   `SecurityException` - if access to the guarded object is
        denied.