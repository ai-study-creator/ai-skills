Module [java.base](../../../../module-summary.md)

Package [java.nio.channels.spi](package-summary.md)

# Class AsynchronousChannelProvider

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.nio.channels.spi.AsynchronousChannelProvider

---

public abstract class AsynchronousChannelProvider
extends [Object](../../../lang/Object.md "class in java.lang")

Service-provider class for asynchronous channels.

An asynchronous channel provider is a concrete subclass of this class that
has a zero-argument constructor and implements the abstract methods specified
below. A given invocation of the Java virtual machine maintains a single
system-wide default provider instance, which is returned by the [`provider`](#provider()) method. The first invocation of that method will locate
the default provider as specified below.

All of the methods in this class are safe for use by multiple concurrent
threads.

Since:
:   1.7

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AsynchronousChannelProvider()`

  Initializes a new instance of this class.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract AsynchronousChannelGroup`

  `openAsynchronousChannelGroup(int nThreads,
  ThreadFactory threadFactory)`

  Constructs a new asynchronous channel group with a fixed thread pool.

  `abstract AsynchronousChannelGroup`

  `openAsynchronousChannelGroup(ExecutorService executor,
  int initialSize)`

  Constructs a new asynchronous channel group with the given thread pool.

  `abstract AsynchronousServerSocketChannel`

  `openAsynchronousServerSocketChannel(AsynchronousChannelGroup group)`

  Opens an asynchronous server-socket channel.

  `abstract AsynchronousSocketChannel`

  `openAsynchronousSocketChannel(AsynchronousChannelGroup group)`

  Opens an asynchronous socket channel.

  `static AsynchronousChannelProvider`

  `provider()`

  Returns the system-wide default asynchronous channel provider for this
  invocation of the Java virtual machine.

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AsynchronousChannelProvider

    protected AsynchronousChannelProvider()

    Initializes a new instance of this class.

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`RuntimePermission`](../../../lang/RuntimePermission.md "class in java.lang")`("asynchronousChannelProvider")`
* ## Method Details

  + ### provider

    public static [AsynchronousChannelProvider](AsynchronousChannelProvider.md "class in java.nio.channels.spi") provider()

    Returns the system-wide default asynchronous channel provider for this
    invocation of the Java virtual machine.

    The first invocation of this method locates the default provider
    object as follows:

    1. If the system property
       `java.nio.channels.spi.AsynchronousChannelProvider` is
       defined then it is taken to be the fully-qualified name of a concrete
       provider class. The class is loaded and instantiated; if this process
       fails then an unspecified error is thrown.
    2. If a provider class has been installed in a jar file that is
       visible to the system class loader, and that jar file contains a
       provider-configuration file named
       `java.nio.channels.spi.AsynchronousChannelProvider` in the resource
       directory `META-INF/services`, then the first class name
       specified in that file is taken. The class is loaded and
       instantiated; if this process fails then an unspecified error is
       thrown.
    3. Finally, if no provider has been specified by any of the above
       means then the system-default provider class is instantiated and the
       result is returned.

    Subsequent invocations of this method return the provider that was
    returned by the first invocation.

    Returns:
    :   The system-wide default AsynchronousChannel provider
  + ### openAsynchronousChannelGroup

    public abstract [AsynchronousChannelGroup](../AsynchronousChannelGroup.md "class in java.nio.channels") openAsynchronousChannelGroup(int nThreads,
    [ThreadFactory](../../../util/concurrent/ThreadFactory.md "interface in java.util.concurrent") threadFactory)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Constructs a new asynchronous channel group with a fixed thread pool.

    Parameters:
    :   `nThreads` - The number of threads in the pool
    :   `threadFactory` - The factory to use when creating new threads

    Returns:
    :   A new asynchronous channel group

    Throws:
    :   `IllegalArgumentException` - If `nThreads <= 0`
    :   `IOException` - If an I/O error occurs

    See Also:
    :   - [`AsynchronousChannelGroup.withFixedThreadPool(int, java.util.concurrent.ThreadFactory)`](../AsynchronousChannelGroup.md#withFixedThreadPool(int,java.util.concurrent.ThreadFactory))
  + ### openAsynchronousChannelGroup

    public abstract [AsynchronousChannelGroup](../AsynchronousChannelGroup.md "class in java.nio.channels") openAsynchronousChannelGroup([ExecutorService](../../../util/concurrent/ExecutorService.md "interface in java.util.concurrent") executor,
    int initialSize)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Constructs a new asynchronous channel group with the given thread pool.

    Parameters:
    :   `executor` - The thread pool
    :   `initialSize` - A value `>=0` or a negative value for implementation
        specific default

    Returns:
    :   A new asynchronous channel group

    Throws:
    :   `IOException` - If an I/O error occurs

    See Also:
    :   - [`AsynchronousChannelGroup.withCachedThreadPool(java.util.concurrent.ExecutorService, int)`](../AsynchronousChannelGroup.md#withCachedThreadPool(java.util.concurrent.ExecutorService,int))
  + ### openAsynchronousServerSocketChannel

    public abstract [AsynchronousServerSocketChannel](../AsynchronousServerSocketChannel.md "class in java.nio.channels") openAsynchronousServerSocketChannel([AsynchronousChannelGroup](../AsynchronousChannelGroup.md "class in java.nio.channels") group)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens an asynchronous server-socket channel.

    Parameters:
    :   `group` - The group to which the channel is bound, or `null` to
        bind to the default group

    Returns:
    :   The new channel

    Throws:
    :   `IllegalChannelGroupException` - If the provider that created the group differs from this provider
    :   `ShutdownChannelGroupException` - The group is shutdown
    :   `IOException` - If an I/O error occurs
  + ### openAsynchronousSocketChannel

    public abstract [AsynchronousSocketChannel](../AsynchronousSocketChannel.md "class in java.nio.channels") openAsynchronousSocketChannel([AsynchronousChannelGroup](../AsynchronousChannelGroup.md "class in java.nio.channels") group)
    throws [IOException](../../../io/IOException.md "class in java.io")

    Opens an asynchronous socket channel.

    Parameters:
    :   `group` - The group to which the channel is bound, or `null` to
        bind to the default group

    Returns:
    :   The new channel

    Throws:
    :   `IllegalChannelGroupException` - If the provider that created the group differs from this provider
    :   `ShutdownChannelGroupException` - The group is shutdown
    :   `IOException` - If an I/O error occurs