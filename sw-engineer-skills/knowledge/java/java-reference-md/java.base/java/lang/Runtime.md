Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class Runtime

[java.lang.Object](Object.md "class in java.lang")

java.lang.Runtime

---

public class Runtime
extends [Object](Object.md "class in java.lang")

Every Java application has a single instance of class
`Runtime` that allows the application to interface with
the environment in which the application is running. The current
runtime can be obtained from the `getRuntime` method.

An application cannot create its own instance of this class.

## Shutdown Sequence

The Java Virtual Machine initiates the *shutdown sequence* in response
to one of several events:

1. when the number of [live](Thread.md#isAlive()) non-daemon threads drops to zero
   for the first time (see note below on the JNI Invocation API);
2. when the [`Runtime.exit`](#exit(int)) or [`System.exit`](System.md#exit(int)) method is called
   for the first time; or
3. when some external event occurs, such as an interrupt or a signal is received from
   the operating system.

At the beginning of the shutdown sequence, the registered shutdown hooks are
[started](Thread.md#start()) in some unspecified order. They run concurrently
with any daemon or non-daemon threads that were [alive](Thread.md#isAlive())
at the beginning of the shutdown sequence.

After the shutdown sequence has begun, registration and de-registration of shutdown hooks
with [`addShutdownHook`](#addShutdownHook(java.lang.Thread)) and [`removeShutdownHook`](#removeShutdownHook(java.lang.Thread))
is prohibited. However, creating and starting new threads is permitted. New threads run
concurrently with the registered shutdown hooks and with any daemon or non-daemon threads
that are already running.

The shutdown sequence finishes when all shutdown hooks have terminated. At this point,
the Java Virtual Machine terminates as described below.

It is possible that one or more shutdown hooks do not terminate, for example, because
of an infinite loop. In this case, the shutdown sequence will never finish. Other threads
and shutdown hooks continue to run and can terminate the JVM via the [`halt`](#halt(int)) method.

Prior to the beginning of the shutdown sequence, it is possible for a program to start
a shutdown hook by calling its [`start`](Thread.md#start()) method explicitly. If this occurs, the
behavior of the shutdown sequence is unspecified.

## Java Virtual Machine Termination

The JVM terminates when the shutdown sequence finishes or when [`halt`](#halt(int)) is called.
In contrast to [`exit`](#exit(int)), the [`halt`](#halt(int)) method does not initiate the
shutdown sequence.

When the JVM terminates, all threads are immediately prevented from executing any further
Java code. This includes shutdown hooks as well as daemon and non-daemon threads.
This means, for example, that:

* threads' current methods do not complete normally or abruptly;
* `finally` clauses are not executed;
* [uncaught exception handlers](Thread.UncaughtExceptionHandler.md "interface in java.lang") are not run; and
* resources opened with try-with-resources are not [closed](AutoCloseable.md "interface in java.lang");

Since:
:   1.0

See Also:
:   * [`getRuntime()`](#getRuntime())

External Specifications
:   * [Java Native Interface Specification](../../../../specs/jni/index.md)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `Runtime.Version`

  A representation of a version string for an implementation of the
  Java SE Platform.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addShutdownHook(Thread hook)`

  Registers a new virtual-machine shutdown hook.

  `int`

  `availableProcessors()`

  Returns the number of processors available to the Java virtual machine.

  `Process`

  `exec(String command)`

  Deprecated.

  This method is error-prone and should not be used, the corresponding method
  [`exec(String[])`](#exec(java.lang.String%5B%5D)) or [`ProcessBuilder`](ProcessBuilder.md "class in java.lang") should be used instead.

  `Process`

  `exec(String[] cmdarray)`

  Executes the specified command and arguments in a separate process.

  `Process`

  `exec(String[] cmdarray,
  String[] envp)`

  Executes the specified command and arguments in a separate process
  with the specified environment.

  `Process`

  `exec(String[] cmdarray,
  String[] envp,
  File dir)`

  Executes the specified command and arguments in a separate process with
  the specified environment and working directory.

  `Process`

  `exec(String command,
  String[] envp)`

  Deprecated.

  This method is error-prone and should not be used, the corresponding method
  [`exec(String[], String[])`](#exec(java.lang.String%5B%5D,java.lang.String%5B%5D)) or [`ProcessBuilder`](ProcessBuilder.md "class in java.lang") should be used instead.

  `Process`

  `exec(String command,
  String[] envp,
  File dir)`

  Deprecated.

  This method is error-prone and should not be used, the corresponding method
  [`exec(String[], String[], File)`](#exec(java.lang.String%5B%5D,java.lang.String%5B%5D,java.io.File)) or [`ProcessBuilder`](ProcessBuilder.md "class in java.lang") should be used instead.

  `void`

  `exit(int status)`

  Initiates the [shutdown sequence](#shutdown) of the Java Virtual Machine.

  `long`

  `freeMemory()`

  Returns the amount of free memory in the Java Virtual Machine.

  `void`

  `gc()`

  Runs the garbage collector in the Java Virtual Machine.

  `static Runtime`

  `getRuntime()`

  Returns the runtime object associated with the current Java application.

  `void`

  `halt(int status)`

  Immediately [terminates](#termination) the Java Virtual Machine.

  `void`

  `load(String filename)`

  Loads the native library specified by the filename argument.

  `void`

  `loadLibrary(String libname)`

  Loads the native library specified by the `libname`
  argument.

  `long`

  `maxMemory()`

  Returns the maximum amount of memory that the Java virtual machine
  will attempt to use.

  `boolean`

  `removeShutdownHook(Thread hook)`

  De-registers a previously-registered virtual-machine shutdown hook.

  `void`

  `runFinalization()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Finalization has been deprecated for removal.

  `long`

  `totalMemory()`

  Returns the total amount of memory in the Java virtual machine.

  `static Runtime.Version`

  `version()`

  Returns the version of the Java Runtime Environment as a [`Runtime.Version`](Runtime.Version.md "class in java.lang").

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getRuntime

    public static [Runtime](Runtime.md "class in java.lang") getRuntime()

    Returns the runtime object associated with the current Java application.
    Most of the methods of class `Runtime` are instance
    methods and must be invoked with respect to the current runtime object.

    Returns:
    :   the `Runtime` object associated with the current
        Java application.
  + ### exit

    public void exit(int status)

    Initiates the [shutdown sequence](#shutdown) of the Java Virtual Machine.
    Unless the security manager denies exiting, this method initiates the shutdown sequence
    (if it is not already initiated) and then blocks indefinitely. This method neither returns
    nor throws an exception; that is, it does not complete either normally or abruptly.

    The argument serves as a status code. By convention, a nonzero status code
    indicates abnormal termination.

    Successful invocations of this method are serialized such that only one invocation
    initiates the shutdown sequence and terminates the VM with the given status code.
    All other invocations will perform no action and block indefinitely.

    Because a successful invocation of this method blocks indefinitely, if it is invoked
    from a shutdown hook, it will prevent that shutdown hook from terminating. Consequently,
    this will prevent the shutdown sequence from finishing.

    The [`System.exit`](System.md#exit(int)) method is the
    conventional and convenient means of invoking this method.

    Parameters:
    :   `status` - Termination status. By convention, a nonzero status code
        indicates abnormal termination.

    Throws:
    :   `SecurityException` - If a security manager is present and its
        [`checkExit`](SecurityManager.md#checkExit(int)) method does not permit
        exiting with the specified status

    See Also:
    :   - [`SecurityException`](SecurityException.md "class in java.lang")
        - [`SecurityManager.checkExit(int)`](SecurityManager.md#checkExit(int))
        - [`addShutdownHook(java.lang.Thread)`](#addShutdownHook(java.lang.Thread))
        - [`removeShutdownHook(java.lang.Thread)`](#removeShutdownHook(java.lang.Thread))
        - [`halt(int)`](#halt(int))
  + ### addShutdownHook

    public void addShutdownHook([Thread](Thread.md "class in java.lang") hook)

    Registers a new virtual-machine shutdown hook.

    A *shutdown hook* is simply an initialized but unstarted thread. Shutdown hooks
    are started at the beginning of the [shutdown sequence](#shutdown).
    Registration and de-registration of shutdown hooks is disallowed once the shutdown
    sequence has begun.

    Uncaught exceptions are handled in shutdown hooks just as in any other thread, as
    specified in [`Thread.UncaughtExceptionHandler`](Thread.UncaughtExceptionHandler.md "interface in java.lang"). After the uncaught exception
    handler has completed, the shutdown hook is considered to have terminated and is not
    treated differently from a hook that has terminated without having thrown an
    uncaught exception.

    Parameters:
    :   `hook` - An initialized but unstarted [`Thread`](Thread.md "class in java.lang") object

    Throws:
    :   `IllegalArgumentException` - If the same hook (compared using `==`) as the specified hook has
        already been registered, or if it can be determined that the hook is
        already running or has already been run
    :   `IllegalStateException` - If the shutdown sequence has already begun
    :   `SecurityException` - If a security manager is present and it denies
        [`RuntimePermission`](RuntimePermission.md "class in java.lang")`("shutdownHooks")`

    Since:
    :   1.3

    See Also:
    :   - [`removeShutdownHook(java.lang.Thread)`](#removeShutdownHook(java.lang.Thread))
        - [`halt(int)`](#halt(int))
        - [`exit(int)`](#exit(int))
  + ### removeShutdownHook

    public boolean removeShutdownHook([Thread](Thread.md "class in java.lang") hook)

    De-registers a previously-registered virtual-machine shutdown hook.
    Hooks are compared using `==`.
    Registration and de-registration of shutdown hooks is disallowed
    once the shutdown sequence has begun.

    Parameters:
    :   `hook` - the hook to remove

    Returns:
    :   `true` if the specified hook had previously been
        registered and was successfully de-registered, `false`
        otherwise.

    Throws:
    :   `IllegalStateException` - If the shutdown sequence has already begun
    :   `SecurityException` - If a security manager is present and it denies
        [`RuntimePermission`](RuntimePermission.md "class in java.lang")`("shutdownHooks")`

    Since:
    :   1.3

    See Also:
    :   - [`addShutdownHook(java.lang.Thread)`](#addShutdownHook(java.lang.Thread))
        - [`exit(int)`](#exit(int))
  + ### halt

    public void halt(int status)

    Immediately [terminates](#termination) the Java Virtual Machine.
    If the security manager denies exiting, throws [`SecurityException`](SecurityException.md "class in java.lang").
    Otherwise, termination of the Java Virtual Machine is unconditional and immediate.
    This method does not initiate the [shutdown sequence](#shutdown), nor does
    it wait for the shutdown sequence to finish if it is already in progress. An
    invocation of this method never returns normally.

    Parameters:
    :   `status` - Termination status. By convention, a nonzero status code
        indicates abnormal termination. If the [`exit`](#exit(int))
        (equivalently, [`System.exit`](System.md#exit(int))) method
        has already been invoked then this status code
        will override the status code passed to that method.

    Throws:
    :   `SecurityException` - If a security manager is present and its
        [`checkExit`](SecurityManager.md#checkExit(int)) method
        does not permit an exit with the specified status

    Since:
    :   1.3

    See Also:
    :   - [`exit(int)`](#exit(int))
        - [`addShutdownHook(java.lang.Thread)`](#addShutdownHook(java.lang.Thread))
        - [`removeShutdownHook(java.lang.Thread)`](#removeShutdownHook(java.lang.Thread))
  + ### exec

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="18")
    public [Process](Process.md "class in java.lang") exec([String](String.md "class in java.lang") command)
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    This method is error-prone and should not be used, the corresponding method
    [`exec(String[])`](#exec(java.lang.String%5B%5D)) or [`ProcessBuilder`](ProcessBuilder.md "class in java.lang") should be used instead.
    The command string is broken into tokens using only whitespace characters.
    For an argument with an embedded space, such as a filename, this can cause problems
    as the token does not include the full filename.

    Executes the specified string command in a separate process.

    This is a convenience method. An invocation of the form
    `exec(command)`
    behaves in exactly the same way as the invocation
    [`exec`](#exec(java.lang.String,java.lang.String%5B%5D,java.io.File))`(command, null, null)`.

    Parameters:
    :   `command` - a specified system command.

    Returns:
    :   A new [`Process`](Process.md "class in java.lang") object for managing the subprocess

    Throws:
    :   `SecurityException` - If a security manager exists and its
        [`checkExec`](SecurityManager.md#checkExec(java.lang.String))
        method doesn't allow creation of the subprocess
    :   `IOException` - If an I/O error occurs
    :   `NullPointerException` - If `command` is `null`
    :   `IllegalArgumentException` - If `command` is empty

    See Also:
    :   - [`exec(String[], String[], File)`](#exec(java.lang.String%5B%5D,java.lang.String%5B%5D,java.io.File))
        - [`ProcessBuilder`](ProcessBuilder.md "class in java.lang")
  + ### exec

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="18")
    public [Process](Process.md "class in java.lang") exec([String](String.md "class in java.lang") command,
    [String](String.md "class in java.lang")[] envp)
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    This method is error-prone and should not be used, the corresponding method
    [`exec(String[], String[])`](#exec(java.lang.String%5B%5D,java.lang.String%5B%5D)) or [`ProcessBuilder`](ProcessBuilder.md "class in java.lang") should be used instead.
    The command string is broken into tokens using only whitespace characters.
    For an argument with an embedded space, such as a filename, this can cause problems
    as the token does not include the full filename.

    Executes the specified string command in a separate process with the
    specified environment.

    This is a convenience method. An invocation of the form
    `exec(command, envp)`
    behaves in exactly the same way as the invocation
    [`exec`](#exec(java.lang.String,java.lang.String%5B%5D,java.io.File))`(command, envp, null)`.

    Parameters:
    :   `command` - a specified system command.
    :   `envp` - array of strings, each element of which
        has environment variable settings in the format
        *name*=*value*, or
        `null` if the subprocess should inherit
        the environment of the current process.

    Returns:
    :   A new [`Process`](Process.md "class in java.lang") object for managing the subprocess

    Throws:
    :   `SecurityException` - If a security manager exists and its
        [`checkExec`](SecurityManager.md#checkExec(java.lang.String))
        method doesn't allow creation of the subprocess
    :   `IOException` - If an I/O error occurs
    :   `NullPointerException` - If `command` is `null`,
        or one of the elements of `envp` is `null`
    :   `IllegalArgumentException` - If `command` is empty

    See Also:
    :   - [`exec(String[], String[], File)`](#exec(java.lang.String%5B%5D,java.lang.String%5B%5D,java.io.File))
        - [`ProcessBuilder`](ProcessBuilder.md "class in java.lang")
  + ### exec

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="18")
    public [Process](Process.md "class in java.lang") exec([String](String.md "class in java.lang") command,
    [String](String.md "class in java.lang")[] envp,
    [File](../io/File.md "class in java.io") dir)
    throws [IOException](../io/IOException.md "class in java.io")

    Deprecated.

    This method is error-prone and should not be used, the corresponding method
    [`exec(String[], String[], File)`](#exec(java.lang.String%5B%5D,java.lang.String%5B%5D,java.io.File)) or [`ProcessBuilder`](ProcessBuilder.md "class in java.lang") should be used instead.
    The command string is broken into tokens using only whitespace characters.
    For an argument with an embedded space, such as a filename, this can cause problems
    as the token does not include the full filename.

    Executes the specified string command in a separate process with the
    specified environment and working directory.

    This is a convenience method. An invocation of the form
    `exec(command, envp, dir)`
    behaves in exactly the same way as the invocation
    [`exec`](#exec(java.lang.String%5B%5D,java.lang.String%5B%5D,java.io.File))`(cmdarray, envp, dir)`,
    where `cmdarray` is an array of all the tokens in
    `command`.

    More precisely, the `command` string is broken
    into tokens using a [`StringTokenizer`](../util/StringTokenizer.md "class in java.util") created by the call
    `new StringTokenizer(command)` with no
    further modification of the character categories. The tokens
    produced by the tokenizer are then placed in the new string
    array `cmdarray`, in the same order.

    Parameters:
    :   `command` - a specified system command.
    :   `envp` - array of strings, each element of which
        has environment variable settings in the format
        *name*=*value*, or
        `null` if the subprocess should inherit
        the environment of the current process.
    :   `dir` - the working directory of the subprocess, or
        `null` if the subprocess should inherit
        the working directory of the current process.

    Returns:
    :   A new [`Process`](Process.md "class in java.lang") object for managing the subprocess

    Throws:
    :   `SecurityException` - If a security manager exists and its
        [`checkExec`](SecurityManager.md#checkExec(java.lang.String))
        method doesn't allow creation of the subprocess
    :   `IOException` - If an I/O error occurs
    :   `NullPointerException` - If `command` is `null`,
        or one of the elements of `envp` is `null`
    :   `IllegalArgumentException` - If `command` is empty

    Since:
    :   1.3

    See Also:
    :   - [`ProcessBuilder`](ProcessBuilder.md "class in java.lang")
  + ### exec

    public [Process](Process.md "class in java.lang") exec([String](String.md "class in java.lang")[] cmdarray)
    throws [IOException](../io/IOException.md "class in java.io")

    Executes the specified command and arguments in a separate process.

    This is a convenience method. An invocation of the form
    `exec(cmdarray)`
    behaves in exactly the same way as the invocation
    [`exec`](#exec(java.lang.String%5B%5D,java.lang.String%5B%5D,java.io.File))`(cmdarray, null, null)`.

    Parameters:
    :   `cmdarray` - array containing the command to call and
        its arguments.

    Returns:
    :   A new [`Process`](Process.md "class in java.lang") object for managing the subprocess

    Throws:
    :   `SecurityException` - If a security manager exists and its
        [`checkExec`](SecurityManager.md#checkExec(java.lang.String))
        method doesn't allow creation of the subprocess
    :   `IOException` - If an I/O error occurs
    :   `NullPointerException` - If `cmdarray` is `null`,
        or one of the elements of `cmdarray` is `null`
    :   `IndexOutOfBoundsException` - If `cmdarray` is an empty array
        (has length `0`)

    See Also:
    :   - [`ProcessBuilder`](ProcessBuilder.md "class in java.lang")
  + ### exec

    public [Process](Process.md "class in java.lang") exec([String](String.md "class in java.lang")[] cmdarray,
    [String](String.md "class in java.lang")[] envp)
    throws [IOException](../io/IOException.md "class in java.io")

    Executes the specified command and arguments in a separate process
    with the specified environment.

    This is a convenience method. An invocation of the form
    `exec(cmdarray, envp)`
    behaves in exactly the same way as the invocation
    [`exec`](#exec(java.lang.String%5B%5D,java.lang.String%5B%5D,java.io.File))`(cmdarray, envp, null)`.

    Parameters:
    :   `cmdarray` - array containing the command to call and
        its arguments.
    :   `envp` - array of strings, each element of which
        has environment variable settings in the format
        *name*=*value*, or
        `null` if the subprocess should inherit
        the environment of the current process.

    Returns:
    :   A new [`Process`](Process.md "class in java.lang") object for managing the subprocess

    Throws:
    :   `SecurityException` - If a security manager exists and its
        [`checkExec`](SecurityManager.md#checkExec(java.lang.String))
        method doesn't allow creation of the subprocess
    :   `IOException` - If an I/O error occurs
    :   `NullPointerException` - If `cmdarray` is `null`,
        or one of the elements of `cmdarray` is `null`,
        or one of the elements of `envp` is `null`
    :   `IndexOutOfBoundsException` - If `cmdarray` is an empty array
        (has length `0`)

    See Also:
    :   - [`ProcessBuilder`](ProcessBuilder.md "class in java.lang")
  + ### exec

    public [Process](Process.md "class in java.lang") exec([String](String.md "class in java.lang")[] cmdarray,
    [String](String.md "class in java.lang")[] envp,
    [File](../io/File.md "class in java.io") dir)
    throws [IOException](../io/IOException.md "class in java.io")

    Executes the specified command and arguments in a separate process with
    the specified environment and working directory.

    Given an array of strings `cmdarray`, representing the
    tokens of a command line, and an array of strings `envp`,
    representing "environment" variable settings, this method creates
    a new process in which to execute the specified command.

    This method checks that `cmdarray` is a valid operating
    system command. Which commands are valid is system-dependent,
    but at the very least the command must be a non-empty list of
    non-null strings.

    If `envp` is `null`, the subprocess inherits the
    environment settings of the current process.

    A minimal set of system dependent environment variables may
    be required to start a process on some operating systems.
    As a result, the subprocess may inherit additional environment variable
    settings beyond those in the specified environment.
    The minimal set of system dependent environment variables
    may override the values provided in the environment.

    [`ProcessBuilder.start()`](ProcessBuilder.md#start()) is now the preferred way to
    start a process with a modified environment.

    The working directory of the new subprocess is specified by `dir`.
    If `dir` is `null`, the subprocess inherits the
    current working directory of the current process.

    If a security manager exists, its
    [`checkExec`](SecurityManager.md#checkExec(java.lang.String))
    method is invoked with the first component of the array
    `cmdarray` as its argument. This may result in a
    [`SecurityException`](SecurityException.md "class in java.lang") being thrown.

    Starting an operating system process is highly system-dependent.
    Among the many things that can go wrong are:
    - The operating system program file was not found.- Access to the program file was denied.- The working directory does not exist.

    In such cases an exception will be thrown. The exact nature
    of the exception is system-dependent, but it will always be a
    subclass of [`IOException`](../io/IOException.md "class in java.io").

    If the operating system does not support the creation of
    processes, an [`UnsupportedOperationException`](UnsupportedOperationException.md "class in java.lang") will be thrown.

    Parameters:
    :   `cmdarray` - array containing the command to call and
        its arguments.
    :   `envp` - array of strings, each element of which
        has environment variable settings in the format
        *name*=*value*, or
        `null` if the subprocess should inherit
        the environment of the current process.
    :   `dir` - the working directory of the subprocess, or
        `null` if the subprocess should inherit
        the working directory of the current process.

    Returns:
    :   A new [`Process`](Process.md "class in java.lang") object for managing the subprocess

    Throws:
    :   `SecurityException` - If a security manager exists and its
        [`checkExec`](SecurityManager.md#checkExec(java.lang.String))
        method doesn't allow creation of the subprocess
    :   `UnsupportedOperationException` - If the operating system does not support the creation of processes.
    :   `IOException` - If an I/O error occurs
    :   `NullPointerException` - If `cmdarray` is `null`,
        or one of the elements of `cmdarray` is `null`,
        or one of the elements of `envp` is `null`
    :   `IndexOutOfBoundsException` - If `cmdarray` is an empty array
        (has length `0`)

    Since:
    :   1.3

    See Also:
    :   - [`ProcessBuilder`](ProcessBuilder.md "class in java.lang")
  + ### availableProcessors

    public int availableProcessors()

    Returns the number of processors available to the Java virtual machine.

    This value may change during a particular invocation of the virtual
    machine. Applications that are sensitive to the number of available
    processors should therefore occasionally poll this property and adjust
    their resource usage appropriately.

    Returns:
    :   the maximum number of processors available to the virtual
        machine; never smaller than one

    Since:
    :   1.4
  + ### freeMemory

    public long freeMemory()

    Returns the amount of free memory in the Java Virtual Machine.
    Calling the
    `gc` method may result in increasing the value returned
    by `freeMemory.`

    Returns:
    :   an approximation to the total amount of memory currently
        available for future allocated objects, measured in bytes.
  + ### totalMemory

    public long totalMemory()

    Returns the total amount of memory in the Java virtual machine.
    The value returned by this method may vary over time, depending on
    the host environment.

    Note that the amount of memory required to hold an object of any
    given type may be implementation-dependent.

    Returns:
    :   the total amount of memory currently available for current
        and future objects, measured in bytes.
  + ### maxMemory

    public long maxMemory()

    Returns the maximum amount of memory that the Java virtual machine
    will attempt to use. If there is no inherent limit then the value
    [`Long.MAX_VALUE`](Long.md#MAX_VALUE) will be returned.

    Returns:
    :   the maximum amount of memory that the virtual machine will
        attempt to use, measured in bytes

    Since:
    :   1.4
  + ### gc

    public void gc()

    Runs the garbage collector in the Java Virtual Machine.

    Calling this method suggests that the Java Virtual Machine
    expend effort toward recycling unused objects in order to
    make the memory they currently occupy available for reuse
    by the Java Virtual Machine.
    When control returns from the method call, the Java Virtual Machine
    has made a best effort to reclaim space from all unused objects.
    There is no guarantee that this effort will recycle any particular
    number of unused objects, reclaim any particular amount of space, or
    complete at any particular time, if at all, before the method returns or ever.
    There is also no guarantee that this effort will determine
    the change of reachability in any particular number of objects,
    or that any particular number of [`Reference`](ref/Reference.md "class in java.lang.ref")
    objects will be cleared and enqueued.

    The name `gc` stands for "garbage
    collector". The Java Virtual Machine performs this recycling
    process automatically as needed, in a separate thread, even if the
    `gc` method is not invoked explicitly.

    The method [`System.gc()`](System.md#gc()) is the conventional and convenient
    means of invoking this method.
  + ### runFinalization

    [@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="18",
    [forRemoval](Deprecated.md#forRemoval())=true)
    public void runFinalization()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Finalization has been deprecated for removal. See
    [`Object.finalize()`](Object.md#finalize()) for background information and details
    about migration options.

    When running in a JVM in which finalization has been disabled or removed,
    no objects will be pending finalization, so this method does nothing.

    Runs the finalization methods of any objects pending finalization.
    Calling this method suggests that the Java virtual machine expend
    effort toward running the `finalize` methods of objects
    that have been found to be discarded but whose `finalize`
    methods have not yet been run. When control returns from the
    method call, the virtual machine has made a best effort to
    complete all outstanding finalizations.

    The virtual machine performs the finalization process
    automatically as needed, in a separate thread, if the
    `runFinalization` method is not invoked explicitly.

    The method [`System.runFinalization()`](System.md#runFinalization()) is the conventional
    and convenient means of invoking this method.

    See Also:
    :   - [`Object.finalize()`](Object.md#finalize())
  + ### load

    public void load([String](String.md "class in java.lang") filename)

    Loads the native library specified by the filename argument. The filename
    argument must be an absolute path name.
    (for example
    `Runtime.getRuntime().load("/home/avh/lib/libX11.so");`).
    If the filename argument, when stripped of any platform-specific library
    prefix, path, and file extension, indicates a library whose name is,
    for example, L, and a native library called L is statically linked
    with the VM, then the JNI\_OnLoad\_L function exported by the library
    is invoked rather than attempting to load a dynamic library.
    A filename matching the argument does not have to exist in the file
    system.
    See the  [JNI Specification](../../../../specs/jni/index.md)
    for more details.
    Otherwise, the filename argument is mapped to a native library image in
    an implementation-dependent manner.

    First, if there is a security manager, its `checkLink`
    method is called with the `filename` as its argument.
    This may result in a security exception.

    This is similar to the method [`loadLibrary(String)`](#loadLibrary(java.lang.String)), but it
    accepts a general file name as an argument rather than just a library
    name, allowing any file of native code to be loaded.

    The method [`System.load(String)`](System.md#load(java.lang.String)) is the conventional and
    convenient means of invoking this method.

    Parameters:
    :   `filename` - the file to load.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkLink` method doesn't allow
        loading of the specified dynamic library
    :   `UnsatisfiedLinkError` - if either the filename is not an
        absolute path name, the native library is not statically
        linked with the VM, or the library cannot be mapped to
        a native library image by the host system.
    :   `NullPointerException` - if `filename` is
        `null`

    See Also:
    :   - [`getRuntime()`](#getRuntime())
        - [`SecurityException`](SecurityException.md "class in java.lang")
        - [`SecurityManager.checkLink(java.lang.String)`](SecurityManager.md#checkLink(java.lang.String))

    External Specifications
    :   - [Java Native Interface Specification](../../../../specs/jni/index.md)
  + ### loadLibrary

    public void loadLibrary([String](String.md "class in java.lang") libname)

    Loads the native library specified by the `libname`
    argument. The `libname` argument must not contain any platform
    specific prefix, file extension or path. If a native library
    called `libname` is statically linked with the VM, then the
    JNI\_OnLoad\_`libname` function exported by the library is invoked.
    See the  [JNI Specification](../../../../specs/jni/index.md)
    for more details.
    Otherwise, the libname argument is loaded from a system library
    location and mapped to a native library image in an
    implementation-dependent manner.

    First, if there is a security manager, its `checkLink`
    method is called with the `libname` as its argument.
    This may result in a security exception.

    The method [`System.loadLibrary(String)`](System.md#loadLibrary(java.lang.String)) is the conventional
    and convenient means of invoking this method. If native
    methods are to be used in the implementation of a class, a standard
    strategy is to put the native code in a library file (call it
    `LibFile`) and then to put a static initializer:
    > ```
    >  static { System.loadLibrary("LibFile"); }
    > ```

    within the class declaration. When the class is loaded and
    initialized, the necessary native code implementation for the native
    methods will then be loaded as well.

    If this method is called more than once with the same library
    name, the second and subsequent calls are ignored.

    Parameters:
    :   `libname` - the name of the library.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkLink` method doesn't allow
        loading of the specified dynamic library
    :   `UnsatisfiedLinkError` - if either the libname argument
        contains a file path, the native library is not statically
        linked with the VM, or the library cannot be mapped to a
        native library image by the host system.
    :   `NullPointerException` - if `libname` is
        `null`

    See Also:
    :   - [`SecurityException`](SecurityException.md "class in java.lang")
        - [`SecurityManager.checkLink(java.lang.String)`](SecurityManager.md#checkLink(java.lang.String))

    External Specifications
    :   - [Java Native Interface Specification](../../../../specs/jni/index.md)
  + ### version

    public static [Runtime.Version](Runtime.Version.md "class in java.lang") version()

    Returns the version of the Java Runtime Environment as a [`Runtime.Version`](Runtime.Version.md "class in java.lang").

    Returns:
    :   the [`Runtime.Version`](Runtime.Version.md "class in java.lang") of the Java Runtime Environment

    Since:
    :   9