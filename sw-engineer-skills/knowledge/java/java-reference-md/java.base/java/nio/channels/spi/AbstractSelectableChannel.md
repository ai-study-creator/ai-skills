Module [java.base](../../../../module-summary.md)

Package [java.nio.channels.spi](package-summary.md)

# Class AbstractSelectableChannel

[java.lang.Object](../../../lang/Object.md "class in java.lang")

[java.nio.channels.spi.AbstractInterruptibleChannel](AbstractInterruptibleChannel.md "class in java.nio.channels.spi")

[java.nio.channels.SelectableChannel](../SelectableChannel.md "class in java.nio.channels")

java.nio.channels.spi.AbstractSelectableChannel

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Channel`, `InterruptibleChannel`

Direct Known Subclasses:
:   `DatagramChannel`, `Pipe.SinkChannel`, `Pipe.SourceChannel`, `ServerSocketChannel`, `SocketChannel`

---

public abstract class AbstractSelectableChannel
extends [SelectableChannel](../SelectableChannel.md "class in java.nio.channels")

Base implementation class for selectable channels.

This class defines methods that handle the mechanics of channel
registration, deregistration, and closing. It maintains the current
blocking mode of this channel as well as its current set of selection keys.
It performs all of the synchronization required to implement the [`SelectableChannel`](../SelectableChannel.md "class in java.nio.channels") specification. Implementations of the
protected abstract methods defined in this class need not synchronize
against other threads that might be engaged in the same operations.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractSelectableChannel(SelectorProvider provider)`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Object`

  `blockingLock()`

  Retrieves the object upon which the [`configureBlocking`](../SelectableChannel.md#configureBlocking(boolean)) and [`register`](../SelectableChannel.md#register(java.nio.channels.Selector,int,java.lang.Object)) methods synchronize.

  `final SelectableChannel`

  `configureBlocking(boolean block)`

  Adjusts this channel's blocking mode.

  `protected final void`

  `implCloseChannel()`

  Closes this channel.

  `protected abstract void`

  `implCloseSelectableChannel()`

  Closes this selectable channel.

  `protected abstract void`

  `implConfigureBlocking(boolean block)`

  Adjusts this channel's blocking mode.

  `final boolean`

  `isBlocking()`

  Tells whether or not every I/O operation on this channel will block
  until it completes.

  `final boolean`

  `isRegistered()`

  Tells whether or not this channel is currently registered with any
  selectors.

  `final SelectionKey`

  `keyFor(Selector sel)`

  Retrieves the key representing the channel's registration with the given
  selector.

  `final SelectorProvider`

  `provider()`

  Returns the provider that created this channel.

  `final SelectionKey`

  `register(Selector sel,
  int ops,
  Object att)`

  Registers this channel with the given selector, returning a selection key.

  ### Methods inherited from class java.nio.channels.[SelectableChannel](../SelectableChannel.md "class in java.nio.channels")

  `register, validOps`

  ### Methods inherited from class java.nio.channels.spi.[AbstractInterruptibleChannel](AbstractInterruptibleChannel.md "class in java.nio.channels.spi")

  `begin, close, end, isOpen`

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.nio.channels.[Channel](../Channel.md "interface in java.nio.channels")

  `isOpen`

* ## Constructor Details

  + ### AbstractSelectableChannel

    protected AbstractSelectableChannel([SelectorProvider](SelectorProvider.md "class in java.nio.channels.spi") provider)

    Initializes a new instance of this class.

    Parameters:
    :   `provider` - The provider that created this channel
* ## Method Details

  + ### provider

    public final [SelectorProvider](SelectorProvider.md "class in java.nio.channels.spi") provider()

    Returns the provider that created this channel.

    Specified by:
    :   `provider` in class `SelectableChannel`

    Returns:
    :   The provider that created this channel
  + ### isRegistered

    public final boolean isRegistered()

    Description copied from class: `SelectableChannel`

    Tells whether or not this channel is currently registered with any
    selectors. A newly-created channel is not registered.

    Due to the inherent delay between key cancellation and channel
    deregistration, a channel may remain registered for some time after all
    of its keys have been cancelled. A channel may also remain registered
    for some time after it is closed.

    Specified by:
    :   `isRegistered` in class `SelectableChannel`

    Returns:
    :   `true` if, and only if, this channel is registered
  + ### keyFor

    public final [SelectionKey](../SelectionKey.md "class in java.nio.channels") keyFor([Selector](../Selector.md "class in java.nio.channels") sel)

    Description copied from class: `SelectableChannel`

    Retrieves the key representing the channel's registration with the given
    selector.

    Specified by:
    :   `keyFor` in class `SelectableChannel`

    Parameters:
    :   `sel` - The selector

    Returns:
    :   The key returned when this channel was last registered with the
        given selector, or `null` if this channel is not
        currently registered with that selector
  + ### register

    public final [SelectionKey](../SelectionKey.md "class in java.nio.channels") register([Selector](../Selector.md "class in java.nio.channels") sel,
    int ops,
    [Object](../../../lang/Object.md "class in java.lang") att)
    throws [ClosedChannelException](../ClosedChannelException.md "class in java.nio.channels")

    Registers this channel with the given selector, returning a selection key.

    This method first verifies that this channel is open and that the
    given initial interest set is valid.

    If this channel is already registered with the given selector then
    the selection key representing that registration is returned after
    setting its interest set to the given value.

    Otherwise this channel has not yet been registered with the given
    selector, so the [`register`](AbstractSelector.md#register(java.nio.channels.spi.AbstractSelectableChannel,int,java.lang.Object)) method of
    the selector is invoked while holding the appropriate locks. The
    resulting key is added to this channel's key set before being returned.

    Specified by:
    :   `register` in class `SelectableChannel`

    Parameters:
    :   `sel` - The selector with which this channel is to be registered
    :   `ops` - The interest set for the resulting key
    :   `att` - The attachment for the resulting key; may be `null`

    Returns:
    :   A key representing the registration of this channel with
        the given selector

    Throws:
    :   `ClosedSelectorException` - If the selector is closed
    :   `IllegalBlockingModeException` - If this channel is in blocking mode
    :   `IllegalSelectorException` - If this channel was not created by the same provider
        as the given selector
    :   `CancelledKeyException` - If this channel is currently registered with the given selector
        but the corresponding key has already been cancelled
    :   `IllegalArgumentException` - If a bit in the `ops` set does not correspond to an
        operation that is supported by this channel, that is, if
        `set & ~validOps() != 0`
    :   `ClosedChannelException` - If this channel is closed
  + ### implCloseChannel

    protected final void implCloseChannel()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Closes this channel.

    This method, which is specified in the [`AbstractInterruptibleChannel`](AbstractInterruptibleChannel.md "class in java.nio.channels.spi") class and is invoked by the [`close`](../Channel.md#close()) method, in turn invokes the
    [`implCloseSelectableChannel`](#implCloseSelectableChannel()) method in
    order to perform the actual work of closing this channel. It then
    cancels all of this channel's keys.

    Specified by:
    :   `implCloseChannel` in class `AbstractInterruptibleChannel`

    Throws:
    :   `IOException` - If an I/O error occurs while closing the channel
  + ### implCloseSelectableChannel

    protected abstract void implCloseSelectableChannel()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Closes this selectable channel.

    This method is invoked by the [`close`](../Channel.md#close()) method in order to perform the actual work of closing the
    channel. This method is only invoked if the channel has not yet been
    closed, and it is never invoked more than once.

    An implementation of this method must arrange for any other thread
    that is blocked in an I/O operation upon this channel to return
    immediately, either by throwing an exception or by returning normally.

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### isBlocking

    public final boolean isBlocking()

    Description copied from class: `SelectableChannel`

    Tells whether or not every I/O operation on this channel will block
    until it completes. A newly-created channel is always in blocking mode.

    If this channel is closed then the value returned by this method is
    not specified.

    Specified by:
    :   `isBlocking` in class `SelectableChannel`

    Returns:
    :   `true` if, and only if, this channel is in blocking mode
  + ### blockingLock

    public final [Object](../../../lang/Object.md "class in java.lang") blockingLock()

    Description copied from class: `SelectableChannel`

    Retrieves the object upon which the [`configureBlocking`](../SelectableChannel.md#configureBlocking(boolean)) and [`register`](../SelectableChannel.md#register(java.nio.channels.Selector,int,java.lang.Object)) methods synchronize.
    This is often useful in the implementation of adaptors that require a
    specific blocking mode to be maintained for a short period of time.

    Specified by:
    :   `blockingLock` in class `SelectableChannel`

    Returns:
    :   The blocking-mode lock object
  + ### configureBlocking

    public final [SelectableChannel](../SelectableChannel.md "class in java.nio.channels") configureBlocking(boolean block)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Adjusts this channel's blocking mode.

    If the given blocking mode is different from the current blocking
    mode then this method invokes the [`implConfigureBlocking`](#implConfigureBlocking(boolean)) method, while holding the appropriate locks, in
    order to change the mode.

    Specified by:
    :   `configureBlocking` in class `SelectableChannel`

    Parameters:
    :   `block` - If `true` then this channel will be placed in
        blocking mode; if `false` then it will be placed
        non-blocking mode

    Returns:
    :   This selectable channel

    Throws:
    :   `ClosedChannelException` - If this channel is closed
    :   `IOException` - If an I/O error occurs
  + ### implConfigureBlocking

    protected abstract void implConfigureBlocking(boolean block)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Adjusts this channel's blocking mode.

    This method is invoked by the [`configureBlocking`](#configureBlocking(boolean)) method in order to perform the actual work of
    changing the blocking mode. This method is only invoked if the new mode
    is different from the current mode.

    Parameters:
    :   `block` - If `true` then this channel will be placed in
        blocking mode; if `false` then it will be placed
        non-blocking mode

    Throws:
    :   `IOException` - If an I/O error occurs