Module [java.base](../../../../module-summary.md)

Package [java.nio.channels.spi](package-summary.md)

# Class AbstractSelector

[java.lang.Object](../../../lang/Object.md "class in java.lang")

[java.nio.channels.Selector](../Selector.md "class in java.nio.channels")

java.nio.channels.spi.AbstractSelector

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public abstract class AbstractSelector
extends [Selector](../Selector.md "class in java.nio.channels")

Base implementation class for selectors.

This class encapsulates the low-level machinery required to implement
the interruption of selection operations. A concrete selector class must
invoke the [`begin`](#begin()) and [`end`](#end()) methods before and
after, respectively, invoking an I/O operation that might block
indefinitely. In order to ensure that the [`end`](#end()) method is always
invoked, these methods should be used within a
`try` ... `finally` block:

Copy![Copy snippet](../../../../../copy.svg)

```
    try {
        begin();
        // Perform blocking I/O operation here
        ...
    } finally {
        end();
    }
```

This class also defines methods for maintaining a selector's
cancelled-key set and for removing a key from its channel's key set, and
declares the abstract [`register`](#register(java.nio.channels.spi.AbstractSelectableChannel,int,java.lang.Object)) method that is invoked by a
selectable channel's [`register`](AbstractSelectableChannel.md#register(java.nio.channels.Selector,int,java.lang.Object))
method in order to perform the actual work of registering a channel.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractSelector(SelectorProvider provider)`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected final void`

  `begin()`

  Marks the beginning of an I/O operation that might block indefinitely.

  `protected final Set<SelectionKey>`

  `cancelledKeys()`

  Retrieves this selector's cancelled-key set.

  `final void`

  `close()`

  Closes this selector.

  `protected final void`

  `deregister(AbstractSelectionKey key)`

  Removes the given key from its channel's key set.

  `protected final void`

  `end()`

  Marks the end of an I/O operation that might block indefinitely.

  `protected abstract void`

  `implCloseSelector()`

  Closes this selector.

  `final boolean`

  `isOpen()`

  Tells whether or not this selector is open.

  `final SelectorProvider`

  `provider()`

  Returns the provider that created this channel.

  `protected abstract SelectionKey`

  `register(AbstractSelectableChannel ch,
  int ops,
  Object att)`

  Registers the given channel with this selector.

  ### Methods inherited from class java.nio.channels.[Selector](../Selector.md "class in java.nio.channels")

  `keys, open, select, select, select, select, selectedKeys, selectNow, selectNow, wakeup`

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbstractSelector

    protected AbstractSelector([SelectorProvider](SelectorProvider.md "class in java.nio.channels.spi") provider)

    Initializes a new instance of this class.

    Parameters:
    :   `provider` - The provider that created this selector
* ## Method Details

  + ### close

    public final void close()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Closes this selector.

    If the selector has already been closed then this method returns
    immediately. Otherwise it marks the selector as closed and then invokes
    the [`implCloseSelector`](#implCloseSelector()) method in order to
    complete the close operation.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in class `Selector`

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### implCloseSelector

    protected abstract void implCloseSelector()
    throws [IOException](../../../io/IOException.md "class in java.io")

    Closes this selector.

    This method is invoked by the [`close`](#close()) method in order
    to perform the actual work of closing the selector. This method is only
    invoked if the selector has not yet been closed, and it is never invoked
    more than once.

    An implementation of this method must arrange for any other thread
    that is blocked in a selection operation upon this selector to return
    immediately as if by invoking the [`wakeup`](../Selector.md#wakeup()) method.

    Throws:
    :   `IOException` - If an I/O error occurs while closing the selector
  + ### isOpen

    public final boolean isOpen()

    Description copied from class: `Selector`

    Tells whether or not this selector is open.

    Specified by:
    :   `isOpen` in class `Selector`

    Returns:
    :   `true` if, and only if, this selector is open
  + ### provider

    public final [SelectorProvider](SelectorProvider.md "class in java.nio.channels.spi") provider()

    Returns the provider that created this channel.

    Specified by:
    :   `provider` in class `Selector`

    Returns:
    :   The provider that created this channel
  + ### cancelledKeys

    protected final [Set](../../../util/Set.md "interface in java.util")<[SelectionKey](../SelectionKey.md "class in java.nio.channels")> cancelledKeys()

    Retrieves this selector's cancelled-key set.

    This set should only be used while synchronized upon it.

    Returns:
    :   The cancelled-key set
  + ### register

    protected abstract [SelectionKey](../SelectionKey.md "class in java.nio.channels") register([AbstractSelectableChannel](AbstractSelectableChannel.md "class in java.nio.channels.spi") ch,
    int ops,
    [Object](../../../lang/Object.md "class in java.lang") att)

    Registers the given channel with this selector.

    This method is invoked by a channel's [`register`](AbstractSelectableChannel.md#register(java.nio.channels.Selector,int,java.lang.Object)) method in order to perform
    the actual work of registering the channel with this selector.

    Parameters:
    :   `ch` - The channel to be registered
    :   `ops` - The initial interest set, which must be valid
    :   `att` - The initial attachment for the resulting key

    Returns:
    :   A new key representing the registration of the given channel
        with this selector
  + ### deregister

    protected final void deregister([AbstractSelectionKey](AbstractSelectionKey.md "class in java.nio.channels.spi") key)

    Removes the given key from its channel's key set.

    This method must be invoked by the selector for each channel that it
    deregisters.

    Parameters:
    :   `key` - The selection key to be removed
  + ### begin

    protected final void begin()

    Marks the beginning of an I/O operation that might block indefinitely.

    This method should be invoked in tandem with the [`end`](#end())
    method, using a `try` ... `finally` block as
    shown [above](#be), in order to implement interruption for
    this selector.

    Invoking this method arranges for the selector's [`wakeup`](../Selector.md#wakeup()) method to be invoked if a thread's [`interrupt`](../../../lang/Thread.md#interrupt()) method is invoked while the thread is
    blocked in an I/O operation upon the selector.
  + ### end

    protected final void end()

    Marks the end of an I/O operation that might block indefinitely.

    This method should be invoked in tandem with the [`begin`](#begin())
    method, using a `try` ... `finally` block as
    shown [above](#be), in order to implement interruption for
    this selector.