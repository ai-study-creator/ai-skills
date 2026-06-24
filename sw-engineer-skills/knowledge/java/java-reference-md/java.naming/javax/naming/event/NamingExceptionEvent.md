Module [java.naming](../../../module-summary.md)

Package [javax.naming.event](package-summary.md)

# Class NamingExceptionEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.naming.event.NamingExceptionEvent

All Implemented Interfaces:
:   `Serializable`

---

public class NamingExceptionEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

This class represents an event fired when the procedures/processes
used to collect information for notifying listeners of
`NamingEvent`s threw a `NamingException`.
This can happen, for example, if the server which the listener is using
aborts subsequent to the `addNamingListener()` call.

Since:
:   1.3

See Also:
:   * [`NamingListener.namingExceptionThrown(javax.naming.event.NamingExceptionEvent)`](NamingListener.md#namingExceptionThrown(javax.naming.event.NamingExceptionEvent))
    * [`EventContext`](EventContext.md "interface in javax.naming.event")
    * [Serialized Form](../../../../serialized-form.md#javax.naming.event.NamingExceptionEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NamingExceptionEvent(EventContext source,
  NamingException exc)`

  Constructs an instance of `NamingExceptionEvent` using
  the context in which the `NamingException` was thrown and the exception
  that was thrown.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `dispatch(NamingListener listener)`

  Invokes the `namingExceptionThrown()` method on
  a listener using this event.

  `EventContext`

  `getEventContext()`

  Retrieves the `EventContext` that fired this event.

  `NamingException`

  `getException()`

  Retrieves the exception that was thrown.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NamingExceptionEvent

    public NamingExceptionEvent([EventContext](EventContext.md "interface in javax.naming.event") source,
    [NamingException](../NamingException.md "class in javax.naming") exc)

    Constructs an instance of `NamingExceptionEvent` using
    the context in which the `NamingException` was thrown and the exception
    that was thrown.

    Parameters:
    :   `source` - The non-null context in which the exception was thrown.
    :   `exc` - The non-null `NamingException` that was thrown.
* ## Method Details

  + ### getException

    public [NamingException](../NamingException.md "class in javax.naming") getException()

    Retrieves the exception that was thrown.

    Returns:
    :   The exception that was thrown.
  + ### getEventContext

    public [EventContext](EventContext.md "interface in javax.naming.event") getEventContext()

    Retrieves the `EventContext` that fired this event.
    This returns the same object as `EventObject.getSource()`.

    Returns:
    :   The non-null `EventContext` that fired this event.
  + ### dispatch

    public void dispatch([NamingListener](NamingListener.md "interface in javax.naming.event") listener)

    Invokes the `namingExceptionThrown()` method on
    a listener using this event.

    Parameters:
    :   `listener` - The non-null naming listener on which to invoke
        the method.