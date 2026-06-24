Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class SelectionKey

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.channels.SelectionKey

Direct Known Subclasses:
:   `AbstractSelectionKey`

---

public abstract class SelectionKey
extends [Object](../../lang/Object.md "class in java.lang")

A token representing the registration of a [`SelectableChannel`](SelectableChannel.md "class in java.nio.channels") with a
[`Selector`](Selector.md "class in java.nio.channels").

A selection key is created each time a channel is registered with a
selector. A key remains valid until it is *cancelled* by invoking its
[`cancel`](#cancel()) method, by closing its channel, or by closing its
selector. Cancelling a key does not immediately remove it from its
selector; it is instead added to the selector's [*cancelled-key set*](Selector.md#ks) for removal during the
next selection operation. The validity of a key may be tested by invoking
its [`isValid`](#isValid()) method.

A selection key contains two *operation sets* represented as
integer values. Each bit of an operation set denotes a category of
selectable operations that are supported by the key's channel.

* The *interest set* determines which operation categories will
  be tested for readiness the next time one of the selector's selection
  methods is invoked. The interest set is initialized with the value given
  when the key is created; it may later be changed via the [`interestOps(int)`](#interestOps(int)) method.
* The *ready set* identifies the operation categories for which
  the key's channel has been detected to be ready by the key's selector.
  The ready set is initialized to zero when the key is created; it may later
  be updated by the selector during a selection operation, but it cannot be
  updated directly.

That a selection key's ready set indicates that its channel is ready for
some operation category is a hint, but not a guarantee, that an operation in
such a category may be performed by a thread without causing the thread to
block. A ready set is most likely to be accurate immediately after the
completion of a selection operation. It is likely to be made inaccurate by
external events and by I/O operations that are invoked upon the
corresponding channel.

This class defines all known operation-set bits, but precisely which
bits are supported by a given channel depends upon the type of the channel.
Each subclass of [`SelectableChannel`](SelectableChannel.md "class in java.nio.channels") defines a [`validOps()`](SelectableChannel.md#validOps()) method which returns a set
identifying just those operations that are supported by the channel. An
attempt to set or test an operation-set bit that is not supported by a key's
channel will result in an appropriate run-time exception.

It is often necessary to associate some application-specific data with a
selection key, for example an object that represents the state of a
higher-level protocol and handles readiness notifications in order to
implement that protocol. Selection keys therefore support the
*attachment* of a single arbitrary object to a key. An object can be
attached via the [`attach`](#attach(java.lang.Object)) method and then later retrieved via
the [`attachment`](#attachment()) method.

Selection keys are safe for use by multiple concurrent threads. A
selection operation will always use the interest-set value that was current
at the moment that the operation began.

Since:
:   1.4

See Also:
:   * [`SelectableChannel`](SelectableChannel.md "class in java.nio.channels")
    * [`Selector`](Selector.md "class in java.nio.channels")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `OP_ACCEPT`

  Operation-set bit for socket-accept operations.

  `static final int`

  `OP_CONNECT`

  Operation-set bit for socket-connect operations.

  `static final int`

  `OP_READ`

  Operation-set bit for read operations.

  `static final int`

  `OP_WRITE`

  Operation-set bit for write operations.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SelectionKey()`

  Constructs an instance of this class.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Object`

  `attach(Object ob)`

  Attaches the given object to this key.

  `final Object`

  `attachment()`

  Retrieves the current attachment.

  `abstract void`

  `cancel()`

  Requests that the registration of this key's channel with its selector
  be cancelled.

  `abstract SelectableChannel`

  `channel()`

  Returns the channel for which this key was created.

  `abstract int`

  `interestOps()`

  Retrieves this key's interest set.

  `abstract SelectionKey`

  `interestOps(int ops)`

  Sets this key's interest set to the given value.

  `int`

  `interestOpsAnd(int ops)`

  Atomically sets this key's interest set to the bitwise intersection ("and")
  of the existing interest set and the given value.

  `int`

  `interestOpsOr(int ops)`

  Atomically sets this key's interest set to the bitwise union ("or") of
  the existing interest set and the given value.

  `final boolean`

  `isAcceptable()`

  Tests whether this key's channel is ready to accept a new socket
  connection.

  `final boolean`

  `isConnectable()`

  Tests whether this key's channel has either finished, or failed to
  finish, its socket-connection operation.

  `final boolean`

  `isReadable()`

  Tests whether this key's channel is ready for reading.

  `abstract boolean`

  `isValid()`

  Tells whether or not this key is valid.

  `final boolean`

  `isWritable()`

  Tests whether this key's channel is ready for writing.

  `abstract int`

  `readyOps()`

  Retrieves this key's ready-operation set.

  `abstract Selector`

  `selector()`

  Returns the selector for which this key was created.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OP\_READ

    public static final int OP\_READ

    Operation-set bit for read operations.

    Suppose that a selection key's interest set contains
    `OP_READ` at the start of a [selection operation](Selector.md#selop). If the selector
    detects that the corresponding channel is ready for reading, has reached
    end-of-stream, has been remotely shut down for further writing, or has
    an error pending, then it will add `OP_READ` to the key's
    ready-operation set.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.nio.channels.SelectionKey.OP_READ)
  + ### OP\_WRITE

    public static final int OP\_WRITE

    Operation-set bit for write operations.

    Suppose that a selection key's interest set contains
    `OP_WRITE` at the start of a [selection operation](Selector.md#selop). If the selector
    detects that the corresponding channel is ready for writing, has been
    remotely shut down for further reading, or has an error pending, then it
    will add `OP_WRITE` to the key's ready set.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.nio.channels.SelectionKey.OP_WRITE)
  + ### OP\_CONNECT

    public static final int OP\_CONNECT

    Operation-set bit for socket-connect operations.

    Suppose that a selection key's interest set contains
    `OP_CONNECT` at the start of a [selection operation](Selector.md#selop). If the selector
    detects that the corresponding socket channel is ready to complete its
    connection sequence, or has an error pending, then it will add
    `OP_CONNECT` to the key's ready set.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.nio.channels.SelectionKey.OP_CONNECT)
  + ### OP\_ACCEPT

    public static final int OP\_ACCEPT

    Operation-set bit for socket-accept operations.

    Suppose that a selection key's interest set contains
    `OP_ACCEPT` at the start of a [selection operation](Selector.md#selop). If the selector
    detects that the corresponding server-socket channel is ready to accept
    another connection, or has an error pending, then it will add
    `OP_ACCEPT` to the key's ready set.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.nio.channels.SelectionKey.OP_ACCEPT)
* ## Constructor Details

  + ### SelectionKey

    protected SelectionKey()

    Constructs an instance of this class.
* ## Method Details

  + ### channel

    public abstract [SelectableChannel](SelectableChannel.md "class in java.nio.channels") channel()

    Returns the channel for which this key was created. This method will
    continue to return the channel even after the key is cancelled.

    Returns:
    :   This key's channel
  + ### selector

    public abstract [Selector](Selector.md "class in java.nio.channels") selector()

    Returns the selector for which this key was created. This method will
    continue to return the selector even after the key is cancelled.

    Returns:
    :   This key's selector
  + ### isValid

    public abstract boolean isValid()

    Tells whether or not this key is valid.

    A key is valid upon creation and remains so until it is cancelled,
    its channel is closed, or its selector is closed.

    Returns:
    :   `true` if, and only if, this key is valid
  + ### cancel

    public abstract void cancel()

    Requests that the registration of this key's channel with its selector
    be cancelled. Upon return the key will be invalid and will have been
    added to its selector's cancelled-key set. The key will be removed from
    all of the selector's key sets during the next selection operation.

    If this key has already been cancelled then invoking this method has
    no effect. Once cancelled, a key remains forever invalid.

    This method may be invoked at any time. It synchronizes on the
    selector's cancelled-key set, and therefore may block briefly if invoked
    concurrently with a cancellation or selection operation involving the
    same selector.
  + ### interestOps

    public abstract int interestOps()

    Retrieves this key's interest set.

    It is guaranteed that the returned set will only contain operation
    bits that are valid for this key's channel.

    Returns:
    :   This key's interest set

    Throws:
    :   `CancelledKeyException` - If this key has been cancelled
  + ### interestOps

    public abstract [SelectionKey](SelectionKey.md "class in java.nio.channels") interestOps(int ops)

    Sets this key's interest set to the given value.

    This method may be invoked at any time. If this method is invoked
    while a selection operation is in progress then it has no effect upon
    that operation; the change to the key's interest set will be seen by the
    next selection operation.

    Parameters:
    :   `ops` - The new interest set

    Returns:
    :   This selection key

    Throws:
    :   `IllegalArgumentException` - If a bit in the set does not correspond to an operation that
        is supported by this key's channel, that is, if
        `(ops & ~channel().validOps()) != 0`
    :   `CancelledKeyException` - If this key has been cancelled
  + ### interestOpsOr

    public int interestOpsOr(int ops)

    Atomically sets this key's interest set to the bitwise union ("or") of
    the existing interest set and the given value. This method is guaranteed
    to be atomic with respect to other concurrent calls to this method or to
    [`interestOpsAnd(int)`](#interestOpsAnd(int)).

    This method may be invoked at any time. If this method is invoked
    while a selection operation is in progress then it has no effect upon
    that operation; the change to the key's interest set will be seen by the
    next selection operation.

    Parameters:
    :   `ops` - The interest set to apply

    Returns:
    :   The previous interest set

    Throws:
    :   `IllegalArgumentException` - If a bit in the set does not correspond to an operation that
        is supported by this key's channel, that is, if
        `(ops & ~channel().validOps()) != 0`
    :   `CancelledKeyException` - If this key has been cancelled

    Since:
    :   11
  + ### interestOpsAnd

    public int interestOpsAnd(int ops)

    Atomically sets this key's interest set to the bitwise intersection ("and")
    of the existing interest set and the given value. This method is guaranteed
    to be atomic with respect to other concurrent calls to this method or to
    [`interestOpsOr(int)`](#interestOpsOr(int)).

    This method may be invoked at any time. If this method is invoked
    while a selection operation is in progress then it has no effect upon
    that operation; the change to the key's interest set will be seen by the
    next selection operation.

    Parameters:
    :   `ops` - The interest set to apply

    Returns:
    :   The previous interest set

    Throws:
    :   `CancelledKeyException` - If this key has been cancelled

    Since:
    :   11
  + ### readyOps

    public abstract int readyOps()

    Retrieves this key's ready-operation set.

    It is guaranteed that the returned set will only contain operation
    bits that are valid for this key's channel.

    Returns:
    :   This key's ready-operation set

    Throws:
    :   `CancelledKeyException` - If this key has been cancelled
  + ### isReadable

    public final boolean isReadable()

    Tests whether this key's channel is ready for reading.

    An invocation of this method of the form `k.isReadable()`
    behaves in exactly the same way as the expression

    Copy![Copy snippet](../../../../copy.svg)

    ```
        k.readyOps() & OP_READ != 0
    ```

    If this key's channel does not support read operations then this
    method always returns `false`.

    Returns:
    :   `true` if, and only if,
        `readyOps() & OP_READ` is nonzero

    Throws:
    :   `CancelledKeyException` - If this key has been cancelled
  + ### isWritable

    public final boolean isWritable()

    Tests whether this key's channel is ready for writing.

    An invocation of this method of the form `k.isWritable()`
    behaves in exactly the same way as the expression

    Copy![Copy snippet](../../../../copy.svg)

    ```
        k.readyOps() & OP_WRITE != 0
    ```

    If this key's channel does not support write operations then this
    method always returns `false`.

    Returns:
    :   `true` if, and only if,
        `readyOps() & OP_WRITE` is nonzero

    Throws:
    :   `CancelledKeyException` - If this key has been cancelled
  + ### isConnectable

    public final boolean isConnectable()

    Tests whether this key's channel has either finished, or failed to
    finish, its socket-connection operation.

    An invocation of this method of the form `k.isConnectable()`
    behaves in exactly the same way as the expression

    Copy![Copy snippet](../../../../copy.svg)

    ```
        k.readyOps() & OP_CONNECT != 0
    ```

    If this key's channel does not support socket-connect operations
    then this method always returns `false`.

    Returns:
    :   `true` if, and only if,
        `readyOps() & OP_CONNECT` is nonzero

    Throws:
    :   `CancelledKeyException` - If this key has been cancelled
  + ### isAcceptable

    public final boolean isAcceptable()

    Tests whether this key's channel is ready to accept a new socket
    connection.

    An invocation of this method of the form `k.isAcceptable()`
    behaves in exactly the same way as the expression

    Copy![Copy snippet](../../../../copy.svg)

    ```
        k.readyOps() & OP_ACCEPT != 0
    ```

    If this key's channel does not support socket-accept operations then
    this method always returns `false`.

    Returns:
    :   `true` if, and only if,
        `readyOps() & OP_ACCEPT` is nonzero

    Throws:
    :   `CancelledKeyException` - If this key has been cancelled
  + ### attach

    public final [Object](../../lang/Object.md "class in java.lang") attach([Object](../../lang/Object.md "class in java.lang") ob)

    Attaches the given object to this key.

    An attached object may later be retrieved via the [`attachment`](#attachment()) method. Only one object may be attached at a time; invoking
    this method causes any previous attachment to be discarded. The current
    attachment may be discarded by attaching `null`.

    Parameters:
    :   `ob` - The object to be attached; may be `null`

    Returns:
    :   The previously-attached object, if any,
        otherwise `null`
  + ### attachment

    public final [Object](../../lang/Object.md "class in java.lang") attachment()

    Retrieves the current attachment.

    Returns:
    :   The object currently attached to this key,
        or `null` if there is no attachment