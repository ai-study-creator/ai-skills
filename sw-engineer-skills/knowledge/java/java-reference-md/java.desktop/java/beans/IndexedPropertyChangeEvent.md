Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Class IndexedPropertyChangeEvent

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

[java.beans.PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans")

java.beans.IndexedPropertyChangeEvent

All Implemented Interfaces:
:   `Serializable`

---

public class IndexedPropertyChangeEvent
extends [PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans")

An "IndexedPropertyChange" event gets delivered whenever a component that
conforms to the JavaBeans specification (a "bean") changes a bound
indexed property. This class is an extension of `PropertyChangeEvent`
but contains the index of the property that has changed.

Null values may be provided for the old and the new values if their
true values are not known.

An event source may send a null object as the name to indicate that an
arbitrary set of if its properties have changed. In this case the
old and new values should also be null.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.beans.IndexedPropertyChangeEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IndexedPropertyChangeEvent(Object source,
  String propertyName,
  Object oldValue,
  Object newValue,
  int index)`

  Constructs a new `IndexedPropertyChangeEvent` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getIndex()`

  Gets the index of the property that was changed.

  ### Methods inherited from class java.beans.[PropertyChangeEvent](PropertyChangeEvent.md "class in java.beans")

  `getNewValue, getOldValue, getPropagationId, getPropertyName, setPropagationId, toString`

  ### Methods inherited from class java.util.[EventObject](../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IndexedPropertyChangeEvent

    public IndexedPropertyChangeEvent([Object](../../../java.base/java/lang/Object.md "class in java.lang") source,
    [String](../../../java.base/java/lang/String.md "class in java.lang") propertyName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") oldValue,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") newValue,
    int index)

    Constructs a new `IndexedPropertyChangeEvent` object.

    Parameters:
    :   `source` - The bean that fired the event.
    :   `propertyName` - The programmatic name of the property that
        was changed.
    :   `oldValue` - The old value of the property.
    :   `newValue` - The new value of the property.
    :   `index` - index of the property element that was changed.
* ## Method Details

  + ### getIndex

    public int getIndex()

    Gets the index of the property that was changed.

    Returns:
    :   The index specifying the property element that was
        changed.