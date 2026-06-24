Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class InvocationEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

[java.awt.AWTEvent](../AWTEvent.md "class in java.awt")

java.awt.event.InvocationEvent

All Implemented Interfaces:
:   `ActiveEvent`, `Serializable`

---

public class InvocationEvent
extends [AWTEvent](../AWTEvent.md "class in java.awt")
implements [ActiveEvent](../ActiveEvent.md "interface in java.awt")

An event which executes the `run()` method on a `Runnable` when dispatched by the AWT event dispatcher thread. This class can
be used as a reference implementation of `ActiveEvent` rather
than declaring a new class and defining `dispatch()`.

Instances of this class are placed on the `EventQueue` by calls
to `invokeLater` and `invokeAndWait`. Client code
can use this fact to write replacement functions for `invokeLater` and `invokeAndWait` without writing special-case code
in any `AWTEventListener` objects.

An unspecified behavior will be caused if the `id` parameter
of any particular `InvocationEvent` instance is not
in the range from `INVOCATION_FIRST` to `INVOCATION_LAST`.

Since:
:   1.2

See Also:
:   * [`ActiveEvent`](../ActiveEvent.md "interface in java.awt")
    * [`EventQueue.invokeLater(java.lang.Runnable)`](../EventQueue.md#invokeLater(java.lang.Runnable))
    * [`EventQueue.invokeAndWait(java.lang.Runnable)`](../EventQueue.md#invokeAndWait(java.lang.Runnable))
    * [`AWTEventListener`](AWTEventListener.md "interface in java.awt.event")
    * [Serialized Form](../../../../serialized-form.md#java.awt.event.InvocationEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected boolean`

  `catchExceptions`

  Set to true if dispatch() catches Throwable and stores it in the
  exception instance variable.

  `static final int`

  `INVOCATION_DEFAULT`

  The default id for all InvocationEvents.

  `static final int`

  `INVOCATION_FIRST`

  Marks the first integer id for the range of invocation event ids.

  `static final int`

  `INVOCATION_LAST`

  Marks the last integer id for the range of invocation event ids.

  `protected Object`

  `notifier`

  The (potentially null) Object whose notifyAll() method will be called
  immediately after the Runnable.run() method has returned or thrown an exception
  or after the event was disposed.

  `protected Runnable`

  `runnable`

  The Runnable whose run() method will be called.

  ### Fields inherited from class java.awt.[AWTEvent](../AWTEvent.md "class in java.awt")

  `ACTION_EVENT_MASK, ADJUSTMENT_EVENT_MASK, COMPONENT_EVENT_MASK, consumed, CONTAINER_EVENT_MASK, FOCUS_EVENT_MASK, HIERARCHY_BOUNDS_EVENT_MASK, HIERARCHY_EVENT_MASK, id, INPUT_METHOD_EVENT_MASK, INVOCATION_EVENT_MASK, ITEM_EVENT_MASK, KEY_EVENT_MASK, MOUSE_EVENT_MASK, MOUSE_MOTION_EVENT_MASK, MOUSE_WHEEL_EVENT_MASK, PAINT_EVENT_MASK, RESERVED_ID_MAX, TEXT_EVENT_MASK, WINDOW_EVENT_MASK, WINDOW_FOCUS_EVENT_MASK, WINDOW_STATE_EVENT_MASK`

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `InvocationEvent(Object source,
  int id,
  Runnable runnable,
  Object notifier,
  boolean catchThrowables)`

  Constructs an `InvocationEvent` with the specified
  source and ID which will execute the runnable's `run()`
  method when dispatched.

  `InvocationEvent(Object source,
  Runnable runnable)`

  Constructs an `InvocationEvent` with the specified
  source which will execute the runnable's `run()`
  method when dispatched.

  `InvocationEvent(Object source,
  Runnable runnable,
  Object notifier,
  boolean catchThrowables)`

  Constructs an `InvocationEvent` with the specified
  source which will execute the runnable's `run()`
  method when dispatched.

  `InvocationEvent(Object source,
  Runnable runnable,
  Runnable listener,
  boolean catchThrowables)`

  Constructs an `InvocationEvent` with the specified
  source which will execute the runnable's `run()`
  method when dispatched.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `dispatch()`

  Executes the Runnable's `run()` method and notifies the
  notifier (if any) when `run()` has returned or thrown an exception.

  `Exception`

  `getException()`

  Returns any Exception caught while executing
  the Runnable's `run()` method.

  `Throwable`

  `getThrowable()`

  Returns any Throwable caught while executing
  the Runnable's `run()` method.

  `long`

  `getWhen()`

  Returns the timestamp of when this event occurred.

  `boolean`

  `isDispatched()`

  Returns `true` if the event is dispatched or any exception is
  thrown while dispatching, `false` otherwise.

  `String`

  `paramString()`

  Returns a parameter string identifying this event.

  ### Methods inherited from class java.awt.[AWTEvent](../AWTEvent.md "class in java.awt")

  `consume, getID, isConsumed, setSource, toString`

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### INVOCATION\_FIRST

    public static final int INVOCATION\_FIRST

    Marks the first integer id for the range of invocation event ids.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InvocationEvent.INVOCATION_FIRST)
  + ### INVOCATION\_DEFAULT

    public static final int INVOCATION\_DEFAULT

    The default id for all InvocationEvents.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InvocationEvent.INVOCATION_DEFAULT)
  + ### INVOCATION\_LAST

    public static final int INVOCATION\_LAST

    Marks the last integer id for the range of invocation event ids.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.event.InvocationEvent.INVOCATION_LAST)
  + ### runnable

    protected [Runnable](../../../../java.base/java/lang/Runnable.md "interface in java.lang") runnable

    The Runnable whose run() method will be called.
  + ### notifier

    protected volatile [Object](../../../../java.base/java/lang/Object.md "class in java.lang") notifier

    The (potentially null) Object whose notifyAll() method will be called
    immediately after the Runnable.run() method has returned or thrown an exception
    or after the event was disposed.

    See Also:
    :   - [`isDispatched()`](#isDispatched())
  + ### catchExceptions

    protected boolean catchExceptions

    Set to true if dispatch() catches Throwable and stores it in the
    exception instance variable. If false, Throwables are propagated up
    to the EventDispatchThread's dispatch loop.
* ## Constructor Details

  + ### InvocationEvent

    public InvocationEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [Runnable](../../../../java.base/java/lang/Runnable.md "interface in java.lang") runnable)

    Constructs an `InvocationEvent` with the specified
    source which will execute the runnable's `run()`
    method when dispatched.

    This is a convenience constructor. An invocation of the form
    `InvocationEvent(source, runnable)`
    behaves in exactly the same way as the invocation of
    [`InvocationEvent(source, runnable, null, false)`](#%3Cinit%3E(java.lang.Object,java.lang.Runnable,java.lang.Object,boolean)).

    This method throws an `IllegalArgumentException`
    if `source` is `null`.

    Parameters:
    :   `source` - The `Object` that originated the event
    :   `runnable` - The `Runnable` whose `run()`
        method will be executed

    Throws:
    :   `IllegalArgumentException` - if `source` is null

    See Also:
    :   - [`EventObject.getSource()`](../../../../java.base/java/util/EventObject.md#getSource())
        - [`InvocationEvent(Object, Runnable, Object, boolean)`](#%3Cinit%3E(java.lang.Object,java.lang.Runnable,java.lang.Object,boolean))
  + ### InvocationEvent

    public InvocationEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [Runnable](../../../../java.base/java/lang/Runnable.md "interface in java.lang") runnable,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") notifier,
    boolean catchThrowables)

    Constructs an `InvocationEvent` with the specified
    source which will execute the runnable's `run()`
    method when dispatched. If notifier is non-`null`,
    `notifyAll()` will be called on it
    immediately after `run()` has returned or thrown an exception.

    An invocation of the form
    `InvocationEvent(source, runnable, notifier, catchThrowables)`
    behaves in exactly the same way as the invocation of
    [`InvocationEvent(source, InvocationEvent.INVOCATION_DEFAULT, runnable, notifier, catchThrowables)`](#%3Cinit%3E(java.lang.Object,int,java.lang.Runnable,java.lang.Object,boolean)).

    This method throws an `IllegalArgumentException`
    if `source` is `null`.

    Parameters:
    :   `source` - The `Object` that originated
        the event
    :   `runnable` - The `Runnable` whose
        `run()` method will be
        executed
    :   `notifier` - The `Object` whose `notifyAll`
        method will be called after
        `Runnable.run` has returned or
        thrown an exception or after the event was
        disposed
    :   `catchThrowables` - Specifies whether `dispatch`
        should catch Throwable when executing
        the `Runnable`'s `run()`
        method, or should instead propagate those
        Throwables to the EventDispatchThread's
        dispatch loop

    Throws:
    :   `IllegalArgumentException` - if `source` is null

    See Also:
    :   - [`EventObject.getSource()`](../../../../java.base/java/util/EventObject.md#getSource())
        - [`InvocationEvent(Object, int, Runnable, Object, boolean)`](#%3Cinit%3E(java.lang.Object,int,java.lang.Runnable,java.lang.Object,boolean))
  + ### InvocationEvent

    public InvocationEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    [Runnable](../../../../java.base/java/lang/Runnable.md "interface in java.lang") runnable,
    [Runnable](../../../../java.base/java/lang/Runnable.md "interface in java.lang") listener,
    boolean catchThrowables)

    Constructs an `InvocationEvent` with the specified
    source which will execute the runnable's `run()`
    method when dispatched. If listener is non-`null`,
    `listener.run()` will be called immediately after
    `run` has returned, thrown an exception or the event
    was disposed.

    This method throws an `IllegalArgumentException`
    if `source` is `null`.

    Parameters:
    :   `source` - The `Object` that originated
        the event
    :   `runnable` - The `Runnable` whose
        `run()` method will be
        executed
    :   `listener` - The `Runnable` whose
        `run()` method will be called
        after the `InvocationEvent`
        was dispatched or disposed
    :   `catchThrowables` - Specifies whether `dispatch`
        should catch Throwable when executing
        the `Runnable`'s `run()`
        method, or should instead propagate those
        Throwables to the EventDispatchThread's
        dispatch loop

    Throws:
    :   `IllegalArgumentException` - if `source` is null
  + ### InvocationEvent

    protected InvocationEvent([Object](../../../../java.base/java/lang/Object.md "class in java.lang") source,
    int id,
    [Runnable](../../../../java.base/java/lang/Runnable.md "interface in java.lang") runnable,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") notifier,
    boolean catchThrowables)

    Constructs an `InvocationEvent` with the specified
    source and ID which will execute the runnable's `run()`
    method when dispatched. If notifier is non-`null`,
    `notifyAll()` will be called on it immediately after
    `run()` has returned or thrown an exception.

    This method throws an
    `IllegalArgumentException` if `source`
    is `null`.

    Parameters:
    :   `source` - The `Object` that originated
        the event
    :   `id` - An integer indicating the type of event.
        For information on allowable values, see
        the class description for [`InvocationEvent`](InvocationEvent.md "class in java.awt.event")
    :   `runnable` - The `Runnable` whose
        `run()` method will be executed
    :   `notifier` - The `Object` whose `notifyAll`
        method will be called after
        `Runnable.run` has returned or
        thrown an exception or after the event was
        disposed
    :   `catchThrowables` - Specifies whether `dispatch`
        should catch Throwable when executing the
        `Runnable`'s `run()`
        method, or should instead propagate those
        Throwables to the EventDispatchThread's
        dispatch loop

    Throws:
    :   `IllegalArgumentException` - if `source` is null

    See Also:
    :   - [`EventObject.getSource()`](../../../../java.base/java/util/EventObject.md#getSource())
        - [`AWTEvent.getID()`](../AWTEvent.md#getID())
* ## Method Details

  + ### dispatch

    public void dispatch()

    Executes the Runnable's `run()` method and notifies the
    notifier (if any) when `run()` has returned or thrown an exception.

    Specified by:
    :   `dispatch` in interface `ActiveEvent`

    See Also:
    :   - [`isDispatched()`](#isDispatched())
  + ### getException

    public [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") getException()

    Returns any Exception caught while executing
    the Runnable's `run()` method.

    Returns:
    :   A reference to the Exception if one was thrown; null if no
        Exception was thrown or if this InvocationEvent does not
        catch exceptions
  + ### getThrowable

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getThrowable()

    Returns any Throwable caught while executing
    the Runnable's `run()` method.

    Returns:
    :   A reference to the Throwable if one was thrown; null if no
        Throwable was thrown or if this InvocationEvent does not
        catch Throwables

    Since:
    :   1.5
  + ### getWhen

    public long getWhen()

    Returns the timestamp of when this event occurred.

    Returns:
    :   this event's timestamp

    Since:
    :   1.4
  + ### isDispatched

    public boolean isDispatched()

    Returns `true` if the event is dispatched or any exception is
    thrown while dispatching, `false` otherwise. The method should
    be called by a waiting thread that calls the `notifier.wait()` method.
    Since spurious wakeups are possible (as explained in [`Object.wait()`](../../../../java.base/java/lang/Object.md#wait())),
    this method should be used in a waiting loop to ensure that the event
    got dispatched:

    ```
         while (!event.isDispatched()) {
             notifier.wait();
         }
    ```

    If the waiting thread wakes up without dispatching the event,
    the `isDispatched()` method returns `false`, and
    the `while` loop executes once more, thus, causing
    the awakened thread to revert to the waiting mode.

    If the `notifier.notifyAll()` happens before the waiting thread
    enters the `notifier.wait()` method, the `while` loop ensures
    that the waiting thread will not enter the `notifier.wait()` method.
    Otherwise, there is no guarantee that the waiting thread will ever be woken
    from the wait.

    Returns:
    :   `true` if the event has been dispatched, or any exception
        has been thrown while dispatching, `false` otherwise

    Since:
    :   1.7

    See Also:
    :   - [`dispatch()`](#dispatch())
        - [`notifier`](#notifier)
        - [`catchExceptions`](#catchExceptions)
  + ### paramString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") paramString()

    Returns a parameter string identifying this event.
    This method is useful for event-logging and for debugging.

    Overrides:
    :   `paramString` in class `AWTEvent`

    Returns:
    :   A string identifying the event and its attributes