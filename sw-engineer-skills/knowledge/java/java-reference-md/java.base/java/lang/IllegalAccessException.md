Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class IllegalAccessException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

java.lang.IllegalAccessException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalAccessException
extends [ReflectiveOperationException](ReflectiveOperationException.md "class in java.lang")

An IllegalAccessException is thrown when an application tries
to reflectively create an instance (other than an array),
set or get a field, or invoke a method, but the currently
executing method does not have access to the definition of
the specified class, field, method or constructor.

Since:
:   1.0

See Also:
:   * [`Class.newInstance()`](Class.md#newInstance())
    * [`Field.set(Object, Object)`](reflect/Field.md#set(java.lang.Object,java.lang.Object))
    * [`Field.setBoolean(Object, boolean)`](reflect/Field.md#setBoolean(java.lang.Object,boolean))
    * [`Field.setByte(Object, byte)`](reflect/Field.md#setByte(java.lang.Object,byte))
    * [`Field.setShort(Object, short)`](reflect/Field.md#setShort(java.lang.Object,short))
    * [`Field.setChar(Object, char)`](reflect/Field.md#setChar(java.lang.Object,char))
    * [`Field.setInt(Object, int)`](reflect/Field.md#setInt(java.lang.Object,int))
    * [`Field.setLong(Object, long)`](reflect/Field.md#setLong(java.lang.Object,long))
    * [`Field.setFloat(Object, float)`](reflect/Field.md#setFloat(java.lang.Object,float))
    * [`Field.setDouble(Object, double)`](reflect/Field.md#setDouble(java.lang.Object,double))
    * [`Field.get(Object)`](reflect/Field.md#get(java.lang.Object))
    * [`Field.getBoolean(Object)`](reflect/Field.md#getBoolean(java.lang.Object))
    * [`Field.getByte(Object)`](reflect/Field.md#getByte(java.lang.Object))
    * [`Field.getShort(Object)`](reflect/Field.md#getShort(java.lang.Object))
    * [`Field.getChar(Object)`](reflect/Field.md#getChar(java.lang.Object))
    * [`Field.getInt(Object)`](reflect/Field.md#getInt(java.lang.Object))
    * [`Field.getLong(Object)`](reflect/Field.md#getLong(java.lang.Object))
    * [`Field.getFloat(Object)`](reflect/Field.md#getFloat(java.lang.Object))
    * [`Field.getDouble(Object)`](reflect/Field.md#getDouble(java.lang.Object))
    * [`Method.invoke(Object, Object[])`](reflect/Method.md#invoke(java.lang.Object,java.lang.Object...))
    * [`Constructor.newInstance(Object[])`](reflect/Constructor.md#newInstance(java.lang.Object...))
    * [Serialized Form](../../../serialized-form.md#java.lang.IllegalAccessException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalAccessException()`

  Constructs an `IllegalAccessException` without a
  detail message.

  `IllegalAccessException(String s)`

  Constructs an `IllegalAccessException` with a detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalAccessException

    public IllegalAccessException()

    Constructs an `IllegalAccessException` without a
    detail message.
  + ### IllegalAccessException

    public IllegalAccessException([String](String.md "class in java.lang") s)

    Constructs an `IllegalAccessException` with a detail message.

    Parameters:
    :   `s` - the detail message.