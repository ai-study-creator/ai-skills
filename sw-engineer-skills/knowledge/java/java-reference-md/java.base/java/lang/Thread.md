Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Thread

[java.lang.Object](Object.md "class in java.lang")

java.lang.Thread

All Implemented Interfaces:
:   `Runnable`

Direct Known Subclasses:
:   `ForkJoinWorkerThread`

---

public class Thread
extends [Object](Object.md "class in java.lang")
implements [Runnable](Runnable.md "interface in java.lang")

A *thread* is a thread of execution in a program. The Java
virtual machine allows an application to have multiple threads of
execution running concurrently.

`Thread` defines constructors and a [`Thread.Builder`](Thread.Builder.md "interface in java.lang") to create threads.
[Starting](#start()) a thread schedules it to execute its [`run`](#run())
method. The newly started thread executes concurrently with the thread that caused
it to start.

A thread *terminates* if either its `run` method completes normally,
or if its `run` method completes abruptly and the appropriate [uncaught exception handler](Thread.UncaughtExceptionHandler.md "interface in java.lang") completes normally or
abruptly. With no code left to run, the thread has completed execution. The
[`join`](#join()) method can be used to wait for a thread to terminate.

Threads have a unique [identifier](#threadId()) and a [name](#getName()). The identifier is generated when a `Thread` is created
and cannot be changed. The thread name can be specified when creating a thread
or can be [changed](#setName(java.lang.String)) at a later time.

Threads support [`ThreadLocal`](ThreadLocal.md "class in java.lang") variables. These are variables that are
local to a thread, meaning a thread can have a copy of a variable that is set to
a value that is independent of the value set by other threads. `Thread` also
supports [`InheritableThreadLocal`](InheritableThreadLocal.md "class in java.lang") variables that are thread local variables
that are inherited at thread creation time from the parent `Thread`.
`Thread` supports a special inheritable thread local for the thread
[context-class-loader](#getContextClassLoader()).

## Platform threads

`Thread` supports the creation of *platform threads* that are
typically mapped 1:1 to kernel threads scheduled by the operating system.
Platform threads will usually have a large stack and other resources that are
maintained by the operating system. Platforms threads are suitable for executing
all types of tasks but may be a limited resource.

Platform threads get an automatically generated thread name by default.

Platform threads are designated *daemon* or *non-daemon* threads.
When the Java virtual machine starts up, there is usually one non-daemon
thread (the thread that typically calls the application's `main` method).
The [shutdown sequence](Runtime.md#shutdown) begins when all started
non-daemon threads have terminated. Unstarted non-daemon threads do not prevent
the shutdown sequence from beginning.

In addition to the daemon status, platform threads have a [thread priority](#getPriority()) and are members of a [thread group](ThreadGroup.md "class in java.lang").

## Virtual threads

`Thread` also supports the creation of *virtual threads*.
Virtual threads are typically *user-mode threads* scheduled by the Java
runtime rather than the operating system. Virtual threads will typically require
few resources and a single Java virtual machine may support millions of virtual
threads. Virtual threads are suitable for executing tasks that spend most of
the time blocked, often waiting for I/O operations to complete. Virtual threads
are not intended for long running CPU intensive operations.

Virtual threads typically employ a small set of platform threads used as
*carrier threads*. Locking and I/O operations are examples of operations
where a carrier thread may be re-scheduled from one virtual thread to another.
Code executing in a virtual thread is not aware of the underlying carrier thread.
The [currentThread()](#currentThread()) method, used to obtain a reference
to the *current thread*, will always return the `Thread` object
for the virtual thread.

Virtual threads do not have a thread name by default. The [`getName`](#getName()) method returns the empty string if a thread name is not set.

Virtual threads are daemon threads and so do not prevent the
[shutdown sequence](Runtime.md#shutdown) from beginning.
Virtual threads have a fixed [thread priority](#getPriority())
that cannot be changed.

## Creating and starting threads

`Thread` defines public constructors for creating platform threads and
the [`start`](#start()) method to schedule threads to execute. `Thread`
may be extended for customization and other advanced reasons although most
applications should have little need to do this.

`Thread` defines a [`Thread.Builder`](Thread.Builder.md "interface in java.lang") API for creating and starting both
platform and virtual threads. The following are examples that use the builder:

Copy![Copy snippet](../../../copy.svg)

```
  Runnable runnable = ...

  // Start a daemon thread to run a task
  Thread thread = Thread.ofPlatform().daemon().start(runnable);

  // Create an unstarted thread with name "duke", its start() method
  // must be invoked to schedule it to execute.
  Thread thread = Thread.ofPlatform().name("duke").unstarted(runnable);

  // A ThreadFactory that creates daemon threads named "worker-0", "worker-1", ...
  ThreadFactory factory = Thread.ofPlatform().daemon().name("worker-", 0).factory();

  // Start a virtual thread to run a task
  Thread thread = Thread.ofVirtual().start(runnable);

  // A ThreadFactory that creates virtual threads
  ThreadFactory factory = Thread.ofVirtual().factory();
```

## Inheritance when creating threads

A `Thread` inherits its initial values of [inheritable-thread-local](InheritableThreadLocal.md "class in java.lang") variables (including the context class loader) from
the parent thread values at the time that the child `Thread` is created.
The 5-param [constructor](#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String,long,boolean)) can be used to create a thread that does not inherit its initial
values from the constructing thread. When using a `Thread.Builder`, the
[`inheritInheritableThreadLocals`](Thread.Builder.md#inheritInheritableThreadLocals(boolean))
method can be used to select if the initial values are inherited.

Platform threads inherit the daemon status, thread priority, and when not
provided (or not selected by a security manager), the thread group.

Creating a platform thread [captures](../security/AccessController.md#getContext()) the
[caller context](../security/AccessControlContext.md "class in java.security") to limit the [permissions](../security/Permission.md "class in java.security") of the new thread when it executes code that performs a [privileged action](../security/AccessController.md#doPrivileged(java.security.PrivilegedAction)). The captured
caller context is the new thread's "Inherited [`AccessControlContext`](../security/AccessControlContext.md "class in java.security")". Creating
a virtual thread does not capture the caller context; virtual threads have no
permissions when executing code that performs a privileged action.

Unless otherwise specified, passing a `null` argument to a constructor
or method in this class will cause a [`NullPointerException`](NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.0

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static interface`

  `Thread.Builder`

  A builder for [`Thread`](Thread.md "class in java.lang") and [`ThreadFactory`](../util/concurrent/ThreadFactory.md "interface in java.util.concurrent") objects.

  `static enum`

  `Thread.State`

  A thread state.

  `static interface`

  `Thread.UncaughtExceptionHandler`

  Interface for handlers invoked when a `Thread` abruptly
  terminates due to an uncaught exception.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `MAX_PRIORITY`

  The maximum priority that a thread can have.

  `static final int`

  `MIN_PRIORITY`

  The minimum priority that a thread can have.

  `static final int`

  `NORM_PRIORITY`

  The default priority that is assigned to a thread.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Thread()`

  Initializes a new platform `Thread`.

  `Thread(Runnable task)`

  Initializes a new platform `Thread`.

  `Thread(Runnable task,
  String name)`

  Initializes a new platform `Thread`.

  `Thread(String name)`

  Initializes a new platform `Thread`.

  `Thread(ThreadGroup group,
  Runnable task)`

  Initializes a new platform `Thread`.

  `Thread(ThreadGroup group,
  Runnable task,
  String name)`

  Initializes a new platform `Thread` so that it has `task`
  as its run object, has the specified `name` as its name,
  and belongs to the thread group referred to by `group`.

  `Thread(ThreadGroup group,
  Runnable task,
  String name,
  long stackSize)`

  Initializes a new platform `Thread` so that it has `task`
  as its run object, has the specified `name` as its name,
  and belongs to the thread group referred to by `group`, and has
  the specified *stack size*.

  `Thread(ThreadGroup group,
  Runnable task,
  String name,
  long stackSize,
  boolean inheritInheritableThreadLocals)`

  Initializes a new platform `Thread` so that it has `task`
  as its run object, has the specified `name` as its name,
  belongs to the thread group referred to by `group`, has
  the specified `stackSize`, and inherits initial values for
  [inheritable thread-local](InheritableThreadLocal.md "class in java.lang") variables
  if `inheritThreadLocals` is `true`.

  `Thread(ThreadGroup group,
  String name)`

  Initializes a new platform `Thread`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static int`

  `activeCount()`

  Returns an estimate of the number of [live](#isAlive())
  platform threads in the current thread's thread group and its subgroups.

  `final void`

  `checkAccess()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method is only useful in conjunction with
  [the Security Manager](SecurityManager.md "class in java.lang"), which is
  deprecated and subject to removal in a future release.

  `protected Object`

  `clone()`

  Throws CloneNotSupportedException as a Thread can not be meaningfully
  cloned.

  `int`

  `countStackFrames()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method was originally designed to count the number of
  stack frames but the results were never well-defined and it
  depended on thread-suspension.

  `static Thread`

  `currentThread()`

  Returns the Thread object for the current thread.

  `static void`

  `dumpStack()`

  Prints a stack trace of the current thread to the standard error stream.

  `static int`

  `enumerate(Thread[] tarray)`

  Copies into the specified array every [live](#isAlive())
  platform thread in the current thread's thread group and its subgroups.

  `static Map<Thread,StackTraceElement[]>`

  `getAllStackTraces()`

  Returns a map of stack traces for all live platform threads.

  `ClassLoader`

  `getContextClassLoader()`

  Returns the context `ClassLoader` for this thread.

  `static Thread.UncaughtExceptionHandler`

  `getDefaultUncaughtExceptionHandler()`

  Returns the default handler invoked when a thread abruptly terminates
  due to an uncaught exception.

  `long`

  `getId()`

  Deprecated.

  This method is not final and may be overridden to return a
  value that is not the thread ID.

  `final String`

  `getName()`

  Returns this thread's name.

  `final int`

  `getPriority()`

  Returns this thread's priority.

  `StackTraceElement[]`

  `getStackTrace()`

  Returns an array of stack trace elements representing the stack dump
  of this thread.

  `Thread.State`

  `getState()`

  Returns the state of this thread.

  `final ThreadGroup`

  `getThreadGroup()`

  Returns the thread's thread group or `null` if the thread has
  terminated.

  `Thread.UncaughtExceptionHandler`

  `getUncaughtExceptionHandler()`

  Returns the handler invoked when this thread abruptly terminates
  due to an uncaught exception.

  `static boolean`

  `holdsLock(Object obj)`

  Returns `true` if and only if the current thread holds the
  monitor lock on the specified object.

  `void`

  `interrupt()`

  Interrupts this thread.

  `static boolean`

  `interrupted()`

  Tests whether the current thread has been interrupted.

  `final boolean`

  `isAlive()`

  Tests if this thread is alive.

  `final boolean`

  `isDaemon()`

  Tests if this thread is a daemon thread.

  `boolean`

  `isInterrupted()`

  Tests whether this thread has been interrupted.

  `final boolean`

  `isVirtual()`

  Returns `true` if this thread is a virtual thread.

  `final void`

  `join()`

  Waits for this thread to terminate.

  `final void`

  `join(long millis)`

  Waits at most `millis` milliseconds for this thread to terminate.

  `final void`

  `join(long millis,
  int nanos)`

  Waits at most `millis` milliseconds plus
  `nanos` nanoseconds for this thread to terminate.

  `final boolean`

  `join(Duration duration)`

  Waits for this thread to terminate for up to the given waiting duration.

  `static Thread.Builder.OfPlatform`

  `ofPlatform()`

  Returns a builder for creating a platform `Thread` or `ThreadFactory`
  that creates platform threads.

  `static Thread.Builder.OfVirtual`

  `ofVirtual()`

  Returns a builder for creating a virtual `Thread` or `ThreadFactory`
  that creates virtual threads.

  `static void`

  `onSpinWait()`

  Indicates that the caller is momentarily unable to progress, until the
  occurrence of one or more actions on the part of other activities.

  `final void`

  `resume()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method was originally specified to resume a thread
  suspended with [`suspend()`](#suspend()).

  `void`

  `run()`

  This method is run by the thread when it executes.

  `void`

  `setContextClassLoader(ClassLoader cl)`

  Sets the context `ClassLoader` for this thread.

  `final void`

  `setDaemon(boolean on)`

  Marks this thread as either a *daemon* or *non-daemon* thread.

  `static void`

  `setDefaultUncaughtExceptionHandler(Thread.UncaughtExceptionHandler ueh)`

  Set the default handler invoked when a thread abruptly terminates
  due to an uncaught exception, and no other handler has been defined
  for that thread.

  `final void`

  `setName(String name)`

  Changes the name of this thread to be equal to the argument `name`.

  `final void`

  `setPriority(int newPriority)`

  Changes the priority of this thread.

  `void`

  `setUncaughtExceptionHandler(Thread.UncaughtExceptionHandler ueh)`

  Set the handler invoked when this thread abruptly terminates
  due to an uncaught exception.

  `static void`

  `sleep(long millis)`

  Causes the currently executing thread to sleep (temporarily cease
  execution) for the specified number of milliseconds, subject to
  the precision and accuracy of system timers and schedulers.

  `static void`

  `sleep(long millis,
  int nanos)`

  Causes the currently executing thread to sleep (temporarily cease
  execution) for the specified number of milliseconds plus the specified
  number of nanoseconds, subject to the precision and accuracy of system
  timers and schedulers.

  `static void`

  `sleep(Duration duration)`

  Causes the currently executing thread to sleep (temporarily cease
  execution) for the specified duration, subject to the precision and
  accuracy of system timers and schedulers.

  `void`

  `start()`

  Schedules this thread to begin execution.

  `static Thread`

  `startVirtualThread(Runnable task)`

  Creates a virtual thread to execute a task and schedules it to execute.

  `final void`

  `stop()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method was originally specified to "stop" a victim
  thread by causing the victim thread to throw a [`ThreadDeath`](ThreadDeath.md "class in java.lang").

  `final void`

  `suspend()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method was originally specified to suspend a thread.

  `final long`

  `threadId()`

  Returns the identifier of this Thread.

  `String`

  `toString()`

  Returns a string representation of this thread.

  `static void`

  `yield()`

  A hint to the scheduler that the current thread is willing to yield
  its current use of a processor.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### MIN\_PRIORITY

    public static final int MIN\_PRIORITY

    The minimum priority that a thread can have.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Thread.MIN_PRIORITY)
  + ### NORM\_PRIORITY

    public static final int NORM\_PRIORITY

    The default priority that is assigned to a thread.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Thread.NORM_PRIORITY)
  + ### MAX\_PRIORITY

    public static final int MAX\_PRIORITY

    The maximum priority that a thread can have.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.lang.Thread.MAX_PRIORITY)
* ## Constructor Details

  + ### Thread

    public Thread()

    Initializes a new platform `Thread`. This constructor has the same
    effect as [Thread](#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String))
    `(null, null, gname)`, where `gname` is a newly generated
    name. Automatically generated names are of the form
    `"Thread-"+`*n*, where *n* is an integer.

    This constructor is only useful when extending `Thread` to
    override the [`run()`](#run()) method.

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
  + ### Thread

    public Thread([Runnable](Runnable.md "interface in java.lang") task)

    Initializes a new platform `Thread`. This constructor has the same
    effect as [Thread](#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String))
    `(null, task, gname)`, where `gname` is a newly generated
    name. Automatically generated names are of the form
    `"Thread-"+`*n*, where *n* is an integer.

    For a non-null task, invoking this constructor directly is equivalent to:

    ```
    Thread.ofPlatform().unstarted(task);
    ```

    Parameters:
    :   `task` - the object whose `run` method is invoked when this thread
        is started. If `null`, this classes `run` method does
        nothing.

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
  + ### Thread

    public Thread([ThreadGroup](ThreadGroup.md "class in java.lang") group,
    [Runnable](Runnable.md "interface in java.lang") task)

    Initializes a new platform `Thread`. This constructor has the same
    effect as [Thread](#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String))
    `(group, task, gname)`, where `gname` is a newly generated
    name. Automatically generated names are of the form
    `"Thread-"+`*n*, where *n* is an integer.

    For a non-null group and task, invoking this constructor directly is
    equivalent to:

    ```
    Thread.ofPlatform().group(group).unstarted(task);
    ```

    Parameters:
    :   `group` - the thread group. If `null` and there is a security
        manager, the group is determined by [SecurityManager.getThreadGroup()](SecurityManager.md#getThreadGroup()).
        If there is not a security manager or `SecurityManager.getThreadGroup()` returns `null`, the group
        is set to the current thread's thread group.
    :   `task` - the object whose `run` method is invoked when this thread
        is started. If `null`, this thread's run method is invoked.

    Throws:
    :   `SecurityException` - if the current thread cannot create a thread in the specified
        thread group

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
  + ### Thread

    public Thread([String](String.md "class in java.lang") name)

    Initializes a new platform `Thread`. This constructor has the same
    effect as [Thread](#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String))
    `(null, null, name)`.

    This constructor is only useful when extending `Thread` to
    override the [`run()`](#run()) method.

    Parameters:
    :   `name` - the name of the new thread

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
  + ### Thread

    public Thread([ThreadGroup](ThreadGroup.md "class in java.lang") group,
    [String](String.md "class in java.lang") name)

    Initializes a new platform `Thread`. This constructor has the same
    effect as [Thread](#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String))
    `(group, null, name)`.

    This constructor is only useful when extending `Thread` to
    override the [`run()`](#run()) method.

    Parameters:
    :   `group` - the thread group. If `null` and there is a security
        manager, the group is determined by [SecurityManager.getThreadGroup()](SecurityManager.md#getThreadGroup()).
        If there is not a security manager or `SecurityManager.getThreadGroup()` returns `null`, the group
        is set to the current thread's thread group.
    :   `name` - the name of the new thread

    Throws:
    :   `SecurityException` - if the current thread cannot create a thread in the specified
        thread group

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
  + ### Thread

    public Thread([Runnable](Runnable.md "interface in java.lang") task,
    [String](String.md "class in java.lang") name)

    Initializes a new platform `Thread`. This constructor has the same
    effect as [Thread](#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String))
    `(null, task, name)`.

    For a non-null task and name, invoking this constructor directly is
    equivalent to:

    ```
    Thread.ofPlatform().name(name).unstarted(task);
    ```

    Parameters:
    :   `task` - the object whose `run` method is invoked when this thread
        is started. If `null`, this thread's run method is invoked.
    :   `name` - the name of the new thread

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
  + ### Thread

    public Thread([ThreadGroup](ThreadGroup.md "class in java.lang") group,
    [Runnable](Runnable.md "interface in java.lang") task,
    [String](String.md "class in java.lang") name)

    Initializes a new platform `Thread` so that it has `task`
    as its run object, has the specified `name` as its name,
    and belongs to the thread group referred to by `group`.

    If there is a security manager, its
    [`checkAccess`](SecurityManager.md#checkAccess(java.lang.ThreadGroup))
    method is invoked with the ThreadGroup as its argument.

    In addition, its `checkPermission` method is invoked with
    the `RuntimePermission("enableContextClassLoaderOverride")`
    permission when invoked directly or indirectly by the constructor
    of a subclass which overrides the `getContextClassLoader`
    or `setContextClassLoader` methods.

    The priority of the newly created thread is the smaller of
    priority of the thread creating it and the maximum permitted
    priority of the thread group. The method [setPriority](#setPriority(int)) may be used to change the priority to a new value.

    The newly created thread is initially marked as being a daemon
    thread if and only if the thread creating it is currently marked
    as a daemon thread. The method [setDaemon](#setDaemon(boolean))
    may be used to change whether or not a thread is a daemon.

    For a non-null group, task, and name, invoking this constructor directly
    is equivalent to:

    ```
    Thread.ofPlatform().group(group).name(name).unstarted(task);
    ```

    Parameters:
    :   `group` - the thread group. If `null` and there is a security
        manager, the group is determined by [SecurityManager.getThreadGroup()](SecurityManager.md#getThreadGroup()).
        If there is not a security manager or `SecurityManager.getThreadGroup()` returns `null`, the group
        is set to the current thread's thread group.
    :   `task` - the object whose `run` method is invoked when this thread
        is started. If `null`, this thread's run method is invoked.
    :   `name` - the name of the new thread

    Throws:
    :   `SecurityException` - if the current thread cannot create a thread in the specified
        thread group or cannot override the context class loader methods.

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
  + ### Thread

    public Thread([ThreadGroup](ThreadGroup.md "class in java.lang") group,
    [Runnable](Runnable.md "interface in java.lang") task,
    [String](String.md "class in java.lang") name,
    long stackSize)

    Initializes a new platform `Thread` so that it has `task`
    as its run object, has the specified `name` as its name,
    and belongs to the thread group referred to by `group`, and has
    the specified *stack size*.

    This constructor is identical to [`Thread(ThreadGroup,Runnable,String)`](#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String)) with the exception of the fact
    that it allows the thread stack size to be specified. The stack size
    is the approximate number of bytes of address space that the virtual
    machine is to allocate for this thread's stack. **The effect of the
    `stackSize` parameter, if any, is highly platform dependent.**

    On some platforms, specifying a higher value for the
    `stackSize` parameter may allow a thread to achieve greater
    recursion depth before throwing a [`StackOverflowError`](StackOverflowError.md "class in java.lang").
    Similarly, specifying a lower value may allow a greater number of
    threads to exist concurrently without throwing an [`OutOfMemoryError`](OutOfMemoryError.md "class in java.lang") (or other internal error). The details of
    the relationship between the value of the `stackSize` parameter
    and the maximum recursion depth and concurrency level are
    platform-dependent. **On some platforms, the value of the
    `stackSize` parameter may have no effect whatsoever.**

    The virtual machine is free to treat the `stackSize`
    parameter as a suggestion. If the specified value is unreasonably low
    for the platform, the virtual machine may instead use some
    platform-specific minimum value; if the specified value is unreasonably
    high, the virtual machine may instead use some platform-specific
    maximum. Likewise, the virtual machine is free to round the specified
    value up or down as it sees fit (or to ignore it completely).

    Specifying a value of zero for the `stackSize` parameter will
    cause this constructor to behave exactly like the
    `Thread(ThreadGroup, Runnable, String)` constructor.

    *Due to the platform-dependent nature of the behavior of this
    constructor, extreme care should be exercised in its use.
    The thread stack size necessary to perform a given computation will
    likely vary from one JRE implementation to another. In light of this
    variation, careful tuning of the stack size parameter may be required,
    and the tuning may need to be repeated for each JRE implementation on
    which an application is to run.*

    Implementation note: Java platform implementers are encouraged to
    document their implementation's behavior with respect to the
    `stackSize` parameter.

    For a non-null group, task, and name, invoking this constructor directly
    is equivalent to:

    ```
    Thread.ofPlatform().group(group).name(name).stackSize(stackSize).unstarted(task);
    ```

    Parameters:
    :   `group` - the thread group. If `null` and there is a security
        manager, the group is determined by [SecurityManager.getThreadGroup()](SecurityManager.md#getThreadGroup()).
        If there is not a security manager or `SecurityManager.getThreadGroup()` returns `null`, the group
        is set to the current thread's thread group.
    :   `task` - the object whose `run` method is invoked when this thread
        is started. If `null`, this thread's run method is invoked.
    :   `name` - the name of the new thread
    :   `stackSize` - the desired stack size for the new thread, or zero to indicate
        that this parameter is to be ignored.

    Throws:
    :   `SecurityException` - if the current thread cannot create a thread in the specified
        thread group

    Since:
    :   1.4

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
  + ### Thread

    public Thread([ThreadGroup](ThreadGroup.md "class in java.lang") group,
    [Runnable](Runnable.md "interface in java.lang") task,
    [String](String.md "class in java.lang") name,
    long stackSize,
    boolean inheritInheritableThreadLocals)

    Initializes a new platform `Thread` so that it has `task`
    as its run object, has the specified `name` as its name,
    belongs to the thread group referred to by `group`, has
    the specified `stackSize`, and inherits initial values for
    [inheritable thread-local](InheritableThreadLocal.md "class in java.lang") variables
    if `inheritThreadLocals` is `true`.

    This constructor is identical to [`Thread(ThreadGroup,Runnable,String,long)`](#%3Cinit%3E(java.lang.ThreadGroup,java.lang.Runnable,java.lang.String,long)) with the added ability to
    suppress, or not, the inheriting of initial values for inheritable
    thread-local variables from the constructing thread. This allows for
    finer grain control over inheritable thread-locals. Care must be taken
    when passing a value of `false` for `inheritThreadLocals`,
    as it may lead to unexpected behavior if the new thread executes code
    that expects a specific thread-local value to be inherited.

    Specifying a value of `true` for the `inheritThreadLocals`
    parameter will cause this constructor to behave exactly like the
    `Thread(ThreadGroup, Runnable, String, long)` constructor.

    For a non-null group, task, and name, invoking this constructor directly
    is equivalent to:

    ```
    Thread.ofPlatform()
          .group(group)
          .name(name)
          .stackSize(stackSize)
          .inheritInheritableThreadLocals(inheritInheritableThreadLocals)
          .unstarted(task);
    ```

    Parameters:
    :   `group` - the thread group. If `null` and there is a security
        manager, the group is determined by [SecurityManager.getThreadGroup()](SecurityManager.md#getThreadGroup()).
        If there is not a security manager or `SecurityManager.getThreadGroup()` returns `null`, the group
        is set to the current thread's thread group.
    :   `task` - the object whose `run` method is invoked when this thread
        is started. If `null`, this thread's run method is invoked.
    :   `name` - the name of the new thread
    :   `stackSize` - the desired stack size for the new thread, or zero to indicate
        that this parameter is to be ignored
    :   `inheritInheritableThreadLocals` - if `true`, inherit initial values for inheritable
        thread-locals from the constructing thread, otherwise no initial
        values are inherited

    Throws:
    :   `SecurityException` - if the current thread cannot create a thread in the specified
        thread group

    Since:
    :   9

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
* ## Method Details

  + ### currentThread

    public static [Thread](Thread.md "class in java.lang") currentThread()

    Returns the Thread object for the current thread.

    Returns:
    :   the current thread
  + ### yield

    public static void yield()

    A hint to the scheduler that the current thread is willing to yield
    its current use of a processor. The scheduler is free to ignore this
    hint.

    Yield is a heuristic attempt to improve relative progression
    between threads that would otherwise over-utilise a CPU. Its use
    should be combined with detailed profiling and benchmarking to
    ensure that it actually has the desired effect.

    It is rarely appropriate to use this method. It may be useful
    for debugging or testing purposes, where it may help to reproduce
    bugs due to race conditions. It may also be useful when designing
    concurrency control constructs such as the ones in the
    [`java.util.concurrent.locks`](../util/concurrent/locks/package-summary.md) package.
  + ### sleep

    public static void sleep(long millis)
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Causes the currently executing thread to sleep (temporarily cease
    execution) for the specified number of milliseconds, subject to
    the precision and accuracy of system timers and schedulers. The thread
    does not lose ownership of any monitors.

    Parameters:
    :   `millis` - the length of time to sleep in milliseconds

    Throws:
    :   `IllegalArgumentException` - if the value of `millis` is negative
    :   `InterruptedException` - if any thread has interrupted the current thread. The
        *interrupted status* of the current thread is
        cleared when this exception is thrown.
  + ### sleep

    public static void sleep(long millis,
    int nanos)
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Causes the currently executing thread to sleep (temporarily cease
    execution) for the specified number of milliseconds plus the specified
    number of nanoseconds, subject to the precision and accuracy of system
    timers and schedulers. The thread does not lose ownership of any
    monitors.

    Parameters:
    :   `millis` - the length of time to sleep in milliseconds
    :   `nanos` - `0-999999` additional nanoseconds to sleep

    Throws:
    :   `IllegalArgumentException` - if the value of `millis` is negative, or the value of
        `nanos` is not in the range `0-999999`
    :   `InterruptedException` - if any thread has interrupted the current thread. The
        *interrupted status* of the current thread is
        cleared when this exception is thrown.
  + ### sleep

    public static void sleep([Duration](../time/Duration.md "class in java.time") duration)
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Causes the currently executing thread to sleep (temporarily cease
    execution) for the specified duration, subject to the precision and
    accuracy of system timers and schedulers. This method is a no-op if
    the duration is [negative](../time/Duration.md#isNegative()).

    Parameters:
    :   `duration` - the duration to sleep

    Throws:
    :   `InterruptedException` - if the current thread is interrupted while sleeping. The
        *interrupted status* of the current thread is
        cleared when this exception is thrown.

    Since:
    :   19
  + ### onSpinWait

    public static void onSpinWait()

    Indicates that the caller is momentarily unable to progress, until the
    occurrence of one or more actions on the part of other activities. By
    invoking this method within each iteration of a spin-wait loop construct,
    the calling thread indicates to the runtime that it is busy-waiting.
    The runtime may take action to improve the performance of invoking
    spin-wait loop constructions.

    Since:
    :   9
  + ### ofPlatform

    public static [Thread.Builder.OfPlatform](Thread.Builder.OfPlatform.md "interface in java.lang") ofPlatform()

    Returns a builder for creating a platform `Thread` or `ThreadFactory`
    that creates platform threads.

    **Interaction with security manager when
    creating platform threads**

    Creating a platform thread when there is a security manager set will
    invoke the security manager's [`checkAccess(ThreadGroup)`](SecurityManager.md#checkAccess(java.lang.ThreadGroup)) method with the thread's thread group.
    If the thread group has not been set with the [`OfPlatform.group`](Thread.Builder.OfPlatform.md#group(java.lang.ThreadGroup)) method then the
    security manager's [`getThreadGroup`](SecurityManager.md#getThreadGroup())
    method will be invoked first to select the thread group. If the security
    manager `getThreadGroup` method returns `null` then the thread
    group of the constructing thread is used.

    Returns:
    :   A builder for creating `Thread` or `ThreadFactory` objects.

    Since:
    :   21
  + ### ofVirtual

    public static [Thread.Builder.OfVirtual](Thread.Builder.OfVirtual.md "interface in java.lang") ofVirtual()

    Returns a builder for creating a virtual `Thread` or `ThreadFactory`
    that creates virtual threads.

    Returns:
    :   A builder for creating `Thread` or `ThreadFactory` objects.

    Since:
    :   21
  + ### clone

    protected [Object](Object.md "class in java.lang") clone()
    throws [CloneNotSupportedException](CloneNotSupportedException.md "class in java.lang")

    Throws CloneNotSupportedException as a Thread can not be meaningfully
    cloned. Construct a new Thread instead.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    Throws:
    :   `CloneNotSupportedException` - always

    See Also:
    :   - [`Cloneable`](Cloneable.md "interface in java.lang")
  + ### startVirtualThread

    public static [Thread](Thread.md "class in java.lang") startVirtualThread([Runnable](Runnable.md "interface in java.lang") task)

    Creates a virtual thread to execute a task and schedules it to execute.

    This method is equivalent to:

    ```
    Thread.ofVirtual().start(task);
    ```

    Parameters:
    :   `task` - the object to run when the thread executes

    Returns:
    :   a new, and started, virtual thread

    Since:
    :   21

    See Also:
    :   - [Inheritance when creating threads](#inheritance)
  + ### isVirtual

    public final boolean isVirtual()

    Returns `true` if this thread is a virtual thread. A virtual thread
    is scheduled by the Java virtual machine rather than the operating system.

    Returns:
    :   `true` if this thread is a virtual thread

    Since:
    :   21
  + ### start

    public void start()

    Schedules this thread to begin execution. The thread will execute
    independently of the current thread.

    A thread can be started at most once. In particular, a thread can not
    be restarted after it has terminated.

    Throws:
    :   `IllegalThreadStateException` - if the thread was already started
  + ### run

    public void run()

    This method is run by the thread when it executes. Subclasses of `Thread` may override this method.

    This method is not intended to be invoked directly. If this thread is a
    platform thread created with a [`Runnable`](Runnable.md "interface in java.lang") task then invoking this method
    will invoke the task's `run` method. If this thread is a virtual thread
    then invoking this method directly does nothing.

    Specified by:
    :   `run` in interface `Runnable`
  + ### stop

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="1.2",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public final void stop()

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method was originally specified to "stop" a victim
    thread by causing the victim thread to throw a [`ThreadDeath`](ThreadDeath.md "class in java.lang").
    It was inherently unsafe. Stopping a thread caused it to unlock
    all of the monitors that it had locked (as a natural consequence
    of the `ThreadDeath` exception propagating up the stack). If
    any of the objects previously protected by these monitors were in
    an inconsistent state, the damaged objects became visible to
    other threads, potentially resulting in arbitrary behavior.
    Usages of `stop` should be replaced by code that simply
    modifies some variable to indicate that the target thread should
    stop running. The target thread should check this variable
    regularly, and return from its run method in an orderly fashion
    if the variable indicates that it is to stop running. If the
    target thread waits for long periods (on a condition variable,
    for example), the `interrupt` method should be used to
    interrupt the wait.
    For more information, see
    [Why
    are Thread.stop, Thread.suspend and Thread.resume Deprecated?](../../../java.base/java/lang/doc-files/threadPrimitiveDeprecation.md).

    Throws `UnsupportedOperationException`.

    Throws:
    :   `UnsupportedOperationException` - always
  + ### interrupt

    public void interrupt()

    Interrupts this thread.

    Unless the current thread is interrupting itself, which is
    always permitted, the [`checkAccess`](#checkAccess()) method
    of this thread is invoked, which may cause a [`SecurityException`](SecurityException.md "class in java.lang") to be thrown.

    If this thread is blocked in an invocation of the [`wait()`](Object.md#wait()), [`wait(long)`](Object.md#wait(long)), or [`wait(long, int)`](Object.md#wait(long,int)) methods of the [`Object`](Object.md "class in java.lang")
    class, or of the [`join()`](#join()), [`join(long)`](#join(long)), [`join(long, int)`](#join(long,int)), [`sleep(long)`](#sleep(long)), or [`sleep(long, int)`](#sleep(long,int))
    methods of this class, then its interrupt status will be cleared and it
    will receive an [`InterruptedException`](InterruptedException.md "class in java.lang").

    If this thread is blocked in an I/O operation upon an [`InterruptibleChannel`](../nio/channels/InterruptibleChannel.md "interface in java.nio.channels")
    then the channel will be closed, the thread's interrupt
    status will be set, and the thread will receive a [`ClosedByInterruptException`](../nio/channels/ClosedByInterruptException.md "class in java.nio.channels").

    If this thread is blocked in a [`Selector`](../nio/channels/Selector.md "class in java.nio.channels")
    then the thread's interrupt status will be set and it will return
    immediately from the selection operation, possibly with a non-zero
    value, just as if the selector's [`wakeup`](../nio/channels/Selector.md#wakeup()) method were invoked.

    If none of the previous conditions hold then this thread's interrupt
    status will be set.

    Interrupting a thread that is not alive need not have any effect.

    Throws:
    :   `SecurityException` - if the current thread cannot modify this thread
  + ### interrupted

    public static boolean interrupted()

    Tests whether the current thread has been interrupted. The
    *interrupted status* of the thread is cleared by this method. In
    other words, if this method were to be called twice in succession, the
    second call would return false (unless the current thread were
    interrupted again, after the first call had cleared its interrupted
    status and before the second call had examined it).

    Returns:
    :   `true` if the current thread has been interrupted;
        `false` otherwise.

    See Also:
    :   - [`isInterrupted()`](#isInterrupted())
  + ### isInterrupted

    public boolean isInterrupted()

    Tests whether this thread has been interrupted. The *interrupted
    status* of the thread is unaffected by this method.

    Returns:
    :   `true` if this thread has been interrupted;
        `false` otherwise.

    See Also:
    :   - [`interrupted()`](#interrupted())
  + ### isAlive

    public final boolean isAlive()

    Tests if this thread is alive. A thread is alive if it has
    been started and has not yet terminated.

    Returns:
    :   `true` if this thread is alive;
        `false` otherwise.
  + ### suspend

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="1.2",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public final void suspend()

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method was originally specified to suspend a thread.
    It was inherently deadlock-prone. If the target thread held a lock on
    a monitor protecting a critical system resource when it was suspended,
    no thread could access the resource until the target thread was resumed.
    If the thread intending to resume the target thread attempted to lock
    the monitor prior to calling `resume`, deadlock would result.
    Such deadlocks typically manifested themselves as "frozen" processes.
    For more information, see
    [Why
    are Thread.stop, Thread.suspend and Thread.resume Deprecated?](../../../java.base/java/lang/doc-files/threadPrimitiveDeprecation.md).

    Throws `UnsupportedOperationException`.

    Throws:
    :   `UnsupportedOperationException` - always
  + ### resume

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="1.2",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public final void resume()

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method was originally specified to resume a thread
    suspended with [`suspend()`](#suspend()). Suspending a thread was
    inherently deadlock-prone.
    For more information, see
    [Why
    are Thread.stop, Thread.suspend and Thread.resume Deprecated?](../../../java.base/java/lang/doc-files/threadPrimitiveDeprecation.md).

    Throws `UnsupportedOperationException`.

    Throws:
    :   `UnsupportedOperationException` - always
  + ### setPriority

    public final void setPriority(int newPriority)

    Changes the priority of this thread.
    For platform threads, the priority is set to the smaller of the specified
    `newPriority` and the maximum permitted priority of the thread's
    [thread group](ThreadGroup.md "class in java.lang").
    The priority of a virtual thread is always [`NORM_PRIORITY`](#NORM_PRIORITY)
    and `newPriority` is ignored.

    Parameters:
    :   `newPriority` - the new thread priority

    Throws:
    :   `IllegalArgumentException` - if the priority is not in the
        range `MIN_PRIORITY` to `MAX_PRIORITY`.
    :   `SecurityException` - if [`checkAccess()`](#checkAccess()) determines that the current
        thread cannot modify this thread

    See Also:
    :   - [`setPriority(int)`](#setPriority(int))
        - [`ThreadGroup.getMaxPriority()`](ThreadGroup.md#getMaxPriority())
  + ### getPriority

    public final int getPriority()

    Returns this thread's priority.

    The priority of a virtual thread is always [`NORM_PRIORITY`](#NORM_PRIORITY).

    Returns:
    :   this thread's priority.

    See Also:
    :   - [`setPriority(int)`](#setPriority(int))
  + ### setName

    public final void setName([String](String.md "class in java.lang") name)

    Changes the name of this thread to be equal to the argument `name`.

    First the `checkAccess` method of this thread is called
    with no arguments. This may result in throwing a
    `SecurityException`.

    Parameters:
    :   `name` - the new name for this thread.

    Throws:
    :   `SecurityException` - if the current thread cannot modify this
        thread.

    See Also:
    :   - [`getName()`](#getName())
        - [`checkAccess()`](#checkAccess())

    External Specifications
    :   - [Java Native Interface Specification](../../../../specs/jni/index.md)
  + ### getName

    public final [String](String.md "class in java.lang") getName()

    Returns this thread's name.

    Returns:
    :   this thread's name.

    See Also:
    :   - [`setName(String)`](#setName(java.lang.String))
  + ### getThreadGroup

    public final [ThreadGroup](ThreadGroup.md "class in java.lang") getThreadGroup()

    Returns the thread's thread group or `null` if the thread has
    terminated.

    The thread group returned for a virtual thread is the special
    [*ThreadGroup for
    virtual threads*](ThreadGroup.md#virtualthreadgroup).

    Returns:
    :   this thread's thread group or `null`
  + ### activeCount

    public static int activeCount()

    Returns an estimate of the number of [live](#isAlive())
    platform threads in the current thread's thread group and its subgroups.
    Virtual threads are not included in the estimate.

    The value returned is only an estimate because the number of
    threads may change dynamically while this method traverses internal
    data structures, and might be affected by the presence of certain
    system threads. This method is intended primarily for debugging
    and monitoring purposes.

    Returns:
    :   an estimate of the number of live platform threads in the
        current thread's thread group and in any other thread group
        that has the current thread's thread group as an ancestor
  + ### enumerate

    public static int enumerate([Thread](Thread.md "class in java.lang")[] tarray)

    Copies into the specified array every [live](#isAlive())
    platform thread in the current thread's thread group and its subgroups.
    This method simply invokes the [`ThreadGroup.enumerate(Thread[])`](ThreadGroup.md#enumerate(java.lang.Thread%5B%5D))
    method of the current thread's thread group. Virtual threads are
    not enumerated by this method.

    An application might use the [activeCount](#activeCount())
    method to get an estimate of how big the array should be, however
    *if the array is too short to hold all the threads, the extra threads
    are silently ignored.* If it is critical to obtain every live
    thread in the current thread's thread group and its subgroups, the
    invoker should verify that the returned int value is strictly less
    than the length of `tarray`.

    Due to the inherent race condition in this method, it is recommended
    that the method only be used for debugging and monitoring purposes.

    Parameters:
    :   `tarray` - an array into which to put the list of threads

    Returns:
    :   the number of threads put into the array

    Throws:
    :   `SecurityException` - if [`ThreadGroup.checkAccess()`](ThreadGroup.md#checkAccess()) determines that
        the current thread cannot access its thread group
  + ### countStackFrames

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="1.2",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public int countStackFrames()

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method was originally designed to count the number of
    stack frames but the results were never well-defined and it
    depended on thread-suspension.
    This method is subject to removal in a future version of Java SE.

    Throws `UnsupportedOperationException`.

    Returns:
    :   nothing

    See Also:
    :   - [`StackWalker`](StackWalker.md "class in java.lang")
  + ### join

    public final void join(long millis)
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Waits at most `millis` milliseconds for this thread to terminate.
    A timeout of `0` means to wait forever.
    This method returns immediately, without waiting, if the thread has not
    been [`started`](#start()).

    Parameters:
    :   `millis` - the time to wait in milliseconds

    Throws:
    :   `IllegalArgumentException` - if the value of `millis` is negative
    :   `InterruptedException` - if any thread has interrupted the current thread. The
        *interrupted status* of the current thread is
        cleared when this exception is thrown.
  + ### join

    public final void join(long millis,
    int nanos)
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Waits at most `millis` milliseconds plus
    `nanos` nanoseconds for this thread to terminate.
    If both arguments are `0`, it means to wait forever.
    This method returns immediately, without waiting, if the thread has not
    been [`started`](#start()).

    Parameters:
    :   `millis` - the time to wait in milliseconds
    :   `nanos` - `0-999999` additional nanoseconds to wait

    Throws:
    :   `IllegalArgumentException` - if the value of `millis` is negative, or the value
        of `nanos` is not in the range `0-999999`
    :   `InterruptedException` - if any thread has interrupted the current thread. The
        *interrupted status* of the current thread is
        cleared when this exception is thrown.
  + ### join

    public final void join()
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Waits for this thread to terminate.

    An invocation of this method behaves in exactly the same
    way as the invocation
    > [join](#join(long))`(0)`

    Throws:
    :   `InterruptedException` - if any thread has interrupted the current thread. The
        *interrupted status* of the current thread is
        cleared when this exception is thrown.
  + ### join

    public final boolean join([Duration](../time/Duration.md "class in java.time") duration)
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Waits for this thread to terminate for up to the given waiting duration.

    This method does not wait if the duration to wait is less than or
    equal to zero. In this case, the method just tests if the thread has
    terminated.

    Parameters:
    :   `duration` - the maximum duration to wait

    Returns:
    :   `true` if the thread has terminated, `false` if the
        thread has not terminated

    Throws:
    :   `InterruptedException` - if the current thread is interrupted while waiting.
        The *interrupted status* of the current thread is cleared
        when this exception is thrown.
    :   `IllegalThreadStateException` - if this thread has not been started.

    Since:
    :   19
  + ### dumpStack

    public static void dumpStack()

    Prints a stack trace of the current thread to the standard error stream.
    This method is useful for debugging.
  + ### setDaemon

    public final void setDaemon(boolean on)

    Marks this thread as either a *daemon* or *non-daemon* thread.
    The [shutdown sequence](Runtime.md#shutdown) begins when all
    started non-daemon threads have terminated.

    The daemon status of a virtual thread is always `true` and cannot be
    changed by this method to `false`.

    This method must be invoked before the thread is started. The behavior
    of this method when the thread has terminated is not specified.

    Parameters:
    :   `on` - if `true`, marks this thread as a daemon thread

    Throws:
    :   `IllegalArgumentException` - if this is a virtual thread and `on` is false
    :   `IllegalThreadStateException` - if this thread is [alive](#isAlive())
    :   `SecurityException` - if [`checkAccess()`](#checkAccess()) determines that the current
        thread cannot modify this thread
  + ### isDaemon

    public final boolean isDaemon()

    Tests if this thread is a daemon thread.
    The daemon status of a virtual thread is always `true`.

    Returns:
    :   `true` if this thread is a daemon thread;
        `false` otherwise.

    See Also:
    :   - [`setDaemon(boolean)`](#setDaemon(boolean))
  + ### checkAccess

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="17",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public final void checkAccess()

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method is only useful in conjunction with
    [the Security Manager](SecurityManager.md "class in java.lang"), which is
    deprecated and subject to removal in a future release.
    Consequently, this method is also deprecated and subject to
    removal. There is no replacement for the Security Manager or this
    method.

    Determines if the currently running thread has permission to
    modify this thread.

    If there is a security manager, its `checkAccess` method
    is called with this thread as its argument. This may result in
    throwing a `SecurityException`.

    Throws:
    :   `SecurityException` - if the current thread is not allowed to
        access this thread.

    See Also:
    :   - [`SecurityManager.checkAccess(Thread)`](SecurityManager.md#checkAccess(java.lang.Thread))
  + ### toString

    public [String](String.md "class in java.lang") toString()

    Returns a string representation of this thread. The string representation
    will usually include the thread's [identifier](#threadId()) and
    name. The default implementation for platform threads includes the thread's
    identifier, name, priority, and the name of the thread group.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this thread.
  + ### getContextClassLoader

    public [ClassLoader](ClassLoader.md "class in java.lang") getContextClassLoader()

    Returns the context `ClassLoader` for this thread.
    The context `ClassLoader` may be set by the creator of the thread
    for use by code running in this thread when loading classes and resources.
    If not [set](#setContextClassLoader(java.lang.ClassLoader)), the default is to inherit
    the context class loader from the parent thread.

    The context `ClassLoader` of the primordial thread is typically
    set to the class loader used to load the application.

    Returns:
    :   the context `ClassLoader` for this thread, or `null`
        indicating the system class loader (or, failing that, the
        bootstrap class loader)

    Throws:
    :   `SecurityException` - if a security manager is present, and the caller's class loader
        is not `null` and is not the same as or an ancestor of the
        context class loader, and the caller does not have the
        [`RuntimePermission`](RuntimePermission.md "class in java.lang")`("getClassLoader")`

    Since:
    :   1.2
  + ### setContextClassLoader

    public void setContextClassLoader([ClassLoader](ClassLoader.md "class in java.lang") cl)

    Sets the context `ClassLoader` for this thread.

    The context `ClassLoader` may be set by the creator of the thread
    for use by code running in this thread when loading classes and resources.

    If a security manager is present, its [`checkPermission`](SecurityManager.md#checkPermission(java.security.Permission))
    method is invoked with a [`RuntimePermission`](RuntimePermission.md "class in java.lang")`("setContextClassLoader")` permission to see if setting the context
    ClassLoader is permitted.

    Parameters:
    :   `cl` - the context ClassLoader for this Thread, or null indicating the
        system class loader (or, failing that, the bootstrap class loader)

    Throws:
    :   `SecurityException` - if the current thread cannot set the context ClassLoader

    Since:
    :   1.2
  + ### holdsLock

    public static boolean holdsLock([Object](Object.md "class in java.lang") obj)

    Returns `true` if and only if the current thread holds the
    monitor lock on the specified object.

    This method is designed to allow a program to assert that
    the current thread already holds a specified lock:

    ```
         assert Thread.holdsLock(obj);
    ```

    Parameters:
    :   `obj` - the object on which to test lock ownership

    Returns:
    :   `true` if the current thread holds the monitor lock on
        the specified object.

    Since:
    :   1.4
  + ### getStackTrace

    public [StackTraceElement](StackTraceElement.md "class in java.lang")[] getStackTrace()

    Returns an array of stack trace elements representing the stack dump
    of this thread. This method will return a zero-length array if
    this thread has not started, has started but has not yet been
    scheduled to run by the system, or has terminated.
    If the returned array is of non-zero length then the first element of
    the array represents the top of the stack, which is the most recent
    method invocation in the sequence. The last element of the array
    represents the bottom of the stack, which is the least recent method
    invocation in the sequence.

    If there is a security manager, and this thread is not
    the current thread, then the security manager's
    `checkPermission` method is called with a
    `RuntimePermission("getStackTrace")` permission
    to see if it's ok to get the stack trace.

    Some virtual machines may, under some circumstances, omit one
    or more stack frames from the stack trace. In the extreme case,
    a virtual machine that has no stack trace information concerning
    this thread is permitted to return a zero-length array from this
    method.

    Returns:
    :   an array of `StackTraceElement`,
        each represents one stack frame.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow
        getting the stack trace of thread.

    Since:
    :   1.5

    See Also:
    :   - [`Throwable.getStackTrace()`](Throwable.md#getStackTrace())
  + ### getAllStackTraces

    public static [Map](../util/Map.md "interface in java.util")<[Thread](Thread.md "class in java.lang"),[StackTraceElement](StackTraceElement.md "class in java.lang")[]> getAllStackTraces()

    Returns a map of stack traces for all live platform threads. The map
    does not include virtual threads.
    The map keys are threads and each map value is an array of
    `StackTraceElement` that represents the stack dump
    of the corresponding `Thread`.
    The returned stack traces are in the format specified for
    the [`getStackTrace`](#getStackTrace()) method.

    The threads may be executing while this method is called.
    The stack trace of each thread only represents a snapshot and
    each stack trace may be obtained at different time. A zero-length
    array will be returned in the map value if the virtual machine has
    no stack trace information about a thread.

    If there is a security manager, then the security manager's
    `checkPermission` method is called with a
    `RuntimePermission("getStackTrace")` permission as well as
    `RuntimePermission("modifyThreadGroup")` permission
    to see if it is ok to get the stack trace of all threads.

    Returns:
    :   a `Map` from `Thread` to an array of
        `StackTraceElement` that represents the stack trace of
        the corresponding thread.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow
        getting the stack trace of thread.

    Since:
    :   1.5

    See Also:
    :   - [`getStackTrace()`](#getStackTrace())
        - [`Throwable.getStackTrace()`](Throwable.md#getStackTrace())
  + ### getId

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="19")
    public long getId()

    Deprecated.

    This method is not final and may be overridden to return a
    value that is not the thread ID. Use [`threadId()`](#threadId()) instead.

    Returns the identifier of this Thread. The thread ID is a positive
    `long` number generated when this thread was created.
    The thread ID is unique and remains unchanged during its lifetime.

    Returns:
    :   this thread's ID

    Since:
    :   1.5
  + ### threadId

    public final long threadId()

    Returns the identifier of this Thread. The thread ID is a positive
    `long` number generated when this thread was created.
    The thread ID is unique and remains unchanged during its lifetime.

    Returns:
    :   this thread's ID

    Since:
    :   19
  + ### getState

    public [Thread.State](Thread.State.md "enum class in java.lang") getState()

    Returns the state of this thread.
    This method is designed for use in monitoring of the system state,
    not for synchronization control.

    Returns:
    :   this thread's state.

    Since:
    :   1.5
  + ### setDefaultUncaughtExceptionHandler

    public static void setDefaultUncaughtExceptionHandler([Thread.UncaughtExceptionHandler](Thread.UncaughtExceptionHandler.md "interface in java.lang") ueh)

    Set the default handler invoked when a thread abruptly terminates
    due to an uncaught exception, and no other handler has been defined
    for that thread.

    Uncaught exception handling is controlled first by the thread, then
    by the thread's [`ThreadGroup`](ThreadGroup.md "class in java.lang") object and finally by the default
    uncaught exception handler. If the thread does not have an explicit
    uncaught exception handler set, and the thread's thread group
    (including parent thread groups) does not specialize its
    `uncaughtException` method, then the default handler's
    `uncaughtException` method will be invoked.

    By setting the default uncaught exception handler, an application
    can change the way in which uncaught exceptions are handled (such as
    logging to a specific device, or file) for those threads that would
    already accept whatever "default" behavior the system
    provided.

    Note that the default uncaught exception handler should not usually
    defer to the thread's `ThreadGroup` object, as that could cause
    infinite recursion.

    Parameters:
    :   `ueh` - the object to use as the default uncaught exception handler.
        If `null` then there is no default handler.

    Throws:
    :   `SecurityException` - if a security manager is present and it denies
        [`RuntimePermission`](RuntimePermission.md "class in java.lang")`("setDefaultUncaughtExceptionHandler")`

    Since:
    :   1.5

    See Also:
    :   - [`setUncaughtExceptionHandler(java.lang.Thread.UncaughtExceptionHandler)`](#setUncaughtExceptionHandler(java.lang.Thread.UncaughtExceptionHandler))
        - [`getUncaughtExceptionHandler()`](#getUncaughtExceptionHandler())
        - [`ThreadGroup.uncaughtException(java.lang.Thread, java.lang.Throwable)`](ThreadGroup.md#uncaughtException(java.lang.Thread,java.lang.Throwable))
  + ### getDefaultUncaughtExceptionHandler

    public static [Thread.UncaughtExceptionHandler](Thread.UncaughtExceptionHandler.md "interface in java.lang") getDefaultUncaughtExceptionHandler()

    Returns the default handler invoked when a thread abruptly terminates
    due to an uncaught exception. If the returned value is `null`,
    there is no default.

    Returns:
    :   the default uncaught exception handler for all threads

    Since:
    :   1.5

    See Also:
    :   - [`setDefaultUncaughtExceptionHandler(java.lang.Thread.UncaughtExceptionHandler)`](#setDefaultUncaughtExceptionHandler(java.lang.Thread.UncaughtExceptionHandler))
  + ### getUncaughtExceptionHandler

    public [Thread.UncaughtExceptionHandler](Thread.UncaughtExceptionHandler.md "interface in java.lang") getUncaughtExceptionHandler()

    Returns the handler invoked when this thread abruptly terminates
    due to an uncaught exception. If this thread has not had an
    uncaught exception handler explicitly set then this thread's
    `ThreadGroup` object is returned, unless this thread
    has terminated, in which case `null` is returned.

    Returns:
    :   the uncaught exception handler for this thread

    Since:
    :   1.5
  + ### setUncaughtExceptionHandler

    public void setUncaughtExceptionHandler([Thread.UncaughtExceptionHandler](Thread.UncaughtExceptionHandler.md "interface in java.lang") ueh)

    Set the handler invoked when this thread abruptly terminates
    due to an uncaught exception.

    A thread can take full control of how it responds to uncaught
    exceptions by having its uncaught exception handler explicitly set.
    If no such handler is set then the thread's `ThreadGroup`
    object acts as its handler.

    Parameters:
    :   `ueh` - the object to use as this thread's uncaught exception
        handler. If `null` then this thread has no explicit handler.

    Throws:
    :   `SecurityException` - if the current thread is not allowed to
        modify this thread.

    Since:
    :   1.5

    See Also:
    :   - [`setDefaultUncaughtExceptionHandler(java.lang.Thread.UncaughtExceptionHandler)`](#setDefaultUncaughtExceptionHandler(java.lang.Thread.UncaughtExceptionHandler))
        - [`ThreadGroup.uncaughtException(java.lang.Thread, java.lang.Throwable)`](ThreadGroup.md#uncaughtException(java.lang.Thread,java.lang.Throwable))