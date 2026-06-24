Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DragSource

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.dnd.DragSource

All Implemented Interfaces:
:   `Serializable`

---

public class DragSource
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `DragSource` is the entity responsible
for the initiation of the Drag
and Drop operation, and may be used in a number of scenarios:

* 1 default instance per JVM for the lifetime of that JVM.* 1 instance per class of potential Drag Initiator object (e.g
    TextField). [implementation dependent]* 1 per instance of a particular
      `Component`, or application specific
      object associated with a `Component`
      instance in the GUI. [implementation dependent]* Some other arbitrary association. [implementation dependent]

Once the `DragSource` is
obtained, a `DragGestureRecognizer` should
also be obtained to associate the `DragSource`
with a particular
`Component`.

The initial interpretation of the user's gesture,
and the subsequent starting of the drag operation
are the responsibility of the implementing
`Component`, which is usually
implemented by a `DragGestureRecognizer`.

When a drag gesture occurs, the
`DragSource`'s
startDrag() method shall be
invoked in order to cause processing
of the user's navigational
gestures and delivery of Drag and Drop
protocol notifications. A
`DragSource` shall only
permit a single Drag and Drop operation to be
current at any one time, and shall
reject any further startDrag() requests
by throwing an `IllegalDnDOperationException`
until such time as the extant operation is complete.

The startDrag() method invokes the
createDragSourceContext() method to
instantiate an appropriate
`DragSourceContext`
and associate the `DragSourceContextPeer`
with that.

If the Drag and Drop System is
unable to initiate a drag operation for
some reason, the startDrag() method throws
a `java.awt.dnd.InvalidDnDOperationException`
to signal such a condition. Typically this
exception is thrown when the underlying platform
system is either not in a state to
initiate a drag, or the parameters specified are invalid.

Note that during the drag, the
set of operations exposed by the source
at the start of the drag operation may not change
until the operation is complete.
The operation(s) are constant for the
duration of the operation with respect to the
`DragSource`.

Since:
:   1.2

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.awt.dnd.DragSource)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Cursor`

  `DefaultCopyDrop`

  The default `Cursor` to use with a copy operation indicating
  that a drop is currently allowed.

  `static final Cursor`

  `DefaultCopyNoDrop`

  The default `Cursor` to use with a copy operation indicating
  that a drop is currently not allowed.

  `static final Cursor`

  `DefaultLinkDrop`

  The default `Cursor` to use with a link operation indicating
  that a drop is currently allowed.

  `static final Cursor`

  `DefaultLinkNoDrop`

  The default `Cursor` to use with a link operation indicating
  that a drop is currently not allowed.

  `static final Cursor`

  `DefaultMoveDrop`

  The default `Cursor` to use with a move operation indicating
  that a drop is currently allowed.

  `static final Cursor`

  `DefaultMoveNoDrop`

  The default `Cursor` to use with a move operation indicating
  that a drop is currently not allowed.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DragSource()`

  Creates a new `DragSource`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addDragSourceListener(DragSourceListener dsl)`

  Adds the specified `DragSourceListener` to this
  `DragSource` to receive drag source events during drag
  operations initiated with this `DragSource`.

  `void`

  `addDragSourceMotionListener(DragSourceMotionListener dsml)`

  Adds the specified `DragSourceMotionListener` to this
  `DragSource` to receive drag motion events during drag
  operations initiated with this `DragSource`.

  `DragGestureRecognizer`

  `createDefaultDragGestureRecognizer(Component c,
  int actions,
  DragGestureListener dgl)`

  Creates a new `DragGestureRecognizer`
  that implements the default
  abstract subclass of `DragGestureRecognizer`
  for this `DragSource`,
  and sets the specified `Component`
  and `DragGestureListener` on the
  newly created object.

  `<T extends DragGestureRecognizer>  
  T`

  `createDragGestureRecognizer(Class<T> recognizerAbstractClass,
  Component c,
  int actions,
  DragGestureListener dgl)`

  Creates a new `DragGestureRecognizer`
  that implements the specified
  abstract subclass of
  `DragGestureRecognizer`, and
  sets the specified `Component`
  and `DragGestureListener` on
  the newly created object.

  `protected DragSourceContext`

  `createDragSourceContext(DragGestureEvent dgl,
  Cursor dragCursor,
  Image dragImage,
  Point imageOffset,
  Transferable t,
  DragSourceListener dsl)`

  Creates the `DragSourceContext` to handle the current drag
  operation.

  `static DragSource`

  `getDefaultDragSource()`

  Gets the `DragSource` object associated with
  the underlying platform.

  `DragSourceListener[]`

  `getDragSourceListeners()`

  Gets all the `DragSourceListener`s
  registered with this `DragSource`.

  `DragSourceMotionListener[]`

  `getDragSourceMotionListeners()`

  Gets all of the `DragSourceMotionListener`s
  registered with this `DragSource`.

  `static int`

  `getDragThreshold()`

  Returns the drag gesture motion threshold.

  `FlavorMap`

  `getFlavorMap()`

  This method returns the
  `FlavorMap` for this `DragSource`.

  `<T extends EventListener>  
  T[]`

  `getListeners(Class<T> listenerType)`

  Gets all the objects currently registered as
  `FooListener`s upon this `DragSource`.

  `static boolean`

  `isDragImageSupported()`

  Reports
  whether or not drag
  `Image` support
  is available on the underlying platform.

  `void`

  `removeDragSourceListener(DragSourceListener dsl)`

  Removes the specified `DragSourceListener` from this
  `DragSource`.

  `void`

  `removeDragSourceMotionListener(DragSourceMotionListener dsml)`

  Removes the specified `DragSourceMotionListener` from this
  `DragSource`.

  `void`

  `startDrag(DragGestureEvent trigger,
  Cursor dragCursor,
  Transferable transferable,
  DragSourceListener dsl)`

  Start a drag, given the `DragGestureEvent`
  that initiated the drag, the initial
  `Cursor` to
  use,
  the `Transferable` subject data
  of the drag, and the `DragSourceListener`.

  `void`

  `startDrag(DragGestureEvent trigger,
  Cursor dragCursor,
  Transferable transferable,
  DragSourceListener dsl,
  FlavorMap flavorMap)`

  Start a drag, given the `DragGestureEvent`
  that initiated the drag, the initial
  `Cursor` to use,
  the `Transferable` subject data
  of the drag, the `DragSourceListener`,
  and the `FlavorMap`.

  `void`

  `startDrag(DragGestureEvent trigger,
  Cursor dragCursor,
  Image dragImage,
  Point dragOffset,
  Transferable transferable,
  DragSourceListener dsl)`

  Start a drag, given the `DragGestureEvent`
  that initiated the drag, the initial `Cursor`
  to use,
  the `Image` to drag,
  the offset of the `Image` origin
  from the hotspot of the `Cursor`
  at the instant of the trigger,
  the subject data of the drag, and
  the `DragSourceListener`.

  `void`

  `startDrag(DragGestureEvent trigger,
  Cursor dragCursor,
  Image dragImage,
  Point imageOffset,
  Transferable transferable,
  DragSourceListener dsl,
  FlavorMap flavorMap)`

  Start a drag, given the `DragGestureEvent`
  that initiated the drag, the initial
  `Cursor` to use,
  the `Image` to drag,
  the offset of the `Image` origin
  from the hotspot of the `Cursor` at
  the instant of the trigger,
  the `Transferable` subject data
  of the drag, the `DragSourceListener`,
  and the `FlavorMap`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DefaultCopyDrop

    public static final [Cursor](../Cursor.md "class in java.awt") DefaultCopyDrop

    The default `Cursor` to use with a copy operation indicating
    that a drop is currently allowed. `null` if
    `GraphicsEnvironment.isHeadless()` returns `true`.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
  + ### DefaultMoveDrop

    public static final [Cursor](../Cursor.md "class in java.awt") DefaultMoveDrop

    The default `Cursor` to use with a move operation indicating
    that a drop is currently allowed. `null` if
    `GraphicsEnvironment.isHeadless()` returns `true`.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
  + ### DefaultLinkDrop

    public static final [Cursor](../Cursor.md "class in java.awt") DefaultLinkDrop

    The default `Cursor` to use with a link operation indicating
    that a drop is currently allowed. `null` if
    `GraphicsEnvironment.isHeadless()` returns `true`.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
  + ### DefaultCopyNoDrop

    public static final [Cursor](../Cursor.md "class in java.awt") DefaultCopyNoDrop

    The default `Cursor` to use with a copy operation indicating
    that a drop is currently not allowed. `null` if
    `GraphicsEnvironment.isHeadless()` returns `true`.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
  + ### DefaultMoveNoDrop

    public static final [Cursor](../Cursor.md "class in java.awt") DefaultMoveNoDrop

    The default `Cursor` to use with a move operation indicating
    that a drop is currently not allowed. `null` if
    `GraphicsEnvironment.isHeadless()` returns `true`.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
  + ### DefaultLinkNoDrop

    public static final [Cursor](../Cursor.md "class in java.awt") DefaultLinkNoDrop

    The default `Cursor` to use with a link operation indicating
    that a drop is currently not allowed. `null` if
    `GraphicsEnvironment.isHeadless()` returns `true`.

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
* ## Constructor Details

  + ### DragSource

    public DragSource()
    throws [HeadlessException](../HeadlessException.md "class in java.awt")

    Creates a new `DragSource`.

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
* ## Method Details

  + ### getDefaultDragSource

    public static [DragSource](DragSource.md "class in java.awt.dnd") getDefaultDragSource()

    Gets the `DragSource` object associated with
    the underlying platform.

    Returns:
    :   the platform DragSource

    Throws:
    :   `HeadlessException` - if GraphicsEnvironment.isHeadless()
        returns true

    See Also:
    :   - [`GraphicsEnvironment.isHeadless()`](../GraphicsEnvironment.md#isHeadless())
  + ### isDragImageSupported

    public static boolean isDragImageSupported()

    Reports
    whether or not drag
    `Image` support
    is available on the underlying platform.

    Returns:
    :   if the Drag Image support is available on this platform
  + ### startDrag

    public void startDrag([DragGestureEvent](DragGestureEvent.md "class in java.awt.dnd") trigger,
    [Cursor](../Cursor.md "class in java.awt") dragCursor,
    [Image](../Image.md "class in java.awt") dragImage,
    [Point](../Point.md "class in java.awt") imageOffset,
    [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") transferable,
    [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl,
    [FlavorMap](../../../../java.datatransfer/java/awt/datatransfer/FlavorMap.md "interface in java.awt.datatransfer") flavorMap)
    throws [InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

    Start a drag, given the `DragGestureEvent`
    that initiated the drag, the initial
    `Cursor` to use,
    the `Image` to drag,
    the offset of the `Image` origin
    from the hotspot of the `Cursor` at
    the instant of the trigger,
    the `Transferable` subject data
    of the drag, the `DragSourceListener`,
    and the `FlavorMap`.

    Parameters:
    :   `trigger` - the `DragGestureEvent` that initiated the drag
    :   `dragCursor` - the initial `Cursor` for this drag operation
        or `null` for the default cursor handling;
        see [DragSourceContext](DragSourceContext.md#defaultCursor)
        for more details on the cursor handling mechanism during drag and drop
    :   `dragImage` - the image to drag or `null`
    :   `imageOffset` - the offset of the `Image` origin from the hotspot
        of the `Cursor` at the instant of the trigger
    :   `transferable` - the subject data of the drag
    :   `dsl` - the `DragSourceListener`
    :   `flavorMap` - the `FlavorMap` to use, or `null`

    Throws:
    :   `InvalidDnDOperationException` - if the Drag and Drop
        system is unable to initiate a drag operation, or if the user
        attempts to start a drag while an existing drag operation
        is still executing
  + ### startDrag

    public void startDrag([DragGestureEvent](DragGestureEvent.md "class in java.awt.dnd") trigger,
    [Cursor](../Cursor.md "class in java.awt") dragCursor,
    [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") transferable,
    [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl,
    [FlavorMap](../../../../java.datatransfer/java/awt/datatransfer/FlavorMap.md "interface in java.awt.datatransfer") flavorMap)
    throws [InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

    Start a drag, given the `DragGestureEvent`
    that initiated the drag, the initial
    `Cursor` to use,
    the `Transferable` subject data
    of the drag, the `DragSourceListener`,
    and the `FlavorMap`.

    Parameters:
    :   `trigger` - the `DragGestureEvent` that
        initiated the drag
    :   `dragCursor` - the initial `Cursor` for this drag operation
        or `null` for the default cursor handling;
        see [DragSourceContext](DragSourceContext.md#defaultCursor)
        for more details on the cursor handling mechanism during drag and drop
    :   `transferable` - the subject data of the drag
    :   `dsl` - the `DragSourceListener`
    :   `flavorMap` - the `FlavorMap` to use or `null`

    Throws:
    :   `InvalidDnDOperationException` - if the Drag and Drop
        system is unable to initiate a drag operation, or if the user
        attempts to start a drag while an existing drag operation
        is still executing
  + ### startDrag

    public void startDrag([DragGestureEvent](DragGestureEvent.md "class in java.awt.dnd") trigger,
    [Cursor](../Cursor.md "class in java.awt") dragCursor,
    [Image](../Image.md "class in java.awt") dragImage,
    [Point](../Point.md "class in java.awt") dragOffset,
    [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") transferable,
    [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)
    throws [InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

    Start a drag, given the `DragGestureEvent`
    that initiated the drag, the initial `Cursor`
    to use,
    the `Image` to drag,
    the offset of the `Image` origin
    from the hotspot of the `Cursor`
    at the instant of the trigger,
    the subject data of the drag, and
    the `DragSourceListener`.

    Parameters:
    :   `trigger` - the `DragGestureEvent` that initiated the drag
    :   `dragCursor` - the initial `Cursor` for this drag operation
        or `null` for the default cursor handling;
        see [DragSourceContext](DragSourceContext.md#defaultCursor)
        for more details on the cursor handling mechanism during drag and drop
    :   `dragImage` - the `Image` to drag or `null`
    :   `dragOffset` - the offset of the `Image` origin from the hotspot
        of the `Cursor` at the instant of the trigger
    :   `transferable` - the subject data of the drag
    :   `dsl` - the `DragSourceListener`

    Throws:
    :   `InvalidDnDOperationException` - if the Drag and Drop
        system is unable to initiate a drag operation, or if the user
        attempts to start a drag while an existing drag operation
        is still executing
  + ### startDrag

    public void startDrag([DragGestureEvent](DragGestureEvent.md "class in java.awt.dnd") trigger,
    [Cursor](../Cursor.md "class in java.awt") dragCursor,
    [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") transferable,
    [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)
    throws [InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

    Start a drag, given the `DragGestureEvent`
    that initiated the drag, the initial
    `Cursor` to
    use,
    the `Transferable` subject data
    of the drag, and the `DragSourceListener`.

    Parameters:
    :   `trigger` - the `DragGestureEvent` that initiated the drag
    :   `dragCursor` - the initial `Cursor` for this drag operation
        or `null` for the default cursor handling;
        see [DragSourceContext](DragSourceContext.md#defaultCursor) class
        for more details on the cursor handling mechanism during drag and drop
    :   `transferable` - the subject data of the drag
    :   `dsl` - the `DragSourceListener`

    Throws:
    :   `InvalidDnDOperationException` - if the Drag and Drop
        system is unable to initiate a drag operation, or if the user
        attempts to start a drag while an existing drag operation
        is still executing
  + ### createDragSourceContext

    protected [DragSourceContext](DragSourceContext.md "class in java.awt.dnd") createDragSourceContext([DragGestureEvent](DragGestureEvent.md "class in java.awt.dnd") dgl,
    [Cursor](../Cursor.md "class in java.awt") dragCursor,
    [Image](../Image.md "class in java.awt") dragImage,
    [Point](../Point.md "class in java.awt") imageOffset,
    [Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer") t,
    [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)

    Creates the `DragSourceContext` to handle the current drag
    operation.

    To incorporate a new `DragSourceContext`
    subclass, subclass `DragSource` and
    override this method.

    If `dragImage` is `null`, no image is used
    to represent the drag over feedback for this drag operation, but
    `NullPointerException` is not thrown.

    If `dsl` is `null`, no drag source listener
    is registered with the created `DragSourceContext`,
    but `NullPointerException` is not thrown.

    Parameters:
    :   `dgl` - The `DragGestureEvent` that triggered the
        drag
    :   `dragCursor` - The initial `Cursor` for this drag operation
        or `null` for the default cursor handling;
        see [DragSourceContext](DragSourceContext.md#defaultCursor) class
        for more details on the cursor handling mechanism during drag and drop
    :   `dragImage` - The `Image` to drag or `null`
    :   `imageOffset` - The offset of the `Image` origin from the
        hotspot of the cursor at the instant of the trigger
    :   `t` - The subject data of the drag
    :   `dsl` - The `DragSourceListener`

    Returns:
    :   the `DragSourceContext`

    Throws:
    :   `NullPointerException` - if `dscp` is `null`
    :   `NullPointerException` - if `dgl` is `null`
    :   `NullPointerException` - if `dragImage` is not
        `null` and `imageOffset` is `null`
    :   `NullPointerException` - if `t` is `null`
    :   `IllegalArgumentException` - if the `Component`
        associated with the trigger event is `null`.
    :   `IllegalArgumentException` - if the `DragSource` for the
        trigger event is `null`.
    :   `IllegalArgumentException` - if the drag action for the
        trigger event is `DnDConstants.ACTION_NONE`.
    :   `IllegalArgumentException` - if the source actions for the
        `DragGestureRecognizer` associated with the trigger
        event are equal to `DnDConstants.ACTION_NONE`.
  + ### getFlavorMap

    public [FlavorMap](../../../../java.datatransfer/java/awt/datatransfer/FlavorMap.md "interface in java.awt.datatransfer") getFlavorMap()

    This method returns the
    `FlavorMap` for this `DragSource`.

    Returns:
    :   the `FlavorMap` for this `DragSource`
  + ### createDragGestureRecognizer

    public <T extends [DragGestureRecognizer](DragGestureRecognizer.md "class in java.awt.dnd")> T createDragGestureRecognizer([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> recognizerAbstractClass,
    [Component](../Component.md "class in java.awt") c,
    int actions,
    [DragGestureListener](DragGestureListener.md "interface in java.awt.dnd") dgl)

    Creates a new `DragGestureRecognizer`
    that implements the specified
    abstract subclass of
    `DragGestureRecognizer`, and
    sets the specified `Component`
    and `DragGestureListener` on
    the newly created object.

    Type Parameters:
    :   `T` - the type of `DragGestureRecognizer` to create

    Parameters:
    :   `recognizerAbstractClass` - the requested abstract type
    :   `c` - the `Component` target
    :   `actions` - the permitted source drag actions
    :   `dgl` - the `DragGestureListener` to notify

    Returns:
    :   the new `DragGestureRecognizer` or `null`
        if the `Toolkit.createDragGestureRecognizer` method
        has no implementation available for
        the requested `DragGestureRecognizer`
        subclass and returns `null`
  + ### createDefaultDragGestureRecognizer

    public [DragGestureRecognizer](DragGestureRecognizer.md "class in java.awt.dnd") createDefaultDragGestureRecognizer([Component](../Component.md "class in java.awt") c,
    int actions,
    [DragGestureListener](DragGestureListener.md "interface in java.awt.dnd") dgl)

    Creates a new `DragGestureRecognizer`
    that implements the default
    abstract subclass of `DragGestureRecognizer`
    for this `DragSource`,
    and sets the specified `Component`
    and `DragGestureListener` on the
    newly created object.
    For this `DragSource`
    the default is `MouseDragGestureRecognizer`.

    Parameters:
    :   `c` - the `Component` target for the recognizer
    :   `actions` - the permitted source actions
    :   `dgl` - the `DragGestureListener` to notify

    Returns:
    :   the new `DragGestureRecognizer` or `null`
        if the `Toolkit.createDragGestureRecognizer` method
        has no implementation available for
        the requested `DragGestureRecognizer`
        subclass and returns `null`
  + ### addDragSourceListener

    public void addDragSourceListener([DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)

    Adds the specified `DragSourceListener` to this
    `DragSource` to receive drag source events during drag
    operations initiated with this `DragSource`.
    If a `null` listener is specified, no action is taken and no
    exception is thrown.

    Parameters:
    :   `dsl` - the `DragSourceListener` to add

    Since:
    :   1.4

    See Also:
    :   - [`removeDragSourceListener(java.awt.dnd.DragSourceListener)`](#removeDragSourceListener(java.awt.dnd.DragSourceListener))
        - [`getDragSourceListeners()`](#getDragSourceListeners())
  + ### removeDragSourceListener

    public void removeDragSourceListener([DragSourceListener](DragSourceListener.md "interface in java.awt.dnd") dsl)

    Removes the specified `DragSourceListener` from this
    `DragSource`.
    If a `null` listener is specified, no action is taken and no
    exception is thrown.
    If the listener specified by the argument was not previously added to
    this `DragSource`, no action is taken and no exception
    is thrown.

    Parameters:
    :   `dsl` - the `DragSourceListener` to remove

    Since:
    :   1.4

    See Also:
    :   - [`addDragSourceListener(java.awt.dnd.DragSourceListener)`](#addDragSourceListener(java.awt.dnd.DragSourceListener))
        - [`getDragSourceListeners()`](#getDragSourceListeners())
  + ### getDragSourceListeners

    public [DragSourceListener](DragSourceListener.md "interface in java.awt.dnd")[] getDragSourceListeners()

    Gets all the `DragSourceListener`s
    registered with this `DragSource`.

    Returns:
    :   all of this `DragSource`'s
        `DragSourceListener`s or an empty array if no
        such listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addDragSourceListener(java.awt.dnd.DragSourceListener)`](#addDragSourceListener(java.awt.dnd.DragSourceListener))
        - [`removeDragSourceListener(java.awt.dnd.DragSourceListener)`](#removeDragSourceListener(java.awt.dnd.DragSourceListener))
  + ### addDragSourceMotionListener

    public void addDragSourceMotionListener([DragSourceMotionListener](DragSourceMotionListener.md "interface in java.awt.dnd") dsml)

    Adds the specified `DragSourceMotionListener` to this
    `DragSource` to receive drag motion events during drag
    operations initiated with this `DragSource`.
    If a `null` listener is specified, no action is taken and no
    exception is thrown.

    Parameters:
    :   `dsml` - the `DragSourceMotionListener` to add

    Since:
    :   1.4

    See Also:
    :   - [`removeDragSourceMotionListener(java.awt.dnd.DragSourceMotionListener)`](#removeDragSourceMotionListener(java.awt.dnd.DragSourceMotionListener))
        - [`getDragSourceMotionListeners()`](#getDragSourceMotionListeners())
  + ### removeDragSourceMotionListener

    public void removeDragSourceMotionListener([DragSourceMotionListener](DragSourceMotionListener.md "interface in java.awt.dnd") dsml)

    Removes the specified `DragSourceMotionListener` from this
    `DragSource`.
    If a `null` listener is specified, no action is taken and no
    exception is thrown.
    If the listener specified by the argument was not previously added to
    this `DragSource`, no action is taken and no exception
    is thrown.

    Parameters:
    :   `dsml` - the `DragSourceMotionListener` to remove

    Since:
    :   1.4

    See Also:
    :   - [`addDragSourceMotionListener(java.awt.dnd.DragSourceMotionListener)`](#addDragSourceMotionListener(java.awt.dnd.DragSourceMotionListener))
        - [`getDragSourceMotionListeners()`](#getDragSourceMotionListeners())
  + ### getDragSourceMotionListeners

    public [DragSourceMotionListener](DragSourceMotionListener.md "interface in java.awt.dnd")[] getDragSourceMotionListeners()

    Gets all of the `DragSourceMotionListener`s
    registered with this `DragSource`.

    Returns:
    :   all of this `DragSource`'s
        `DragSourceMotionListener`s or an empty array if no
        such listeners are currently registered

    Since:
    :   1.4

    See Also:
    :   - [`addDragSourceMotionListener(java.awt.dnd.DragSourceMotionListener)`](#addDragSourceMotionListener(java.awt.dnd.DragSourceMotionListener))
        - [`removeDragSourceMotionListener(java.awt.dnd.DragSourceMotionListener)`](#removeDragSourceMotionListener(java.awt.dnd.DragSourceMotionListener))
  + ### getListeners

    public <T extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")> T[] getListeners([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> listenerType)

    Gets all the objects currently registered as
    `FooListener`s upon this `DragSource`.
    `FooListener`s are registered using the
    `addFooListener` method.

    Type Parameters:
    :   `T` - the type of listener objects

    Parameters:
    :   `listenerType` - the type of listeners requested; this parameter
        should specify an interface that descends from
        `java.util.EventListener`

    Returns:
    :   an array of all objects registered as
        `FooListener`s on this
        `DragSource`, or an empty array if no such listeners
        have been added

    Throws:
    :   `ClassCastException` - if `listenerType`
        doesn't specify a class or interface that implements
        `java.util.EventListener`

    Since:
    :   1.4

    See Also:
    :   - [`getDragSourceListeners()`](#getDragSourceListeners())
        - [`getDragSourceMotionListeners()`](#getDragSourceMotionListeners())
  + ### getDragThreshold

    public static int getDragThreshold()

    Returns the drag gesture motion threshold. The drag gesture motion threshold
    defines the recommended behavior for [`MouseDragGestureRecognizer`](MouseDragGestureRecognizer.md "class in java.awt.dnd")s.

    If the system property `awt.dnd.drag.threshold` is set to
    a positive integer, this method returns the value of the system property;
    otherwise if a pertinent desktop property is available and supported by
    the implementation of the Java platform, this method returns the value of
    that property; otherwise this method returns some default value.
    The pertinent desktop property can be queried using
    `java.awt.Toolkit.getDesktopProperty("DnD.gestureMotionThreshold")`.

    Returns:
    :   the drag gesture motion threshold

    Since:
    :   1.5

    See Also:
    :   - [`MouseDragGestureRecognizer`](MouseDragGestureRecognizer.md "class in java.awt.dnd")