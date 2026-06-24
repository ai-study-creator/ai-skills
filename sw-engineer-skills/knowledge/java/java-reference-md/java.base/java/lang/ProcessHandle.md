Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface ProcessHandle

All Superinterfaces:
:   `Comparable<ProcessHandle>`

---

public interface ProcessHandle
extends [Comparable](Comparable.md "interface in java.lang")<[ProcessHandle](ProcessHandle.md "interface in java.lang")>

ProcessHandle identifies and provides control of native processes. Each
individual process can be monitored for liveness, list its children,
get information about the process or destroy it.
By comparison, [`Process`](Process.md "class in java.lang") instances were started
by the current process and additionally provide access to the process
input, output, and error streams.

The native process ID is an identification number that the
operating system assigns to the process.
The range for process id values is dependent on the operating system.
For example, an embedded system might use a 16-bit value.
Status information about a process is retrieved from the native system
and may change asynchronously; processes may be created or terminate
spontaneously.
The time between when a process terminates and the process id
is reused for a new process is unpredictable.
Race conditions can exist between checking the status of a process and
acting upon it. When using ProcessHandles avoid assumptions
about the liveness or identity of the underlying process.

Each ProcessHandle identifies and allows control of a process in the native
system. ProcessHandles are returned from the factory methods [`current()`](#current()),
[`of(long)`](#of(long)),
[`children()`](#children()), [`descendants()`](#descendants()), [`parent()`](#parent()) and
[`allProcesses()`](#allProcesses()).

The [`Process`](Process.md "class in java.lang") instances created by [`ProcessBuilder`](ProcessBuilder.md "class in java.lang") can be queried
for a ProcessHandle that provides information about the Process.
ProcessHandle references should not be freely distributed.

A [`CompletableFuture`](../util/concurrent/CompletableFuture.md "class in java.util.concurrent") available from [`onExit()`](#onExit())
can be used to wait for process termination, and possibly trigger dependent
actions.

The factory methods limit access to ProcessHandles using the
SecurityManager checking the [`RuntimePermission("manageProcess")`](RuntimePermission.md "class in java.lang").
The ability to control processes is also restricted by the native system,
ProcessHandle provides no more access to, or control over, the native process
than would be allowed by a native application.

Since:
:   9

See Also:
:   * [`Process`](Process.md "class in java.lang")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `ProcessHandle.Info`

  Information snapshot about the process.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `static Stream<ProcessHandle>`

  `allProcesses()`

  Returns a snapshot of all processes visible to the current process.

  `Stream<ProcessHandle>`

  `children()`

  Returns a snapshot of the current direct children of the process.

  `int`

  `compareTo(ProcessHandle other)`

  Compares this ProcessHandle with the specified ProcessHandle for order.

  `static ProcessHandle`

  `current()`

  Returns a ProcessHandle for the current process.

  `Stream<ProcessHandle>`

  `descendants()`

  Returns a snapshot of the descendants of the process.

  `boolean`

  `destroy()`

  Requests the process to be killed.

  `boolean`

  `destroyForcibly()`

  Requests the process to be killed forcibly.

  `boolean`

  `equals(Object other)`

  Returns `true` if `other` object is non-null, is of the
  same implementation, and represents the same system process;
  otherwise it returns `false`.

  `int`

  `hashCode()`

  Returns a hash code value for this ProcessHandle.

  `ProcessHandle.Info`

  `info()`

  Returns a snapshot of information about the process.

  `boolean`

  `isAlive()`

  Tests whether the process represented by this `ProcessHandle` is alive.

  `static Optional<ProcessHandle>`

  `of(long pid)`

  Returns an `Optional<ProcessHandle>` for an existing native process.

  `CompletableFuture<ProcessHandle>`

  `onExit()`

  Returns a `CompletableFuture<ProcessHandle>` for the termination
  of the process.

  `Optional<ProcessHandle>`

  `parent()`

  Returns an `Optional<ProcessHandle>` for the parent process.

  `long`

  `pid()`

  Returns the native process ID of the process.

  `boolean`

  `supportsNormalTermination()`

  Returns `true` if the implementation of [`destroy()`](#destroy())
  normally terminates the process.

* ## Method Details

  + ### pid

    long pid()

    Returns the native process ID of the process. The native process ID is an
    identification number that the operating system assigns to the process.
    The operating system may reuse the process ID after a process terminates.
    Use [`equals`](#equals(java.lang.Object)) or
    [`compareTo`](#compareTo(java.lang.ProcessHandle)) to compare ProcessHandles.

    Returns:
    :   the native process ID of the process

    Throws:
    :   `UnsupportedOperationException` - if the implementation
        does not support this operation
  + ### of

    static [Optional](../util/Optional.md "class in java.util")<[ProcessHandle](ProcessHandle.md "interface in java.lang")> of(long pid)

    Returns an `Optional<ProcessHandle>` for an existing native process.

    Parameters:
    :   `pid` - a native process ID

    Returns:
    :   an `Optional<ProcessHandle>` of the PID for the process;
        the `Optional` is empty if the process does not exist

    Throws:
    :   `SecurityException` - if a security manager has been installed and
        it denies RuntimePermission("manageProcess")
    :   `UnsupportedOperationException` - if the implementation
        does not support this operation
  + ### current

    static [ProcessHandle](ProcessHandle.md "interface in java.lang") current()

    Returns a ProcessHandle for the current process. The ProcessHandle cannot be
    used to destroy the current process, use [`System.exit`](System.md#exit(int)) instead.

    Returns:
    :   a ProcessHandle for the current process

    Throws:
    :   `SecurityException` - if a security manager has been installed and
        it denies RuntimePermission("manageProcess")
    :   `UnsupportedOperationException` - if the implementation
        does not support this operation
  + ### parent

    [Optional](../util/Optional.md "class in java.util")<[ProcessHandle](ProcessHandle.md "interface in java.lang")> parent()

    Returns an `Optional<ProcessHandle>` for the parent process.
    Note that Processes in a zombie state usually don't have a parent.

    Returns:
    :   an `Optional<ProcessHandle>` of the parent process;
        the `Optional` is empty if the child process does not have a parent
        or if the parent is not available, possibly due to operating system limitations

    Throws:
    :   `SecurityException` - if a security manager has been installed and
        it denies RuntimePermission("manageProcess")
  + ### children

    [Stream](../util/stream/Stream.md "interface in java.util.stream")<[ProcessHandle](ProcessHandle.md "interface in java.lang")> children()

    Returns a snapshot of the current direct children of the process.
    The [`parent()`](#parent()) of a direct child process is the process.
    Typically, a process that is [`not alive`](#isAlive()) has no children.

    *Note that processes are created and terminate asynchronously.
    There is no guarantee that a process is [`alive`](#isAlive()).*

    Returns:
    :   a sequential Stream of ProcessHandles for processes that are
        direct children of the process

    Throws:
    :   `SecurityException` - if a security manager has been installed and
        it denies RuntimePermission("manageProcess")
  + ### descendants

    [Stream](../util/stream/Stream.md "interface in java.util.stream")<[ProcessHandle](ProcessHandle.md "interface in java.lang")> descendants()

    Returns a snapshot of the descendants of the process.
    The descendants of a process are the children of the process
    plus the descendants of those children, recursively.
    Typically, a process that is [`not alive`](#isAlive()) has no children.

    *Note that processes are created and terminate asynchronously.
    There is no guarantee that a process is [`alive`](#isAlive()).*

    Returns:
    :   a sequential Stream of ProcessHandles for processes that
        are descendants of the process

    Throws:
    :   `SecurityException` - if a security manager has been installed and
        it denies RuntimePermission("manageProcess")
  + ### allProcesses

    static [Stream](../util/stream/Stream.md "interface in java.util.stream")<[ProcessHandle](ProcessHandle.md "interface in java.lang")> allProcesses()

    Returns a snapshot of all processes visible to the current process.

    *Note that processes are created and terminate asynchronously. There
    is no guarantee that a process in the stream is alive or that no other
    processes may have been created since the inception of the snapshot.*

    Returns:
    :   a Stream of ProcessHandles for all processes

    Throws:
    :   `SecurityException` - if a security manager has been installed and
        it denies RuntimePermission("manageProcess")
    :   `UnsupportedOperationException` - if the implementation
        does not support this operation
  + ### info

    [ProcessHandle.Info](ProcessHandle.Info.md "interface in java.lang") info()

    Returns a snapshot of information about the process.

    A [`ProcessHandle.Info`](ProcessHandle.Info.md "interface in java.lang") instance has accessor methods that return
    information about the process if it is available.

    Returns:
    :   a snapshot of information about the process, always non-null
  + ### onExit

    [CompletableFuture](../util/concurrent/CompletableFuture.md "class in java.util.concurrent")<[ProcessHandle](ProcessHandle.md "interface in java.lang")> onExit()

    Returns a `CompletableFuture<ProcessHandle>` for the termination
    of the process.
    The [`CompletableFuture`](../util/concurrent/CompletableFuture.md "class in java.util.concurrent") provides the ability
    to trigger dependent functions or actions that may be run synchronously
    or asynchronously upon process termination.
    When the process has terminated the CompletableFuture is
    [`completed`](../util/concurrent/CompletableFuture.md#complete(T)) regardless
    of the exit status of the process.
    The `onExit` method can be called multiple times to invoke
    independent actions when the process exits.

    Calling `onExit().get()` waits for the process to terminate and returns
    the ProcessHandle. The future can be used to check if the process is
    [`done`](../util/concurrent/CompletableFuture.md#isDone()) or to
    [`wait`](../util/concurrent/Future.md#get()) for it to terminate.
    [`Cancelling`](../util/concurrent/Future.md#cancel(boolean))
    the CompleteableFuture does not affect the Process.

    Returns:
    :   a new `CompletableFuture<ProcessHandle>` for the ProcessHandle

    Throws:
    :   `IllegalStateException` - if the process is the current process
  + ### supportsNormalTermination

    boolean supportsNormalTermination()

    Returns `true` if the implementation of [`destroy()`](#destroy())
    normally terminates the process.
    Returns `false` if the implementation of `destroy`
    forcibly and immediately terminates the process.

    Returns:
    :   `true` if the implementation of [`destroy()`](#destroy())
        normally terminates the process;
        otherwise, [`destroy()`](#destroy()) forcibly terminates the process
  + ### destroy

    boolean destroy()

    Requests the process to be killed.
    Whether the process represented by this `ProcessHandle` object is
    [`normally terminated`](#supportsNormalTermination()) or not is
    implementation dependent.
    Forcible process destruction is defined as the immediate termination of the
    process, whereas normal termination allows the process to shut down cleanly.
    If the process is not alive, no action is taken.
    The operating system access controls may prevent the process
    from being killed.

    The [`CompletableFuture`](../util/concurrent/CompletableFuture.md "class in java.util.concurrent") from [`onExit()`](#onExit()) is
    [`completed`](../util/concurrent/CompletableFuture.md#complete(T))
    when the process has terminated.

    Note: The process may not terminate immediately.
    For example, `isAlive()` may return true for a brief period
    after `destroy()` is called.

    Returns:
    :   `true` if termination was successfully requested,
        otherwise `false`

    Throws:
    :   `IllegalStateException` - if the process is the current process
  + ### destroyForcibly

    boolean destroyForcibly()

    Requests the process to be killed forcibly.
    The process represented by this `ProcessHandle` object is
    forcibly terminated.
    Forcible process destruction is defined as the immediate termination of the
    process, whereas normal termination allows the process to shut down cleanly.
    If the process is not alive, no action is taken.
    The operating system access controls may prevent the process
    from being killed.

    The [`CompletableFuture`](../util/concurrent/CompletableFuture.md "class in java.util.concurrent") from [`onExit()`](#onExit()) is
    [`completed`](../util/concurrent/CompletableFuture.md#complete(T))
    when the process has terminated.

    Note: The process may not terminate immediately.
    For example, `isAlive()` may return true for a brief period
    after `destroyForcibly()` is called.

    Returns:
    :   `true` if termination was successfully requested,
        otherwise `false`

    Throws:
    :   `IllegalStateException` - if the process is the current process
  + ### isAlive

    boolean isAlive()

    Tests whether the process represented by this `ProcessHandle` is alive.
    Process termination is implementation and operating system specific.
    The process is considered alive as long as the PID is valid.

    Returns:
    :   `true` if the process represented by this
        `ProcessHandle` object has not yet terminated
  + ### hashCode

    int hashCode()

    Returns a hash code value for this ProcessHandle.
    The hashcode value follows the general contract for [`Object.hashCode()`](Object.md#hashCode()).
    The value is a function of the [`pid()`](#pid()) value and
    may be a function of additional information to uniquely identify the process.
    If two ProcessHandles are equal according to the [`equals`](#equals(java.lang.Object))
    method, then calling the hashCode method on each of the two objects
    must produce the same integer result.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))
  + ### equals

    boolean equals([Object](Object.md "class in java.lang") other)

    Returns `true` if `other` object is non-null, is of the
    same implementation, and represents the same system process;
    otherwise it returns `false`.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - another object

    Returns:
    :   `true` if the `other` object is non-null,
        is of the same implementation class and represents
        the same system process; otherwise returns `false`

    See Also:
    :   - [`Object.hashCode()`](Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### compareTo

    int compareTo([ProcessHandle](ProcessHandle.md "interface in java.lang") other)

    Compares this ProcessHandle with the specified ProcessHandle for order.
    The order is not specified, but is consistent with [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object)),
    which returns `true` if and only if two instances of ProcessHandle
    are of the same implementation and represent the same system process.
    Comparison is only supported among objects of same implementation.
    If attempt is made to mutually compare two different implementations
    of [`ProcessHandle`](ProcessHandle.md "interface in java.lang")s, [`ClassCastException`](ClassCastException.md "class in java.lang") is thrown.

    Specified by:
    :   `compareTo` in interface `Comparable<ProcessHandle>`

    Parameters:
    :   `other` - the ProcessHandle to be compared

    Returns:
    :   a negative integer, zero, or a positive integer as this object
        is less than, equal to, or greater than the specified object.

    Throws:
    :   `NullPointerException` - if the specified object is null
    :   `ClassCastException` - if the specified object is not of same class
        as this object