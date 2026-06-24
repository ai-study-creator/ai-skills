Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class IntrospectionException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

java.beans.IntrospectionException

All Implemented Interfaces:
:   `Serializable`

---

public class IntrospectionException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown when an exception happens during Introspection.

Typical causes include not being able to map a string class name
to a Class object, not being able to resolve a string method name,
or specifying a method name that has the wrong type signature for
its intended use.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.beans.IntrospectionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IntrospectionException(String mess)`

  Constructs an `IntrospectionException` with a
  detailed message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IntrospectionException

    public IntrospectionException([String](../../../java.base/java/lang/String.md "class in java.lang") mess)

    Constructs an `IntrospectionException` with a
    detailed message.

    Parameters:
    :   `mess` - Descriptive message