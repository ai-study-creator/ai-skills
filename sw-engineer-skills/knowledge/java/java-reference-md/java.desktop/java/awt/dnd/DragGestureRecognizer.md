Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DragGestureRecognizer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.dnd.DragGestureRecognizer

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `MouseDragGestureRecognizer`

---

public abstract class DragGestureRecognizer
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `DragGestureRecognizer` is an
abstract base class for the specification
of a platform-dependent listener that can be associated with a particular
`Component` in order to
identify platform-dependent drag initiating gestures.

The appropriate `DragGestureRecognizer`
subclass instance is obtained from the
[`DragSource`](DragSource.md "class in java.awt.dnd") associated with
a particular `Component`, or from the `Toolkit` object via its
[`createDragGestureRecognizer()`](../Toolkit.md#createDragGestureRecognizer(java.lang.Class,java.awt.dnd.DragSource,java.awt.Component,int,java.awt.dnd.DragGestureListener))
method.

Once the `DragGestureRecognizer`
is associated with a particular `Component`
it will register the appropriate listener interfaces on that
`Component`
in order to track the input events delivered to the `Component`.

Once the `DragGestureRecognizer` identifies a sequence of events
on the `Component` as a drag initiating gesture, it will notify
its unicast `DragGestureListener` by
invoking its
[`gestureRecognized()`](DragGestureListener.md#dragGestureRecognized(java.awt.dnd.DragGestureEvent))
method.

When a concrete `DragGestureRecognizer`
instance detects a drag initiating
gesture on the `Component` it is associated with,
it fires a [`DragGestureEvent`](DragGestureEvent.md "class in java.awt.dnd") to
the `DragGestureListener` registered on
its unicast event source for `DragGestureListener`
events. This `DragGestureListener` is responsible
for causing the associated
`DragSource` to start the Drag and Drop operation (if
appropriate).

See Also:
:   * [`DragGestureListener`](DragGestureListener.md "interface in java.awt.dnd")
    * [`DragGestureEvent`](DragGestureEvent.md "class in java.awt.dnd")
    * [`DragSource`](DragSource.md "class in java.awt.dnd")
    * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DragGestureRecognizer)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Component`

  `component`

  The `Component`
  associated with this `DragGestureRecognizer`.

  `protected DragGestureListener`

  `dragGestureListener`

  The `DragGestureListener`
  associated with this `DragGestureRecognizer`.

  `protected DragSource`

  `dragSource`

  The `DragSource`
  associated with this
  `DragGestureRecognizer`.

  `protected ArrayList<InputEvent>`

  `events`

  The list of events (in order) that
  the `DragGestureRecognizer`
  "recognized" as a "gesture" that triggers a drag.

  `protected int`

  `sourceActions`

  An `int` representing
  the type(s) of action(s) used
  in this Drag and Drop operation.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DragGestureRecognizer(DragSource ds)`

  Construct a new `DragGestureRecognizer`
  given the `DragSource` to be used in this
  Drag and Drop operation.

  `protected`

  `DragGestureRecognizer(DragSource ds,
  Component c)`

  Construct a new `DragGestureRecognizer`
  given the `DragSource` to be used
  in this Drag and Drop operation, and
  the `Component` this
  `DragGestureRecognizer`
  should "observe" for drag initiating gestures.

  `protected`

  `DragGestureRecognizer(DragSource ds,
  Component c,
  int sa)`

  Construct a new `DragGestureRecognizer`
  given the `DragSource` to be used in this
  Drag and Drop
  operation, the `Component` this
  `DragGestureRecognizer` should "observe"
  for drag initiating gestures, and the action(s)
  supported for this Drag and Drop operation.

  `protected`

  `DragGestureRecognizer(DragSource ds,
  Component c,
  int sa,
  DragGestureListener dgl)`

  Construct a new `DragGestureRecognizer`
  given the `DragSource` to be used
  in this Drag and Drop operation, the `Component`
  this `DragGestureRecognizer` should "observe"
  for drag initiating gestures, the action(s) supported
  for this Drag and Drop operation, and the
  `DragGestureListener` to notify
  once a drag initiating gesture has been detected.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addDragGestureListener(DragGestureListener dgl)`

  Register a new `DragGestureListener`.

  `protected void`

  `appendEvent(InputEvent awtie)`

  Listeners registered on the Component by this Recognizer shall record
  all Events that are recognized as part of the series of Events that go
  to comprise a Drag and Drop initiating gesture via this API.

  `protected void`

  `fireDragGestureRecognized(int dragAction,
  Point p)`

  Notify the DragGestureListener that a Drag and Drop initiating
  gesture has occurred.

  `Component`

  `getComponent()`

  This method returns the `Component`
  that is to be "observed" by the
  `DragGestureRecognizer`
  for drag initiating gestures.

  `DragSource`

  `getDragSource()`

  This method returns the `DragSource`
  this `DragGestureRecognizer`
  will use in order to process the Drag and Drop
  operation.

  `int`

  `getSourceActions()`

  This method returns an int representing the
  type of action(s) this Drag and Drop
  operation will support.

  `InputEvent`

  `getTriggerEvent()`

  This method returns the first event in the
  series of events that initiated
  the Drag and Drop operation.

  `protected abstract void`

  `registerListeners()`

  register this DragGestureRecognizer's Listeners with the Component
  subclasses must override this method

  `void`

  `removeDragGestureListener(DragGestureListener dgl)`

  unregister the current DragGestureListener

  `void`

  `resetRecognizer()`

  Reset the Recognizer, if its currently recognizing a gesture, ignore
  it.

  `void`

  `setComponent(Component c)`

  set the Component that the DragGestureRecognizer is associated with
  registerListeners() and unregisterListeners() are called as a side
  effect as appropriate.

  `void`

  `setSourceActions(int actions)`

  This method sets the permitted source drag action(s)
  for this Drag and Drop operation.

  `protected abstract void`

  `unregisterListeners()`

  unregister this DragGestureRecognizer's Listeners with the Component
  subclasses must override this method

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### dragSource

    protected [DragSource](DragSource.md "class in java.awt.dnd") dragSource

    The `DragSource`
    associated with this
    `DragGestureRecognizer`.
  + ### component

    protected [Component](../Component.md "class in java.awt") component

    The `Component`
    associated with this `DragGestureRecognizer`.
  + ### dragGestureListener

    protected transient [DragGestureListener](DragGestureListener.md "interface in java.awt.dnd") dragGestureListener

    The `DragGestureListener`
    associated with this `DragGestureRecognizer`.
  + ### sourceActions

    protected int sourceActions

    An `int` representing
    the type(s) of action(s) used
    in this Drag and Drop operation.
  + ### events

    protected [ArrayList](../../../../java.base/java/util/ArrayList.md "class in java.util")<[InputEvent](../event/InputEvent.md "class in java.awt.event")> events

    The list of events (in order) that
    the `DragGestureRecognizer`
    "recognized" as a "gesture" that triggers a drag.
* ## Constructor Details

  + ### DragGestureRecognizer

    protected DragGestureRecognizer([DragSource](DragSource.md "class in java.awt.dnd") ds,
    [Component](../Component.md "class in java.awt") c,
    int sa,
    [DragGestureListener](DragGestureListener.md "interface in java.awt.dnd") dgl)

    Construct a new `DragGestureRecognizer`
    given the `DragSource` to be used
    in this Drag and Drop operation, the `Component`
    this `DragGestureRecognizer` should "observe"
    for drag initiating gestures, the action(s) supported
    for this Drag and Drop operation, and the
    `DragGestureListener` to notify
    once a drag initiating gesture has been detected.

    Parameters:
    :   `ds` - the `DragSource` this
        `DragGestureRecognizer`
        will use to process the Drag and Drop operation
    :   `c` - the `Component`
        this `DragGestureRecognizer`
        should "observe" the event stream to,
        in order to detect a drag initiating gesture.
        If this value is `null`, the
        `DragGestureRecognizer`
        is not associated with any `Component`.
    :   `sa` - the set (logical OR) of the
        `DnDConstants`
        that this Drag and Drop operation will support
    :   `dgl` - the `DragGestureRecognizer`
        to notify when a drag gesture is detected

    Throws:
    :   `IllegalArgumentException` - if ds is `null`.
  + ### DragGestureRecognizer

    protected DragGestureRecognizer([DragSource](DragSource.md "class in java.awt.dnd") ds,
    [Component](../Component.md "class in java.awt") c,
    int sa)

    Construct a new `DragGestureRecognizer`
    given the `DragSource` to be used in this
    Drag and Drop
    operation, the `Component` this
    `DragGestureRecognizer` should "observe"
    for drag initiating gestures, and the action(s)
    supported for this Drag and Drop operation.

    Parameters:
    :   `ds` - the `DragSource` this
        `DragGestureRecognizer` will use to
        process the Drag and Drop operation
    :   `c` - the `Component` this
        `DragGestureRecognizer` should "observe" the event
        stream to, in order to detect a drag initiating gesture.
        If this value is `null`, the
        `DragGestureRecognizer`
        is not associated with any `Component`.
    :   `sa` - the set (logical OR) of the `DnDConstants`
        that this Drag and Drop operation will support

    Throws:
    :   `IllegalArgumentException` - if ds is `null`.
  + ### DragGestureRecognizer

    protected DragGestureRecognizer([DragSource](DragSource.md "class in java.awt.dnd") ds,
    [Component](../Component.md "class in java.awt") c)

    Construct a new `DragGestureRecognizer`
    given the `DragSource` to be used
    in this Drag and Drop operation, and
    the `Component` this
    `DragGestureRecognizer`
    should "observe" for drag initiating gestures.

    Parameters:
    :   `ds` - the `DragSource` this
        `DragGestureRecognizer`
        will use to process the Drag and Drop operation
    :   `c` - the `Component`
        this `DragGestureRecognizer`
        should "observe" the event stream to,
        in order to detect a drag initiating gesture.
        If this value is `null`,
        the `DragGestureRecognizer`
        is not associated with any `Component`.

    Throws:
    :   `IllegalArgumentException` - if ds is `null`.
  + ### DragGestureRecognizer

    protected DragGestureRecognizer([DragSource](DragSource.md "class in java.awt.dnd") ds)

    Construct a new `DragGestureRecognizer`
    given the `DragSource` to be used in this
    Drag and Drop operation.

    Parameters:
    :   `ds` - the `DragSource` this
        `DragGestureRecognizer` will
        use to process the Drag and Drop operation

    Throws:
    :   `IllegalArgumentException` - if ds is `null`.
* ## Method Details

  + ### registerListeners

    protected abstract void registerListeners()

    register this DragGestureRecognizer's Listeners with the Component
    subclasses must override this method
  + ### unregisterListeners

    protected abstract void unregisterListeners()

    unregister this DragGestureRecognizer's Listeners with the Component
    subclasses must override this method
  + ### getDragSource

    public [DragSource](DragSource.md "class in java.awt.dnd") getDragSource()

    This method returns the `DragSource`
    this `DragGestureRecognizer`
    will use in order to process the Drag and Drop
    operation.

    Returns:
    :   the DragSource
  + ### getComponent

    public [Component](../Component.md "class in java.awt") getComponent()

    This method returns the `Component`
    that is to be "observed" by the
    `DragGestureRecognizer`
    for drag initiating gestures.

    Returns:
    :   The Component this DragGestureRecognizer
        is associated with
  + ### setComponent

    public void setComponent([Component](../Component.md "class in java.awt") c)

    set the Component that the DragGestureRecognizer is associated with
    registerListeners() and unregisterListeners() are called as a side
    effect as appropriate.

    Parameters:
    :   `c` - The `Component` or `null`
  + ### getSourceActions

    public int getSourceActions()

    This method returns an int representing the
    type of action(s) this Drag and Drop
    operation will support.

    Returns:
    :   the currently permitted source action(s)
  + ### setSourceActions

    public void setSourceActions(int actions)

    This method sets the permitted source drag action(s)
    for this Drag and Drop operation.

    Parameters:
    :   `actions` - the permitted source drag action(s)
  + ### getTriggerEvent

    public [InputEvent](../event/InputEvent.md "class in java.awt.event") getTriggerEvent()

    This method returns the first event in the
    series of events that initiated
    the Drag and Drop operation.

    Returns:
    :   the initial event that triggered the drag gesture
  + ### resetRecognizer

    public void resetRecognizer()

    Reset the Recognizer, if its currently recognizing a gesture, ignore
    it.
  + ### addDragGestureListener

    public void addDragGestureListener([DragGestureListener](DragGestureListener.md "interface in java.awt.dnd") dgl)
    throws [TooManyListenersException](../../../../java.base/java/util/TooManyListenersException.md "class in java.util")

    Register a new `DragGestureListener`.

    Parameters:
    :   `dgl` - the `DragGestureListener` to register
        with this `DragGestureRecognizer`.

    Throws:
    :   `TooManyListenersException` - if a
        `DragGestureListener` has already been added.
  + ### removeDragGestureListener

    public void removeDragGestureListener([DragGestureListener](DragGestureListener.md "interface in java.awt.dnd") dgl)

    unregister the current DragGestureListener

    Parameters:
    :   `dgl` - the `DragGestureListener` to unregister
        from this `DragGestureRecognizer`

    Throws:
    :   `IllegalArgumentException` - if
        dgl is not (equal to) the currently registered `DragGestureListener`.
  + ### fireDragGestureRecognized

    protected void fireDragGestureRecognized(int dragAction,
    [Point](../Point.md "class in java.awt") p)

    Notify the DragGestureListener that a Drag and Drop initiating
    gesture has occurred. Then reset the state of the Recognizer.

    Parameters:
    :   `dragAction` - The action initially selected by the users gesture
    :   `p` - The point (in Component coords) where the gesture originated
  + ### appendEvent

    protected void appendEvent([InputEvent](../event/InputEvent.md "class in java.awt.event") awtie)

    Listeners registered on the Component by this Recognizer shall record
    all Events that are recognized as part of the series of Events that go
    to comprise a Drag and Drop initiating gesture via this API.

    This method is used by a `DragGestureRecognizer`
    implementation to add an `InputEvent`
    subclass (that it believes is one in a series
    of events that comprise a Drag and Drop operation)
    to the array of events that this
    `DragGestureRecognizer` maintains internally.

    Parameters:
    :   `awtie` - the `InputEvent`
        to add to this `DragGestureRecognizer`'s
        internal array of events. Note that `null`
        is not a valid value, and will be ignored.