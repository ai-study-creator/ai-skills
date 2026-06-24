Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class LogStream

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.io.OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io")

[java.io.FilterOutputStream](../../../../java.base/java/io/FilterOutputStream.md "class in java.io")

[java.io.PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io")

java.rmi.server.LogStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `Appendable`, `AutoCloseable`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class LogStream
extends [PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io")

Deprecated.

no replacement

`LogStream` provides a mechanism for logging errors that are
of possible interest to those monitoring a system.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `BRIEF`

  Deprecated.

  log level constant (brief logging).

  `static final int`

  `SILENT`

  Deprecated.

  log level constant (no logging).

  `static final int`

  `VERBOSE`

  Deprecated.

  log level constant (verbose logging).

  ### Fields inherited from class java.io.[FilterOutputStream](../../../../java.base/java/io/FilterOutputStream.md "class in java.io")

  `out`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static PrintStream`

  `getDefaultStream()`

  Deprecated.

  no replacement

  `OutputStream`

  `getOutputStream()`

  Deprecated.

  no replacement

  `static LogStream`

  `log(String name)`

  Deprecated.

  no replacement

  `static int`

  `parseLevel(String s)`

  Deprecated.

  no replacement

  `static void`

  `setDefaultStream(PrintStream newDefault)`

  Deprecated.

  no replacement

  `void`

  `setOutputStream(OutputStream out)`

  Deprecated.

  no replacement

  `String`

  `toString()`

  Deprecated.

  no replacement

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Deprecated.

  no replacement

  `void`

  `write(int b)`

  Deprecated.

  no replacement

  ### Methods inherited from class java.io.[PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io")

  `append, append, append, charset, checkError, clearError, close, flush, format, format, print, print, print, print, print, print, print, print, print, printf, printf, println, println, println, println, println, println, println, println, println, println, setError, write, writeBytes`

  ### Methods inherited from class java.io.[OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### SILENT

    public static final int SILENT

    Deprecated.

    log level constant (no logging).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.LogStream.SILENT)
  + ### BRIEF

    public static final int BRIEF

    Deprecated.

    log level constant (brief logging).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.LogStream.BRIEF)
  + ### VERBOSE

    public static final int VERBOSE

    Deprecated.

    log level constant (verbose logging).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.LogStream.VERBOSE)
* ## Method Details

  + ### log

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static [LogStream](LogStream.md "class in java.rmi.server") log([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated.

    no replacement

    Return the LogStream identified by the given name. If
    a log corresponding to "name" does not exist, a log using
    the default stream is created.

    Parameters:
    :   `name` - name identifying the desired LogStream

    Returns:
    :   log associated with given name

    Since:
    :   1.1
  + ### getDefaultStream

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static [PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io") getDefaultStream()

    Deprecated.

    no replacement

    Return the current default stream for new logs.

    Returns:
    :   default log stream

    Since:
    :   1.1

    See Also:
    :   - [`setDefaultStream(java.io.PrintStream)`](#setDefaultStream(java.io.PrintStream))
  + ### setDefaultStream

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static void setDefaultStream([PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io") newDefault)

    Deprecated.

    no replacement

    Set the default stream for new logs.

    Parameters:
    :   `newDefault` - new default log stream

    Since:
    :   1.1

    See Also:
    :   - [`getDefaultStream()`](#getDefaultStream())
  + ### getOutputStream

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") getOutputStream()

    Deprecated.

    no replacement

    Return the current stream to which output from this log is sent.

    Returns:
    :   output stream for this log

    Since:
    :   1.1

    See Also:
    :   - [`setOutputStream(java.io.OutputStream)`](#setOutputStream(java.io.OutputStream))
  + ### setOutputStream

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void setOutputStream([OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") out)

    Deprecated.

    no replacement

    Set the stream to which output from this log is sent.

    Parameters:
    :   `out` - new output stream for this log

    Since:
    :   1.1

    See Also:
    :   - [`getOutputStream()`](#getOutputStream())
  + ### write

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void write(int b)

    Deprecated.

    no replacement

    Write a byte of data to the stream. If it is not a newline, then
    the byte is appended to the internal buffer. If it is a newline,
    then the currently buffered line is sent to the log's output
    stream, prefixed with the appropriate logging information.

    Overrides:
    :   `write` in class `PrintStream`

    Parameters:
    :   `b` - The byte to be written

    Since:
    :   1.1

    See Also:
    :   - [`PrintStream.print(char)`](../../../../java.base/java/io/PrintStream.md#print(char))
        - [`PrintStream.println(char)`](../../../../java.base/java/io/PrintStream.md#println(char))
  + ### write

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void write(byte[] b,
    int off,
    int len)

    Deprecated.

    no replacement

    Write a subarray of bytes. Pass each through write byte method.

    Overrides:
    :   `write` in class `PrintStream`

    Parameters:
    :   `b` - A byte array
    :   `off` - Offset from which to start taking bytes
    :   `len` - Number of bytes to write

    Since:
    :   1.1

    See Also:
    :   - [`FilterOutputStream.write(int)`](../../../../java.base/java/io/FilterOutputStream.md#write(int))
  + ### toString

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Deprecated.

    no replacement

    Return log name as string representation.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   log name

    Since:
    :   1.1
  + ### parseLevel

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static int parseLevel([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Deprecated.

    no replacement

    Convert a string name of a logging level to its internal
    integer representation.

    Parameters:
    :   `s` - name of logging level (e.g., 'SILENT', 'BRIEF', 'VERBOSE')

    Returns:
    :   corresponding integer log level

    Since:
    :   1.1