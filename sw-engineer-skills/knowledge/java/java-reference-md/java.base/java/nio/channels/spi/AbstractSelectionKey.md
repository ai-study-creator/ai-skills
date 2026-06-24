Module [java.base](../../../../module-summary.md)

Package [java.nio.channels.spi](package-summary.md)

# Class AbstractSelectionKey

[java.lang.Object](../../../lang/Object.md "class in java.lang")

[java.nio.channels.SelectionKey](../SelectionKey.md "class in java.nio.channels")

java.nio.channels.spi.AbstractSelectionKey

---

public abstract class AbstractSelectionKey
extends [SelectionKey](../SelectionKey.md "class in java.nio.channels")

Base implementation class for selection keys.

This class tracks the validity of the key and implements cancellation.

Since:
:   1.4

* ## Field Summary

  ### Fields inherited from class java.nio.channels.[SelectionKey](../SelectionKey.md "class in java.nio.channels")

  `OP_ACCEPT, OP_CONNECT, OP_READ, OP_WRITE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractSelectionKey()`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final void`

  `cancel()`

  Cancels this key.

  `final boolean`

  `isValid()`

  Tells whether or not this key is valid.

  ### Methods inherited from class java.nio.channels.[SelectionKey](../SelectionKey.md "class in java.nio.channels")

  `attach, attachment, channel, interestOps, interestOps, interestOpsAnd, interestOpsOr, isAcceptable, isConnectable, isReadable, isWritable, readyOps, selector`

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbstractSelectionKey

    protected AbstractSelectionKey()

    Initializes a new instance of this class.
* ## Method Details

  + ### isValid

    public final boolean isValid()

    Description copied from class: `SelectionKey`

    Tells whether or not this key is valid.

    A key is valid upon creation and remains so until it is cancelled,
    its channel is closed, or its selector is closed.

    Specified by:
    :   `isValid` in class `SelectionKey`

    Returns:
    :   `true` if, and only if, this key is valid
  + ### cancel

    public final void cancel()

    Cancels this key.

    If this key has not yet been cancelled then it is added to its
    selector's cancelled-key set while synchronized on that set.

    Specified by:
    :   `cancel` in class `SelectionKey`