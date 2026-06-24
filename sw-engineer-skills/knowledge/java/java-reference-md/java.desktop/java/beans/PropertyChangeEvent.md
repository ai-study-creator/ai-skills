Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class PropertyChangeEvent

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

java.beans.PropertyChangeEvent

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `IndexedPropertyChangeEvent`

---

public class PropertyChangeEvent
extends [EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

A "PropertyChange" event gets delivered whenever a bean changes a "bound"
or "constrained" property. A PropertyChangeEvent object is sent as an
argument to the PropertyChangeListener and VetoableChangeListener methods.

Normally PropertyChangeEvents are accompanied by the name and the old
and new value of the changed property. If the new value is a primitive
type (such as int or boolean) it must be wrapped as the
corresponding java.lang.\* Object type (such as Integer or Boolean).

Null values may be provided for the old and the new values if their
true values are not known.

An event source may send a null object as the name to indicate that an
arbitrary set of if its properties have changed. In this case the
old and new values should also be null.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.beans.PropertyChangeEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyChangeEvent(Object source,
  String propertyName,
  Object oldValue,
  Object newValue)`

  Constructs a new `PropertyChangeEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getNewValue()`

  Gets the new value for the property, expressed as an Object.

  `Object`

  `getOldValue()`

  Gets the old value for the property, expressed as an Object.

  `Object`

  `getPropagationId()`

  The "propagationId" field is reserved for future use.

  `String`

  `getPropertyName()`

  Gets the programmatic name of the property that was changed.

  `void`

  `setPropagationId(Object propagationId)`

  Sets the propagationId object for the event.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PropertyChangeEvent

    public PropertyChangeEvent([Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    [String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue)

    Constructs a new `PropertyChangeEvent`.

    Parameters:
    :   `source` - the bean that fired the event
    :   `propertyName` - the programmatic name of the property that was changed
    :   `oldValue` - the old value of the property
    :   `newValue` - the new value of the property

    Throws:
    :   `IllegalArgumentException` - if `source` is `null`
* ## Method Details

  + ### getPropertyName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getPropertyName()

    Gets the programmatic name of the property that was changed.

    Returns:
    :   The programmatic name of the property that was changed.
        May be null if multiple properties have changed.
  + ### getNewValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getNewValue()

    Gets the new value for the property, expressed as an Object.

    Returns:
    :   The new value for the property, expressed as an Object.
        May be null if multiple properties have changed.
  + ### getOldValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getOldValue()

    Gets the old value for the property, expressed as an Object.

    Returns:
    :   The old value for the property, expressed as an Object.
        May be null if multiple properties have changed.
  + ### setPropagationId

    public void setPropagationId([Object](../../../java.base/java/lang/Object.md "class in java.lang") propagationId)

    Sets the propagationId object for the event.

    Parameters:
    :   `propagationId` - The propagationId object for the event.
  + ### getPropagationId

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getPropagationId()

    The "propagationId" field is reserved for future use. In Beans 1.0
    the sole requirement is that if a listener catches a PropertyChangeEvent
    and then fires a PropertyChangeEvent of its own, then it should
    make sure that it propagates the propagationId field from its
    incoming event to its outgoing event.

    Returns:
    :   the propagationId object associated with a bound/constrained
        property update.
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `EventObject`

    Returns:
    :   a string representation of the object

    Since:
    :   1.7