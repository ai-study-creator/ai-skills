Module [java.naming](../../../module-summary.md)

Package [javax.naming.event](package-summary.md)

# Class NamingEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

javax.naming.event.NamingEvent

All Implemented Interfaces:
:   `Serializable`

---

public class NamingEvent
extends [EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

This class represents an event fired by a naming/directory service.

The `NamingEvent`'s state consists of

* The event source: the `EventContext` which fired this event.* The event type.* The new binding: information about the object after the change.* The old binding: information about the object before the change.* Change information: information about the change
          that triggered this event; usually service provider-specific or server-specific
          information.

Note that the event source is always the same `EventContext`
*instance* that the listener has registered with.
Furthermore, the names of the bindings in
the `NamingEvent` are always relative to that instance.
For example, suppose a listener makes the following registration:
> ```
>      NamespaceChangeListener listener = ...;
>      src.addNamingListener("x", SUBTREE_SCOPE, listener);
> ```

When an object named "x/y" is subsequently deleted, the corresponding
`NamingEvent` (`evt`) must contain:
> ```
>      evt.getEventContext() == src
>      evt.getOldBinding().getName().equals("x/y")
> ```

Care must be taken when multiple threads are accessing the same
`EventContext` concurrently.
See the
[package description](package-summary.md#THREADING)
for more information on threading issues.

Since:
:   1.3

See Also:
:   * [`NamingListener`](NamingListener.md "interface in javax.naming.event")
    * [`EventContext`](EventContext.md "interface in javax.naming.event")
    * [Serialized Form](../../../../serialized-form.md#javax.naming.event.NamingEvent)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Object`

  `changeInfo`

  Contains information about the change that generated this event.

  `protected Binding`

  `newBinding`

  Contains information about the object after the change.

  `static final int`

  `OBJECT_ADDED`

  Naming event type for indicating that a new object has been added.

  `static final int`

  `OBJECT_CHANGED`

  Naming event type for indicating that an object has been changed.

  `static final int`

  `OBJECT_REMOVED`

  Naming event type for indicating that an object has been removed.

  `static final int`

  `OBJECT_RENAMED`

  Naming event type for indicating that an object has been renamed.

  `protected Binding`

  `oldBinding`

  Contains information about the object before the change.

  `protected int`

  `type`

  Contains the type of this event.

  ### Fields inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `source`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NamingEvent(EventContext source,
  int type,
  Binding newBd,
  Binding oldBd,
  Object changeInfo)`

  Constructs an instance of `NamingEvent`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `dispatch(NamingListener listener)`

  Invokes the appropriate listener method on this event.

  `Object`

  `getChangeInfo()`

  Retrieves the change information for this event.

  `EventContext`

  `getEventContext()`

  Retrieves the event source that fired this event.

  `Binding`

  `getNewBinding()`

  Retrieves the binding of the object after the change.

  `Binding`

  `getOldBinding()`

  Retrieves the binding of the object before the change.

  `int`

  `getType()`

  Returns the type of this event.

  ### Methods inherited from class java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util")

  `getSource, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### OBJECT\_ADDED

    public static final int OBJECT\_ADDED

    Naming event type for indicating that a new object has been added.
    The value of this constant is `0`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.event.NamingEvent.OBJECT_ADDED)
  + ### OBJECT\_REMOVED

    public static final int OBJECT\_REMOVED

    Naming event type for indicating that an object has been removed.
    The value of this constant is `1`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.event.NamingEvent.OBJECT_REMOVED)
  + ### OBJECT\_RENAMED

    public static final int OBJECT\_RENAMED

    Naming event type for indicating that an object has been renamed.
    Note that some services might fire multiple events for a single
    logical rename operation. For example, the rename operation might
    be implemented by adding a binding with the new name and removing
    the old binding.

    The old/new binding in `NamingEvent` may be null if the old
    name or new name is outside of the scope for which the listener
    has registered.

    When an interior node in the namespace tree has been renamed, the
    topmost node which is part of the listener's scope should used to generate
    a rename event. The extent to which this can be supported is
    provider-specific. For example, a service might generate rename
    notifications for all descendants of the changed interior node and the
    corresponding provider might not be able to prevent those
    notifications from being propagated to the listeners.

    The value of this constant is `2`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.event.NamingEvent.OBJECT_RENAMED)
  + ### OBJECT\_CHANGED

    public static final int OBJECT\_CHANGED

    Naming event type for indicating that an object has been changed.
    The changes might include the object's attributes, or the object itself.
    Note that some services might fire multiple events for a single
    modification. For example, the modification might
    be implemented by first removing the old binding and adding
    a new binding containing the same name but a different object.

    The value of this constant is `3`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.event.NamingEvent.OBJECT_CHANGED)
  + ### changeInfo

    protected [Object](../../../../java.base/java/lang/Object.md "class in java.lang") changeInfo

    Contains information about the change that generated this event.
  + ### type

    protected int type

    Contains the type of this event.

    See Also:
    :   - [`OBJECT_ADDED`](#OBJECT_ADDED)
        - [`OBJECT_REMOVED`](#OBJECT_REMOVED)
        - [`OBJECT_RENAMED`](#OBJECT_RENAMED)
        - [`OBJECT_CHANGED`](#OBJECT_CHANGED)
  + ### oldBinding

    protected [Binding](../Binding.md "class in javax.naming") oldBinding

    Contains information about the object before the change.
  + ### newBinding

    protected [Binding](../Binding.md "class in javax.naming") newBinding

    Contains information about the object after the change.
* ## Constructor Details

  + ### NamingEvent

    public NamingEvent([EventContext](EventContext.md "interface in javax.naming.event") source,
    int type,
    [Binding](../Binding.md "class in javax.naming") newBd,
    [Binding](../Binding.md "class in javax.naming") oldBd,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") changeInfo)

    Constructs an instance of `NamingEvent`.

    The names in `newBd` and `oldBd` are to be resolved relative
    to the event source `source`.
    For an `OBJECT_ADDED` event type, `newBd` must not be null.
    For an `OBJECT_REMOVED` event type, `oldBd` must not be null.
    For an `OBJECT_CHANGED` event type, `newBd` and
    `oldBd` must not be null. For an `OBJECT_RENAMED` event type,
    one of `newBd` or `oldBd` may be null if the new or old
    binding is outside of the scope for which the listener has registered.

    Parameters:
    :   `source` - The non-null context that fired this event.
    :   `type` - The type of the event.
    :   `newBd` - A possibly null binding before the change. See method description.
    :   `oldBd` - A possibly null binding after the change. See method description.
    :   `changeInfo` - A possibly null object containing information about the change.

    See Also:
    :   - [`OBJECT_ADDED`](#OBJECT_ADDED)
        - [`OBJECT_REMOVED`](#OBJECT_REMOVED)
        - [`OBJECT_RENAMED`](#OBJECT_RENAMED)
        - [`OBJECT_CHANGED`](#OBJECT_CHANGED)
* ## Method Details

  + ### getType

    public int getType()

    Returns the type of this event.

    Returns:
    :   The type of this event.

    See Also:
    :   - [`OBJECT_ADDED`](#OBJECT_ADDED)
        - [`OBJECT_REMOVED`](#OBJECT_REMOVED)
        - [`OBJECT_RENAMED`](#OBJECT_RENAMED)
        - [`OBJECT_CHANGED`](#OBJECT_CHANGED)
  + ### getEventContext

    public [EventContext](EventContext.md "interface in javax.naming.event") getEventContext()

    Retrieves the event source that fired this event.
    This returns the same object as `EventObject.getSource()`.

    If the result of this method is used to access the
    event source, for example, to look up the object or get its attributes,
    then it needs to be locked because implementations of `Context`
    are not guaranteed to be thread-safe
    (and `EventContext` is a subinterface of `Context`).
    See the
    [package description](package-summary.md#THREADING)
    for more information on threading issues.

    Returns:
    :   The non-null context that fired this event.
  + ### getOldBinding

    public [Binding](../Binding.md "class in javax.naming") getOldBinding()

    Retrieves the binding of the object before the change.

    The binding must be nonnull if the object existed before the change
    relative to the source context (`getEventContext()`).
    That is, it must be nonnull for `OBJECT_REMOVED` and
    `OBJECT_CHANGED`.
    For `OBJECT_RENAMED`, it is null if the object before the rename
    is outside of the scope for which the listener has registered interest;
    it is nonnull if the object is inside the scope before the rename.

    The name in the binding is to be resolved relative
    to the event source `getEventContext()`.
    The object returned by `Binding.getObject()` may be null if
    such information is unavailable.

    Returns:
    :   The possibly null binding of the object before the change.
  + ### getNewBinding

    public [Binding](../Binding.md "class in javax.naming") getNewBinding()

    Retrieves the binding of the object after the change.

    The binding must be nonnull if the object existed after the change
    relative to the source context (`getEventContext()`).
    That is, it must be nonnull for `OBJECT_ADDED` and
    `OBJECT_CHANGED`. For `OBJECT_RENAMED`,
    it is null if the object after the rename is outside the scope for
    which the listener registered interest; it is nonnull if the object
    is inside the scope after the rename.

    The name in the binding is to be resolved relative
    to the event source `getEventContext()`.
    The object returned by `Binding.getObject()` may be null if
    such information is unavailable.

    Returns:
    :   The possibly null binding of the object after the change.
  + ### getChangeInfo

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getChangeInfo()

    Retrieves the change information for this event.
    The value of the change information is service-specific. For example,
    it could be an ID that identifies the change in a change log on the server.

    Returns:
    :   The possibly null change information of this event.
  + ### dispatch

    public void dispatch([NamingListener](NamingListener.md "interface in javax.naming.event") listener)

    Invokes the appropriate listener method on this event.
    The default implementation of
    this method handles the following event types:
    `OBJECT_ADDED, OBJECT_REMOVED,
    OBJECT_RENAMED, OBJECT_CHANGED`.

    The listener method is executed in the same thread
    as this method. See the
    [package description](package-summary.md#THREADING)
    for more information on threading issues.

    Parameters:
    :   `listener` - The nonnull listener.