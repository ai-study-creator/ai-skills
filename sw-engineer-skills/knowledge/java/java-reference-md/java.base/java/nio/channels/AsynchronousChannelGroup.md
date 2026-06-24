Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class AsynchronousChannelGroup

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.channels.AsynchronousChannelGroup

---

public abstract class AsynchronousChannelGroup
extends [Object](../../lang/Object.md "class in java.lang")

A grouping of asynchronous channels for the purpose of resource sharing.

An asynchronous channel group encapsulates the mechanics required to
handle the completion of I/O operations initiated by [`asynchronous channels`](AsynchronousChannel.md "interface in java.nio.channels") that are bound to the group. A group has an associated
thread pool to which tasks are submitted to handle I/O events and dispatch to
[`completion-handlers`](CompletionHandler.md "interface in java.nio.channels") that consume the result of
asynchronous operations performed on channels in the group. In addition to
handling I/O events, the pooled threads may also execute other tasks required
to support the execution of asynchronous I/O operations.

An asynchronous channel group is created by invoking the [`withFixedThreadPool`](#withFixedThreadPool(int,java.util.concurrent.ThreadFactory)) or [`withCachedThreadPool`](#withCachedThreadPool(java.util.concurrent.ExecutorService,int)) methods defined here. Channels are bound to a group by
specifying the group when constructing the channel. The associated thread
pool is *owned* by the group; termination of the group results in the
shutdown of the associated thread pool.

In addition to groups created explicitly, the Java virtual machine
maintains a system-wide *default group* that is constructed
automatically. Asynchronous channels that do not specify a group at
construction time are bound to the default group. The default group has an
associated thread pool that creates new threads as needed. The default group
may be configured by means of system properties defined in the table below.
Where the [`ThreadFactory`](../../util/concurrent/ThreadFactory.md "interface in java.util.concurrent") for the
default group is not configured then the pooled threads of the default group
are [`daemon`](../../lang/Thread.md#isDaemon()) threads.

System properties

| System property | Description |
| --- | --- |
| `java.nio.channels.DefaultThreadPool.threadFactory` | The value of this property is taken to be the fully-qualified name of a concrete [`ThreadFactory`](../../util/concurrent/ThreadFactory.md "interface in java.util.concurrent") class. The class is loaded using the system class loader and instantiated. The factory's [`newThread`](../../util/concurrent/ThreadFactory.md#newThread(java.lang.Runnable)) method is invoked to create each thread for the default group's thread pool. If the process to load and instantiate the value of the property fails then an unspecified error is thrown during the construction of the default group. |
| `java.nio.channels.DefaultThreadPool.initialSize` | The value of the `initialSize` parameter for the default group (see [`withCachedThreadPool`](#withCachedThreadPool(java.util.concurrent.ExecutorService,int))). The value of the property is taken to be the `String` representation of an `Integer` that is the initial size parameter. If the value cannot be parsed as an `Integer` it causes an unspecified error to be thrown during the construction of the default group. |

## Threading

The completion handler for an I/O operation initiated on a channel bound
to a group is guaranteed to be invoked by one of the pooled threads in the
group. This ensures that the completion handler is run by a thread with the
expected *identity*.

Where an I/O operation completes immediately, and the initiating thread
is one of the pooled threads in the group then the completion handler may
be invoked directly by the initiating thread. To avoid stack overflow, an
implementation may impose a limit as to the number of activations on the
thread stack. Some I/O operations may prohibit invoking the completion
handler directly by the initiating thread (see [`accept`](AsynchronousServerSocketChannel.md#accept(A,java.nio.channels.CompletionHandler))).

## Shutdown and Termination

The [`shutdown`](#shutdown()) method is used to initiate an *orderly
shutdown* of a group. An orderly shutdown marks the group as shutdown;
further attempts to construct a channel that binds to the group will throw
[`ShutdownChannelGroupException`](ShutdownChannelGroupException.md "class in java.nio.channels"). Whether or not a group is shutdown can
be tested using the [`isShutdown`](#isShutdown()) method. Once shutdown,
the group *terminates* when all asynchronous channels that are bound to
the group are closed, all actively executing completion handlers have run to
completion, and resources used by the group are released. No attempt is made
to stop or interrupt threads that are executing completion handlers. The
[`isTerminated`](#isTerminated()) method is used to test if the group has
terminated, and the [`awaitTermination`](#awaitTermination(long,java.util.concurrent.TimeUnit)) method can be
used to block until the group has terminated.

The [`shutdownNow`](#shutdownNow()) method can be used to initiate a
*forceful shutdown* of the group. In addition to the actions performed
by an orderly shutdown, the `shutdownNow` method closes all open channels
in the group as if by invoking the [`close`](AsynchronousChannel.md#close())
method.

Since:
:   1.7

See Also:
:   * [`AsynchronousSocketChannel.open(AsynchronousChannelGroup)`](AsynchronousSocketChannel.md#open(java.nio.channels.AsynchronousChannelGroup))
    * [`AsynchronousServerSocketChannel.open(AsynchronousChannelGroup)`](AsynchronousServerSocketChannel.md#open(java.nio.channels.AsynchronousChannelGroup))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AsynchronousChannelGroup(AsynchronousChannelProvider provider)`

  Initialize a new instance of this class.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `awaitTermination(long timeout,
  TimeUnit unit)`

  Awaits termination of the group.

  `abstract boolean`

  `isShutdown()`

  Tells whether or not this asynchronous channel group is shutdown.

  `abstract boolean`

  `isTerminated()`

  Tells whether or not this group has terminated.

  `final AsynchronousChannelProvider`

  `provider()`

  Returns the provider that created this channel group.

  `abstract void`

  `shutdown()`

  Initiates an orderly shutdown of the group.

  `abstract void`

  `shutdownNow()`

  Shuts down the group and closes all open channels in the group.

  `static AsynchronousChannelGroup`

  `withCachedThreadPool(ExecutorService executor,
  int initialSize)`

  Creates an asynchronous channel group with a given thread pool that
  creates new threads as needed.

  `static AsynchronousChannelGroup`

  `withFixedThreadPool(int nThreads,
  ThreadFactory threadFactory)`

  Creates an asynchronous channel group with a fixed thread pool.

  `static AsynchronousChannelGroup`

  `withThreadPool(ExecutorService executor)`

  Creates an asynchronous channel group with a given thread pool.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AsynchronousChannelGroup

    protected AsynchronousChannelGroup([AsynchronousChannelProvider](spi/AsynchronousChannelProvider.md "class in java.nio.channels.spi") provider)

    Initialize a new instance of this class.

    Parameters:
    :   `provider` - The asynchronous channel provider for this group
* ## Method Details

  + ### provider

    public final [AsynchronousChannelProvider](spi/AsynchronousChannelProvider.md "class in java.nio.channels.spi") provider()

    Returns the provider that created this channel group.

    Returns:
    :   The provider that created this channel group
  + ### withFixedThreadPool

    public static [AsynchronousChannelGroup](AsynchronousChannelGroup.md "class in java.nio.channels") withFixedThreadPool(int nThreads,
    [ThreadFactory](../../util/concurrent/ThreadFactory.md "interface in java.util.concurrent") threadFactory)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates an asynchronous channel group with a fixed thread pool.

    The resulting asynchronous channel group reuses a fixed number of
    threads. At any point, at most `nThreads` threads will be active
    processing tasks that are submitted to handle I/O events and dispatch
    completion results for operations initiated on asynchronous channels in
    the group.

    The group is created by invoking the [`openAsynchronousChannelGroup(int,ThreadFactory)`](spi/AsynchronousChannelProvider.md#openAsynchronousChannelGroup(int,java.util.concurrent.ThreadFactory)) method of the system-wide
    default [`AsynchronousChannelProvider`](spi/AsynchronousChannelProvider.md "class in java.nio.channels.spi") object.

    Parameters:
    :   `nThreads` - The number of threads in the pool
    :   `threadFactory` - The factory to use when creating new threads

    Returns:
    :   A new asynchronous channel group

    Throws:
    :   `IllegalArgumentException` - If `nThreads <= 0`
    :   `IOException` - If an I/O error occurs
  + ### withCachedThreadPool

    public static [AsynchronousChannelGroup](AsynchronousChannelGroup.md "class in java.nio.channels") withCachedThreadPool([ExecutorService](../../util/concurrent/ExecutorService.md "interface in java.util.concurrent") executor,
    int initialSize)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates an asynchronous channel group with a given thread pool that
    creates new threads as needed.

    The `executor` parameter is an `ExecutorService` that
    creates new threads as needed to execute tasks that are submitted to
    handle I/O events and dispatch completion results for operations initiated
    on asynchronous channels in the group. It may reuse previously constructed
    threads when they are available.

    The `initialSize` parameter may be used by the implementation
    as a *hint* as to the initial number of tasks it may submit. For
    example, it may be used to indicate the initial number of threads that
    wait on I/O events.

    The executor is intended to be used exclusively by the resulting
    asynchronous channel group. Termination of the group results in the
    orderly [`shutdown`](../../util/concurrent/ExecutorService.md#shutdown()) of the executor
    service. Shutting down the executor service by other means results in
    unspecified behavior.

    The group is created by invoking the [`openAsynchronousChannelGroup(ExecutorService,int)`](spi/AsynchronousChannelProvider.md#openAsynchronousChannelGroup(java.util.concurrent.ExecutorService,int)) method of the system-wide
    default [`AsynchronousChannelProvider`](spi/AsynchronousChannelProvider.md "class in java.nio.channels.spi") object.

    Parameters:
    :   `executor` - The thread pool for the resulting group
    :   `initialSize` - A value `>=0` or a negative value for implementation
        specific default

    Returns:
    :   A new asynchronous channel group

    Throws:
    :   `IOException` - If an I/O error occurs

    See Also:
    :   - [`Executors.newCachedThreadPool()`](../../util/concurrent/Executors.md#newCachedThreadPool())
  + ### withThreadPool

    public static [AsynchronousChannelGroup](AsynchronousChannelGroup.md "class in java.nio.channels") withThreadPool([ExecutorService](../../util/concurrent/ExecutorService.md "interface in java.util.concurrent") executor)
    throws [IOException](../../io/IOException.md "class in java.io")

    Creates an asynchronous channel group with a given thread pool.

    The `executor` parameter is an `ExecutorService` that
    executes tasks submitted to dispatch completion results for operations
    initiated on asynchronous channels in the group.

    Care should be taken when configuring the executor service. It
    should support *direct handoff* or *unbounded queuing* of
    submitted tasks, and the thread that invokes the [`execute`](../../util/concurrent/Executor.md#execute(java.lang.Runnable)) method should never invoke the task
    directly. An implementation may mandate additional constraints.

    The executor is intended to be used exclusively by the resulting
    asynchronous channel group. Termination of the group results in the
    orderly [`shutdown`](../../util/concurrent/ExecutorService.md#shutdown()) of the executor
    service. Shutting down the executor service by other means results in
    unspecified behavior.

    The group is created by invoking the [`openAsynchronousChannelGroup(ExecutorService,int)`](spi/AsynchronousChannelProvider.md#openAsynchronousChannelGroup(java.util.concurrent.ExecutorService,int)) method of the system-wide
    default [`AsynchronousChannelProvider`](spi/AsynchronousChannelProvider.md "class in java.nio.channels.spi") object with an `initialSize` of `0`.

    Parameters:
    :   `executor` - The thread pool for the resulting group

    Returns:
    :   A new asynchronous channel group

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### isShutdown

    public abstract boolean isShutdown()

    Tells whether or not this asynchronous channel group is shutdown.

    Returns:
    :   `true` if this asynchronous channel group is shutdown or
        has been marked for shutdown.
  + ### isTerminated

    public abstract boolean isTerminated()

    Tells whether or not this group has terminated.

    Where this method returns `true`, then the associated thread
    pool has also [`terminated`](../../util/concurrent/ExecutorService.md#isTerminated()).

    Returns:
    :   `true` if this group has terminated
  + ### shutdown

    public abstract void shutdown()

    Initiates an orderly shutdown of the group.

    This method marks the group as shutdown. Further attempts to construct
    channel that binds to this group will throw [`ShutdownChannelGroupException`](ShutdownChannelGroupException.md "class in java.nio.channels").
    The group terminates when all asynchronous channels in the group are
    closed, all actively executing completion handlers have run to completion,
    and all resources have been released. This method has no effect if the
    group is already shutdown.
  + ### shutdownNow

    public abstract void shutdownNow()
    throws [IOException](../../io/IOException.md "class in java.io")

    Shuts down the group and closes all open channels in the group.

    In addition to the actions performed by the [`shutdown`](#shutdown())
    method, this method invokes the [`close`](AsynchronousChannel.md#close())
    method on all open channels in the group. This method does not attempt to
    stop or interrupt threads that are executing completion handlers. The
    group terminates when all actively executing completion handlers have run
    to completion and all resources have been released. This method may be
    invoked at any time. If some other thread has already invoked it, then
    another invocation will block until the first invocation is complete,
    after which it will return without effect.

    Throws:
    :   `IOException` - If an I/O error occurs
  + ### awaitTermination

    public abstract boolean awaitTermination(long timeout,
    [TimeUnit](../../util/concurrent/TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](../../lang/InterruptedException.md "class in java.lang")

    Awaits termination of the group.

    This method blocks until the group has terminated, or the timeout
    occurs, or the current thread is interrupted, whichever happens first.

    Parameters:
    :   `timeout` - The maximum time to wait, or zero or less to not wait
    :   `unit` - The time unit of the timeout argument

    Returns:
    :   `true` if the group has terminated; `false` if the
        timeout elapsed before termination

    Throws:
    :   `InterruptedException` - If interrupted while waiting