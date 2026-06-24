Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class PropertyVetoException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

java.beans.PropertyVetoException

All Implemented Interfaces:
:   `Serializable`

---

public class PropertyVetoException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

A PropertyVetoException is thrown when a proposed change to a
property represents an unacceptable value.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.beans.PropertyVetoException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyVetoException(String mess,
  PropertyChangeEvent evt)`

  Constructs a `PropertyVetoException` with a
  detailed message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `PropertyChangeEvent`

  `getPropertyChangeEvent()`

  Gets the vetoed `PropertyChangeEvent`.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PropertyVetoException

    public PropertyVetoException([String](../../../java.base/java/lang/String.md "class in java.lang") mess,
    [PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans") evt)

    Constructs a `PropertyVetoException` with a
    detailed message.

    Parameters:
    :   `mess` - Descriptive message
    :   `evt` - A PropertyChangeEvent describing the vetoed change.
* ## Method Details

  + ### getPropertyChangeEvent

    public [PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans") getPropertyChangeEvent()

    Gets the vetoed `PropertyChangeEvent`.

    Returns:
    :   A PropertyChangeEvent describing the vetoed change.