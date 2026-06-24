Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLSessionBindingEvent

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../java/util/EventObject.md "class in java.util")

javax.net.ssl.SSLSessionBindingEvent

All Implemented Interfaces:
:   `Serializable`

---

public class SSLSessionBindingEvent
extends [EventObject](../../../java/util/EventObject.md "class in java.util")

This event is propagated to a SSLSessionBindingListener.
When a listener object is bound or unbound to an SSLSession by
[`SSLSession.putValue(String, Object)`](SSLSession.md#putValue(java.lang.String,java.lang.Object))
or [`SSLSession.removeValue(String)`](SSLSession.md#removeValue(java.lang.String)), objects which
implement the SSLSessionBindingListener will receive an
event of this type. The event's `name` field is the
key in which the listener is being bound or unbound.

Since:
:   1.4

See Also:
:   * [`SSLSession`](SSLSession.md "interface in javax.net.ssl")
    * [`SSLSessionBindingListener`](SSLSessionBindingListener.md "interface in javax.net.ssl")
    * [Serialized Form](../../../../serialized-form.md#javax.net.ssl.SSLSessionBindingEvent)

* ## Field Summary

  ### Fields inherited from class java.util.[EventObject](../../../java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SSLSessionBindingEvent(SSLSession session,
  String name)`

  Constructs a new SSLSessionBindingEvent.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Returns the name to which the object is being bound, or the name
  from which the object is being unbound.

  `SSLSession`

  `getSession()`

  Returns the SSLSession into which the listener is being bound or
  from which the listener is being unbound.

  ### Methods inherited from class java.util.[EventObject](../../../java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SSLSessionBindingEvent

    public SSLSessionBindingEvent([SSLSession](SSLSession.md "interface in javax.net.ssl") session,
    [String](../../../java/lang/String.md "class in java.lang") name)

    Constructs a new SSLSessionBindingEvent.

    Parameters:
    :   `session` - the SSLSession acting as the source of the event
    :   `name` - the name to which the object is being bound or unbound

    Throws:
    :   `IllegalArgumentException` - if `session` is null.
* ## Method Details

  + ### getName

    public [String](../../../java/lang/String.md "class in java.lang") getName()

    Returns the name to which the object is being bound, or the name
    from which the object is being unbound.

    Returns:
    :   the name to which the object is being bound or unbound
  + ### getSession

    public [SSLSession](SSLSession.md "interface in javax.net.ssl") getSession()

    Returns the SSLSession into which the listener is being bound or
    from which the listener is being unbound.

    Returns:
    :   the `SSLSession`