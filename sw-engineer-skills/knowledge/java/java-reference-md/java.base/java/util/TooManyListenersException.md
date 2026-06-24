Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class TooManyListenersException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

java.util.TooManyListenersException

All Implemented Interfaces:
:   `Serializable`

---

public class TooManyListenersException
extends [Exception](../lang/Exception.md "class in java.lang")

The  `TooManyListenersException`  Exception is used as part of
the Java Event model to annotate and implement a unicast special case of
a multicast Event Source.

The presence of a "throws TooManyListenersException" clause on any given
concrete implementation of the normally multicast "void addXyzEventListener"
event listener registration pattern is used to annotate that interface as
implementing a unicast Listener special case, that is, that one and only
one Listener may be registered on the particular event listener source
concurrently.

Since:
:   1.1

See Also:
:   * [`EventObject`](EventObject.md "class in java.util")
    * [`EventListener`](EventListener.md "interface in java.util")
    * [Serialized Form](../../../serialized-form.md#java.util.TooManyListenersException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TooManyListenersException()`

  Constructs a TooManyListenersException with no detail message.

  `TooManyListenersException(String s)`

  Constructs a TooManyListenersException with the specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TooManyListenersException

    public TooManyListenersException()

    Constructs a TooManyListenersException with no detail message.
    A detail message is a String that describes this particular exception.
  + ### TooManyListenersException

    public TooManyListenersException([String](../lang/String.md "class in java.lang") s)

    Constructs a TooManyListenersException with the specified detail message.
    A detail message is a String that describes this particular exception.

    Parameters:
    :   `s` - the detail message