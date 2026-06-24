Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Process

[java.lang.Object](Object.md "class in java.lang")

java.lang.Process

---

public abstract class Process
extends [Object](Object.md "class in java.lang")

`Process` provides control of native processes started by
ProcessBuilder.start and Runtime.exec.
The class provides methods for performing input from the process, performing
output to the process, waiting for the process to complete,
checking the exit status of the process, and destroying (killing)
the process.
The [`ProcessBuilder.start()`](ProcessBuilder.md#start()) and
[`Runtime.exec`](Runtime.md#exec(java.lang.String%5B%5D,java.lang.String%5B%5D,java.io.File))
methods create a native process and return an instance of a
subclass of `Process` that can be used to control the process
and obtain information about it.

The methods that create processes may not work well for special
processes on certain native platforms, such as native windowing
processes, daemon processes, Win16/DOS processes on Microsoft
Windows, or shell scripts.

By default, the created process does not have its own terminal
or console. All its standard I/O (i.e. stdin, stdout, stderr)
operations will be redirected to the parent process, where they can
be accessed via the streams obtained using the methods
[`getOutputStream()`](#getOutputStream()),
[`getInputStream()`](#getInputStream()), and
[`getErrorStream()`](#getErrorStream()).
The I/O streams of characters and lines can be written and read using the methods
[`outputWriter()`](#outputWriter()), [`outputWriter(Charset)`](#outputWriter(java.nio.charset.Charset))},
[`inputReader()`](#inputReader()), [`inputReader(Charset)`](#inputReader(java.nio.charset.Charset)),
[`errorReader()`](#errorReader()), and [`errorReader(Charset)`](#errorReader(java.nio.charset.Charset)).
The parent process uses these streams to feed input to and get output
from the process. Because some native platforms only provide
limited buffer size for standard input and output streams, failure
to promptly write the input stream or read the output stream of
the process may cause the process to block, or even deadlock.

Where desired, [process I/O can also be redirected](ProcessBuilder.md#redirect-input)
using methods of the [`ProcessBuilder`](ProcessBuilder.md "class in java.lang") class.

The process is not killed when there are no more references to
the `Process` object, but rather the process
continues executing asynchronously.

There is no requirement that the process represented by a `Process` object execute asynchronously or concurrently with respect
to the Java process that owns the `Process` object.

As of 1.5, [`ProcessBuilder.start()`](ProcessBuilder.md#start()) is the preferred way
to create a `Process`.

Subclasses of Process should override the [`onExit()`](#onExit()) and
[`toHandle()`](#toHandle()) methods to provide a fully functional Process including the
[process id](#pid()),
[information about the process](#info()),
[direct children](#children()), and
[direct children plus descendants of those children](#descendants()) of the process.
Delegating to the underlying Process or ProcessHandle is typically
easiest and most efficient.

Since:
:   1.0

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Process()`

  Default constructor for Process.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Stream<ProcessHandle>`

  `children()`

  Returns a snapshot of the direct children of the process.

  `Stream<ProcessHandle>`

  `descendants()`

  Returns a snapshot of the descendants of the process.

  `abstract void`

  `destroy()`

  Kills the process.

  `Process`

  `destroyForcibly()`

  Kills the process forcibly.

  `final BufferedReader`

  `errorReader()`

  Returns a [`BufferedReader`](../io/BufferedReader.md "class in java.io") connected to the standard
  error of the process.

  `final BufferedReader`

  `errorReader(Charset charset)`

  Returns a [`BufferedReader`](../io/BufferedReader.md "class in java.io") connected to the
  standard error of this process using a Charset.

  `abstract int`

  `exitValue()`

  Returns the exit value for the process.

  `abstract InputStream`

  `getErrorStream()`

  Returns the input stream connected to the error output of the
  process.

  `abstract InputStream`

  `getInputStream()`

  Returns the input stream connected to the normal output of the
  process.

  `abstract OutputStream`

  `getOutputStream()`

  Returns the output stream connected to the normal input of the
  process.

  `ProcessHandle.Info`

  `info()`

  Returns a snapshot of information about the process.

  `final BufferedReader`

  `inputReader()`

  Returns a [`BufferedReader`](../io/BufferedReader.md "class in java.io") connected to the standard
  output of the process.

  `final BufferedReader`

  `inputReader(Charset charset)`

  Returns a [`BufferedReader`](../io/BufferedReader.md "class in java.io") connected to the
  standard output of this process using a Charset.

  `boolean`

  `isAlive()`

  Tests whether the process represented by this `Process` is
  alive.

  `CompletableFuture<Process>`

  `onExit()`

  Returns a `CompletableFuture<Process>` for the termination of the Process.

  `final BufferedWriter`

  `outputWriter()`

  Returns a `BufferedWriter` connected to the normal input of the process
  using the native encoding.

  `final BufferedWriter`

  `outputWriter(Charset charset)`

  Returns a `BufferedWriter` connected to the normal input of the process
  using a Charset.

  `long`

  `pid()`

  Returns the native process ID of the process.

  `boolean`

  `supportsNormalTermination()`

  Returns `true` if the implementation of [`destroy()`](#destroy()) is to
  normally terminate the process,
  Returns `false` if the implementation of `destroy`
  forcibly and immediately terminates the process.

  `ProcessHandle`

  `toHandle()`

  Returns a ProcessHandle for the Process.

  `abstract int`

  `waitFor()`

  Causes the current thread to wait, if necessary, until the
  process represented by this `Process` object has
  terminated.

  `boolean`

  `waitFor(long timeout,
  TimeUnit unit)`

  Causes the current thread to wait, if necessary, until the
  process represented by this `Process` object has
  terminated, or the specified waiting time elapses.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Process

    public Process()

    Default constructor for Process.
* ## Method Details

  + ### getOutputStream

    public abstract [OutputStream](../io/OutputStream.md "class in java.io") getOutputStream()

    Returns the output stream connected to the normal input of the
    process. Output to the stream is piped into the standard
    input of the process represented by this `Process` object.

    If the standard input of the process has been redirected using
    [`ProcessBuilder.redirectInput`](ProcessBuilder.md#redirectInput(java.lang.ProcessBuilder.Redirect))
    then this method will return a
    [null output stream](ProcessBuilder.md#redirect-input).

    Returns:
    :   the output stream connected to the normal input of the
        process
  + ### getInputStream

    public abstract [InputStream](../io/InputStream.md "class in java.io") getInputStream()

    Returns the input stream connected to the normal output of the
    process. The stream obtains data piped from the standard
    output of the process represented by this `Process` object.

    If the standard output of the process has been redirected using
    [`ProcessBuilder.redirectOutput`](ProcessBuilder.md#redirectOutput(java.lang.ProcessBuilder.Redirect))
    then this method will return a
    [null input stream](ProcessBuilder.md#redirect-output).

    Otherwise, if the standard error of the process has been
    redirected using
    [`ProcessBuilder.redirectErrorStream`](ProcessBuilder.md#redirectErrorStream(boolean))
    then the input stream returned by this method will receive the
    merged standard output and the standard error of the process.

    Returns:
    :   the input stream connected to the normal output of the
        process
  + ### getErrorStream

    public abstract [InputStream](../io/InputStream.md "class in java.io") getErrorStream()

    Returns the input stream connected to the error output of the
    process. The stream obtains data piped from the error output
    of the process represented by this `Process` object.

    If the standard error of the process has been redirected using
    [`ProcessBuilder.redirectError`](ProcessBuilder.md#redirectError(java.lang.ProcessBuilder.Redirect)) or
    [`ProcessBuilder.redirectErrorStream`](ProcessBuilder.md#redirectErrorStream(boolean))
    then this method will return a
    [null input stream](ProcessBuilder.md#redirect-output).

    Returns:
    :   the input stream connected to the error output of
        the process
  + ### inputReader

    public final [BufferedReader](../io/BufferedReader.md "class in java.io") inputReader()

    Returns a [`BufferedReader`](../io/BufferedReader.md "class in java.io") connected to the standard
    output of the process. The [`Charset`](../nio/charset/Charset.md "class in java.nio.charset") for the native encoding is used
    to read characters, lines, or stream lines from standard output.

    This method delegates to [`inputReader(Charset)`](#inputReader(java.nio.charset.Charset)) using the
    [`Charset`](../nio/charset/Charset.md "class in java.nio.charset") named by the `native.encoding` system property.
    If the `native.encoding` is not a valid charset name or not supported
    the [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset()) is used.

    Returns:
    :   a [`BufferedReader`](../io/BufferedReader.md "class in java.io") using the
        `native.encoding` if supported, otherwise, the
        [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())

    Since:
    :   17
  + ### inputReader

    public final [BufferedReader](../io/BufferedReader.md "class in java.io") inputReader([Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)

    Returns a [`BufferedReader`](../io/BufferedReader.md "class in java.io") connected to the
    standard output of this process using a Charset.
    The `BufferedReader` can be used to read characters, lines,
    or stream lines of the standard output.

    Characters are read by an InputStreamReader that reads and decodes bytes
    from this process [`getInputStream()`](#getInputStream()). Bytes are decoded to characters
    using the `charset`; malformed-input and unmappable-character
    sequences are replaced with the charset's default replacement.
    The `BufferedReader` reads and buffers characters from the InputStreamReader.

    The first call to this method creates the [`BufferedReader`](../io/BufferedReader.md "class in java.io"),
    if called again with the same `charset` the same `BufferedReader` is returned.
    It is an error to call this method again with a different `charset`.

    If the standard output of the process has been redirected using
    [`ProcessBuilder.redirectOutput`](ProcessBuilder.md#redirectOutput(java.lang.ProcessBuilder.Redirect))
    then the `InputStreamReader` will be reading from a
    [null input stream](ProcessBuilder.md#redirect-output).

    Otherwise, if the standard error of the process has been redirected using
    [`ProcessBuilder.redirectErrorStream`](ProcessBuilder.md#redirectErrorStream(boolean)) then the input reader returned by
    this method will receive the merged standard output and the standard error
    of the process.

    Parameters:
    :   `charset` - the `Charset` used to decode bytes to characters

    Returns:
    :   a `BufferedReader` for the standard output of the process using the `charset`

    Throws:
    :   `NullPointerException` - if the `charset` is `null`
    :   `IllegalStateException` - if called more than once with different charset arguments

    Since:
    :   17
  + ### errorReader

    public final [BufferedReader](../io/BufferedReader.md "class in java.io") errorReader()

    Returns a [`BufferedReader`](../io/BufferedReader.md "class in java.io") connected to the standard
    error of the process. The [`Charset`](../nio/charset/Charset.md "class in java.nio.charset") for the native encoding is used
    to read characters, lines, or stream lines from standard error.

    This method delegates to [`errorReader(Charset)`](#errorReader(java.nio.charset.Charset)) using the
    [`Charset`](../nio/charset/Charset.md "class in java.nio.charset") named by the `native.encoding` system property.
    If the `native.encoding` is not a valid charset name or not supported
    the [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset()) is used.

    Returns:
    :   a [`BufferedReader`](../io/BufferedReader.md "class in java.io") using the
        `native.encoding` if supported, otherwise, the
        [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())

    Since:
    :   17
  + ### errorReader

    public final [BufferedReader](../io/BufferedReader.md "class in java.io") errorReader([Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)

    Returns a [`BufferedReader`](../io/BufferedReader.md "class in java.io") connected to the
    standard error of this process using a Charset.
    The `BufferedReader` can be used to read characters, lines,
    or stream lines of the standard error.

    Characters are read by an InputStreamReader that reads and decodes bytes
    from this process [`getErrorStream()`](#getErrorStream()). Bytes are decoded to characters
    using the `charset`; malformed-input and unmappable-character
    sequences are replaced with the charset's default replacement.
    The `BufferedReader` reads and buffers characters from the InputStreamReader.

    The first call to this method creates the [`BufferedReader`](../io/BufferedReader.md "class in java.io"),
    if called again with the same `charset` the same `BufferedReader` is returned.
    It is an error to call this method again with a different `charset`.

    If the standard error of the process has been redirected using
    [`ProcessBuilder.redirectError`](ProcessBuilder.md#redirectError(java.lang.ProcessBuilder.Redirect)) or
    [`ProcessBuilder.redirectErrorStream`](ProcessBuilder.md#redirectErrorStream(boolean))
    then the `InputStreamReader` will be reading from a
    [null input stream](ProcessBuilder.md#redirect-output).

    Parameters:
    :   `charset` - the `Charset` used to decode bytes to characters

    Returns:
    :   a `BufferedReader` for the standard error of the process using the `charset`

    Throws:
    :   `NullPointerException` - if the `charset` is `null`
    :   `IllegalStateException` - if called more than once with different charset arguments

    Since:
    :   17
  + ### outputWriter

    public final [BufferedWriter](../io/BufferedWriter.md "class in java.io") outputWriter()

    Returns a `BufferedWriter` connected to the normal input of the process
    using the native encoding.
    Writes text to a character-output stream, buffering characters so as to provide
    for the efficient writing of single characters, arrays, and strings.

    This method delegates to [`outputWriter(Charset)`](#outputWriter(java.nio.charset.Charset)) using the
    [`Charset`](../nio/charset/Charset.md "class in java.nio.charset") named by the `native.encoding` system property.
    If the `native.encoding` is not a valid charset name or not supported
    the [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset()) is used.

    Returns:
    :   a `BufferedWriter` to the standard input of the process using the charset
        for the `native.encoding` system property

    Since:
    :   17
  + ### outputWriter

    public final [BufferedWriter](../io/BufferedWriter.md "class in java.io") outputWriter([Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)

    Returns a `BufferedWriter` connected to the normal input of the process
    using a Charset.
    Writes text to a character-output stream, buffering characters so as to provide
    for the efficient writing of single characters, arrays, and strings.

    Characters written by the writer are encoded to bytes using [`OutputStreamWriter`](../io/OutputStreamWriter.md "class in java.io")
    and the [`Charset`](../nio/charset/Charset.md "class in java.nio.charset") are written to the standard input of the process represented
    by this `Process`.
    Malformed-input and unmappable-character sequences are replaced with the charset's
    default replacement.

    The first call to this method creates the [`BufferedWriter`](../io/BufferedWriter.md "class in java.io"),
    if called again with the same `charset` the same `BufferedWriter` is returned.
    It is an error to call this method again with a different `charset`.

    If the standard input of the process has been redirected using
    [`ProcessBuilder.redirectInput`](ProcessBuilder.md#redirectInput(java.lang.ProcessBuilder.Redirect)) then the `OutputStreamWriter` writes to a
    [null output stream](ProcessBuilder.md#redirect-input).

    Parameters:
    :   `charset` - the `Charset` to encode characters to bytes

    Returns:
    :   a `BufferedWriter` to the standard input of the process using the `charset`

    Throws:
    :   `NullPointerException` - if the `charset` is `null`
    :   `IllegalStateException` - if called more than once with different charset arguments

    Since:
    :   17
  + ### waitFor

    public abstract int waitFor()
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Causes the current thread to wait, if necessary, until the
    process represented by this `Process` object has
    terminated. This method returns immediately if the process
    has already terminated. If the process has not yet
    terminated, the calling thread will be blocked until the
    process exits.

    Returns:
    :   the exit value of the process represented by this
        `Process` object. By convention, the value
        `0` indicates normal termination.

    Throws:
    :   `InterruptedException` - if the current thread is
        [interrupted](Thread.md#interrupt()) by another
        thread while it is waiting, then the wait is ended and
        an [`InterruptedException`](InterruptedException.md "class in java.lang") is thrown.
  + ### waitFor

    public boolean waitFor(long timeout,
    [TimeUnit](../util/concurrent/TimeUnit.md "enum class in java.util.concurrent") unit)
    throws [InterruptedException](InterruptedException.md "class in java.lang")

    Causes the current thread to wait, if necessary, until the
    process represented by this `Process` object has
    terminated, or the specified waiting time elapses.

    If the process has already terminated then this method returns
    immediately with the value `true`. If the process has not
    terminated and the timeout value is less than, or equal to, zero, then
    this method returns immediately with the value `false`.

    The default implementation of this method polls the `exitValue`
    to check if the process has terminated. Concrete implementations of this
    class are strongly encouraged to override this method with a more
    efficient implementation.

    Parameters:
    :   `timeout` - the maximum time to wait
    :   `unit` - the time unit of the `timeout` argument

    Returns:
    :   `true` if the process has exited and `false` if
        the waiting time elapsed before the process has exited.

    Throws:
    :   `InterruptedException` - if the current thread is interrupted
        while waiting.
    :   `NullPointerException` - if unit is null

    Since:
    :   1.8
  + ### exitValue

    public abstract int exitValue()

    Returns the exit value for the process.

    Returns:
    :   the exit value of the process represented by this
        `Process` object. By convention, the value
        `0` indicates normal termination.

    Throws:
    :   `IllegalThreadStateException` - if the process represented
        by this `Process` object has not yet terminated
  + ### destroy

    public abstract void destroy()

    Kills the process.
    Whether the process represented by this `Process` object is
    [normally terminated](#supportsNormalTermination()) or not is
    implementation dependent.
    Forcible process destruction is defined as the immediate termination of a
    process, whereas normal termination allows the process to shut down cleanly.
    If the process is not alive, no action is taken.

    The [`CompletableFuture`](../util/concurrent/CompletableFuture.md "class in java.util.concurrent") from [`onExit()`](#onExit()) is
    [completed](../util/concurrent/CompletableFuture.md#complete(T))
    when the process has terminated.
  + ### destroyForcibly

    public [Process](Process.md "class in java.lang") destroyForcibly()

    Kills the process forcibly. The process represented by this
    `Process` object is forcibly terminated.
    Forcible process destruction is defined as the immediate termination of a
    process, whereas normal termination allows the process to shut down cleanly.
    If the process is not alive, no action is taken.

    The [`CompletableFuture`](../util/concurrent/CompletableFuture.md "class in java.util.concurrent") from [`onExit()`](#onExit()) is
    [completed](../util/concurrent/CompletableFuture.md#complete(T))
    when the process has terminated.

    Invoking this method on `Process` objects returned by
    [`ProcessBuilder.start()`](ProcessBuilder.md#start()) and [`Runtime.exec(java.lang.String)`](Runtime.md#exec(java.lang.String)) forcibly terminate
    the process.

    Returns:
    :   the `Process` object representing the
        process forcibly destroyed

    Since:
    :   1.8
  + ### supportsNormalTermination

    public boolean supportsNormalTermination()

    Returns `true` if the implementation of [`destroy()`](#destroy()) is to
    normally terminate the process,
    Returns `false` if the implementation of `destroy`
    forcibly and immediately terminates the process.

    Invoking this method on `Process` objects returned by
    [`ProcessBuilder.start()`](ProcessBuilder.md#start()) and [`Runtime.exec(java.lang.String)`](Runtime.md#exec(java.lang.String)) return
    `true` or `false` depending on the platform implementation.

    Returns:
    :   `true` if the implementation of [`destroy()`](#destroy()) is to
        normally terminate the process;
        otherwise, [`destroy()`](#destroy()) forcibly terminates the process

    Throws:
    :   `UnsupportedOperationException` - if the Process implementation
        does not support this operation

    Since:
    :   9
  + ### isAlive

    public boolean isAlive()

    Tests whether the process represented by this `Process` is
    alive.

    Returns:
    :   `true` if the process represented by this
        `Process` object has not yet terminated.

    Since:
    :   1.8
  + ### pid

    public long pid()

    Returns the native process ID of the process.
    The native process ID is an identification number that the operating
    system assigns to the process.

    Returns:
    :   the native process id of the process

    Throws:
    :   `UnsupportedOperationException` - if the Process implementation
        does not support this operation

    Since:
    :   9
  + ### onExit

    public [CompletableFuture](../util/concurrent/CompletableFuture.md "class in java.util.concurrent")<[Process](Process.md "class in java.lang")> onExit()

    Returns a `CompletableFuture<Process>` for the termination of the Process.
    The [`CompletableFuture`](../util/concurrent/CompletableFuture.md "class in java.util.concurrent") provides the ability
    to trigger dependent functions or actions that may be run synchronously
    or asynchronously upon process termination.
    When the process has terminated the CompletableFuture is
    [`completed`](../util/concurrent/CompletableFuture.md#complete(T)) regardless
    of the exit status of the process.

    Calling `onExit().get()` waits for the process to terminate and returns
    the Process. The future can be used to check if the process is
    [done](../util/concurrent/CompletableFuture.md#isDone()) or to
    [wait](../util/concurrent/CompletableFuture.md#get()) for it to terminate.
    [Cancelling](../util/concurrent/CompletableFuture.md#cancel(boolean))
    the CompletableFuture does not affect the Process.

    Processes returned from [`ProcessBuilder.start()`](ProcessBuilder.md#start()) override the
    default implementation to provide an efficient mechanism to wait
    for process exit.

    Returns:
    :   a new `CompletableFuture<Process>` for the Process

    Since:
    :   9
  + ### toHandle

    public [ProcessHandle](ProcessHandle.md "interface in java.lang") toHandle()

    Returns a ProcessHandle for the Process.
    `Process` objects returned by [`ProcessBuilder.start()`](ProcessBuilder.md#start()) and
    [`Runtime.exec(java.lang.String)`](Runtime.md#exec(java.lang.String)) implement `toHandle` as the equivalent of
    [`ProcessHandle.of(pid)`](ProcessHandle.md#of(long)) including the
    check for a SecurityManager and `RuntimePermission("manageProcess")`.

    Returns:
    :   Returns a ProcessHandle for the Process

    Throws:
    :   `UnsupportedOperationException` - if the Process implementation
        does not support this operation
    :   `SecurityException` - if a security manager has been installed and
        it denies RuntimePermission("manageProcess")

    Since:
    :   9
  + ### info

    public [ProcessHandle.Info](ProcessHandle.Info.md "interface in java.lang") info()

    Returns a snapshot of information about the process.

    A [`ProcessHandle.Info`](ProcessHandle.Info.md "interface in java.lang") instance has accessor methods
    that return information about the process if it is available.

    Returns:
    :   a snapshot of information about the process, always non-null

    Throws:
    :   `UnsupportedOperationException` - if the Process implementation
        does not support this operation

    Since:
    :   9
  + ### children

    public [Stream](../util/stream/Stream.md "interface in java.util.stream")<[ProcessHandle](ProcessHandle.md "interface in java.lang")> children()

    Returns a snapshot of the direct children of the process.
    The parent of a direct child process is the process.
    Typically, a process that is [not alive](#isAlive()) has no children.

    *Note that processes are created and terminate asynchronously.
    There is no guarantee that a process is [alive](#isAlive()).*

    Returns:
    :   a sequential Stream of ProcessHandles for processes that are
        direct children of the process

    Throws:
    :   `UnsupportedOperationException` - if the Process implementation
        does not support this operation
    :   `SecurityException` - if a security manager has been installed and
        it denies RuntimePermission("manageProcess")

    Since:
    :   9
  + ### descendants

    public [Stream](../util/stream/Stream.md "interface in java.util.stream")<[ProcessHandle](ProcessHandle.md "interface in java.lang")> descendants()

    Returns a snapshot of the descendants of the process.
    The descendants of a process are the children of the process
    plus the descendants of those children, recursively.
    Typically, a process that is [not alive](#isAlive()) has no children.

    *Note that processes are created and terminate asynchronously.
    There is no guarantee that a process is [alive](#isAlive()).*

    Returns:
    :   a sequential Stream of ProcessHandles for processes that
        are descendants of the process

    Throws:
    :   `UnsupportedOperationException` - if the Process implementation
        does not support this operation
    :   `SecurityException` - if a security manager has been installed and
        it denies RuntimePermission("manageProcess")

    Since:
    :   9