Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class EventListenerProxy<T extends [EventListener](EventListener.md "interface in java.util")>

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.EventListenerProxy<T>

Type Parameters:
:   `T` - the type of `EventListener` being wrapped

All Implemented Interfaces:
:   `EventListener`

Direct Known Subclasses:
:   `AWTEventListenerProxy`, `PropertyChangeListenerProxy`, `VetoableChangeListenerProxy`

---

public abstract class EventListenerProxy<T extends [EventListener](EventListener.md "interface in java.util")>
extends [Object](../lang/Object.md "class in java.lang")
implements [EventListener](EventListener.md "interface in java.util")

An abstract wrapper class for an `EventListener` class
which associates a set of additional parameters with the listener.
Subclasses must provide the storage and accessor methods
for the additional arguments or parameters.

For example, a bean which supports named properties
would have a two argument method signature for adding
a `PropertyChangeListener` for a property:

```
 public void addPropertyChangeListener(String propertyName,
                                       PropertyChangeListener listener)
```

If the bean also implemented the zero argument get listener method:

```
 public PropertyChangeListener[] getPropertyChangeListeners()
```

then the array may contain inner `PropertyChangeListeners`
which are also `PropertyChangeListenerProxy` objects.

If the calling method is interested in retrieving the named property
then it would have to test the element to see if it is a proxy class.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EventListenerProxy(T listener)`

  Creates a proxy for the specified listener.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `T`

  `getListener()`

  Returns the listener associated with the proxy.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EventListenerProxy

    public EventListenerProxy([T](EventListenerProxy.md "type parameter in EventListenerProxy") listener)

    Creates a proxy for the specified listener.

    Parameters:
    :   `listener` - the listener object
* ## Method Details

  + ### getListener

    public [T](EventListenerProxy.md "type parameter in EventListenerProxy") getListener()

    Returns the listener associated with the proxy.

    Returns:
    :   the listener associated with the proxy