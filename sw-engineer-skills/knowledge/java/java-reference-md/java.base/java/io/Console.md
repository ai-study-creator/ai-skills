Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class Console

[java.lang.Object](../lang/Object.md "class in java.lang")

java.io.Console

All Implemented Interfaces:
:   `Flushable`

---

public sealed class Console
extends [Object](../lang/Object.md "class in java.lang")
implements [Flushable](Flushable.md "interface in java.io")

Methods to access the character-based console device, if any, associated
with the current Java virtual machine.

Whether a virtual machine has a console is dependent upon the
underlying platform and also upon the manner in which the virtual
machine is invoked. If the virtual machine is started from an
interactive command line without redirecting the standard input and
output streams then its console will exist and will typically be
connected to the keyboard and display from which the virtual machine
was launched. If the virtual machine is started automatically, for
example by a background job scheduler, then it may not
have a console.

If this virtual machine has a console then it is represented by a
unique instance of this class which can be obtained by invoking the
[`System.console()`](../lang/System.md#console()) method. If no console device is
available then an invocation of that method will return `null`.

Read and write operations are synchronized to guarantee the atomic
completion of critical operations; therefore invoking methods
[`readLine()`](#readLine()), [`readPassword()`](#readPassword()), [`format()`](#format(java.lang.String,java.lang.Object...)),
[`printf()`](#printf(java.lang.String,java.lang.Object...)) as well as the read, format and write operations
on the objects returned by [`reader()`](#reader()) and [`writer()`](#writer()) may
block in multithreaded scenarios.

Invoking `close()` on the objects returned by the [`reader()`](#reader())
and the [`writer()`](#writer()) will not close the underlying stream of those
objects.

The console-read methods return `null` when the end of the
console input stream is reached, for example by typing control-D on
Unix or control-Z on Windows. Subsequent read operations will succeed
if additional characters are later entered on the console's input
device.

Unless otherwise specified, passing a `null` argument to any method
in this class will cause a [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

**Security note:**
If an application needs to read a password or other secure data, it should
use [`readPassword()`](#readPassword()) or [`readPassword(String, Object...)`](#readPassword(java.lang.String,java.lang.Object...)) and
manually zero the returned character array after processing to minimize the
lifetime of sensitive data in memory.

Copy![Copy snippet](../../../copy.svg)

```
Console cons;
char[] passwd;
if ((cons = System.console()) != null &&
    (passwd = cons.readPassword("[%s]", "Password:")) != null) {
    ...
    java.util.Arrays.fill(passwd, ' ');
}
```

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Charset`

  `charset()`

  Returns the [`Charset`](../nio/charset/Charset.md "class in java.nio.charset") object used for
  the `Console`.

  `void`

  `flush()`

  Flushes the console and forces any buffered output to be written
  immediately .

  `Console`

  `format(String fmt,
  Object... args)`

  Writes a formatted string to this console's output stream using
  the specified format string and arguments.

  `Console`

  `printf(String format,
  Object... args)`

  A convenience method to write a formatted string to this console's
  output stream using the specified format string and arguments.

  `Reader`

  `reader()`

  Retrieves the unique [`Reader`](Reader.md "class in java.io") object associated
  with this console.

  `String`

  `readLine()`

  Reads a single line of text from the console.

  `String`

  `readLine(String fmt,
  Object... args)`

  Provides a formatted prompt, then reads a single line of text from the
  console.

  `char[]`

  `readPassword()`

  Reads a password or passphrase from the console with echoing disabled

  `char[]`

  `readPassword(String fmt,
  Object... args)`

  Provides a formatted prompt, then reads a password or passphrase from
  the console with echoing disabled.

  `PrintWriter`

  `writer()`

  Retrieves the unique [`PrintWriter`](PrintWriter.md "class in java.io") object
  associated with this console.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### writer

    public [PrintWriter](PrintWriter.md "class in java.io") writer()

    Retrieves the unique [`PrintWriter`](PrintWriter.md "class in java.io") object
    associated with this console.

    Returns:
    :   The printwriter associated with this console
  + ### reader

    public [Reader](Reader.md "class in java.io") reader()

    Retrieves the unique [`Reader`](Reader.md "class in java.io") object associated
    with this console.

    This method is intended to be used by sophisticated applications, for
    example, a [`Scanner`](../util/Scanner.md "class in java.util") object which utilizes the rich
    parsing/scanning functionality provided by the `Scanner`:

    Copy![Copy snippet](../../../copy.svg)

    ```
        Console con = System.console();
        if (con != null) {
            Scanner sc = new Scanner(con.reader());
            ...
        }
    ```

    For simple applications requiring only line-oriented reading, use
    [`readLine(java.lang.String, java.lang.Object...)`](#readLine(java.lang.String,java.lang.Object...)).

    The bulk read operations [`read(char[])`](Reader.md#read(char%5B%5D)) ,
    [`read(char[], int, int)`](Reader.md#read(char%5B%5D,int,int))  and
    [`read(java.nio.CharBuffer)`](Reader.md#read(java.nio.CharBuffer))
    on the returned object will not read in characters beyond the line
    bound for each invocation, even if the destination buffer has space for
    more characters. The `Reader`'s `read` methods may block if a
    line bound has not been entered or reached on the console's input device.
    A line bound is considered to be any one of a line feed (`'\n'`),
    a carriage return (`'\r'`), a carriage return followed immediately
    by a linefeed, or an end of stream.

    Returns:
    :   The reader associated with this console
  + ### format

    public [Console](Console.md "class in java.io") format([String](../lang/String.md "class in java.lang") fmt,
    [Object](../lang/Object.md "class in java.lang")... args)

    Writes a formatted string to this console's output stream using
    the specified format string and arguments.

    Parameters:
    :   `fmt` - A format string as described in [Format string syntax](../util/Formatter.md#syntax)
    :   `args` - Arguments referenced by the format specifiers in the format
        string. If there are more arguments than format specifiers, the
        extra arguments are ignored. The number of arguments is
        variable and may be zero. The maximum number of arguments is
        limited by the maximum dimension of a Java array as defined by
        The Java Virtual Machine Specification.
        The behaviour on a
        `null` argument depends on the [conversion](../util/Formatter.md#syntax).

    Returns:
    :   This console

    Throws:
    :   `IllegalFormatException` - If a format string contains an illegal syntax, a format
        specifier that is incompatible with the given arguments,
        insufficient arguments given the format string, or other
        illegal conditions. For specification of all possible
        formatting errors, see the [Details](../util/Formatter.md#detail) section
        of the formatter class specification.
  + ### printf

    public [Console](Console.md "class in java.io") printf([String](../lang/String.md "class in java.lang") format,
    [Object](../lang/Object.md "class in java.lang")... args)

    A convenience method to write a formatted string to this console's
    output stream using the specified format string and arguments.

    An invocation of this method of the form
    `con.printf(format, args)` behaves in exactly the same way
    as the invocation of

    Copy![Copy snippet](../../../copy.svg)

    ```
        con.format(format, args)
    ```

    Parameters:
    :   `format` - A format string as described in [Format string syntax](../util/Formatter.md#syntax).
    :   `args` - Arguments referenced by the format specifiers in the format
        string. If there are more arguments than format specifiers, the
        extra arguments are ignored. The number of arguments is
        variable and may be zero. The maximum number of arguments is
        limited by the maximum dimension of a Java array as defined by
        The Java Virtual Machine Specification.
        The behaviour on a
        `null` argument depends on the [conversion](../util/Formatter.md#syntax).

    Returns:
    :   This console

    Throws:
    :   `IllegalFormatException` - If a format string contains an illegal syntax, a format
        specifier that is incompatible with the given arguments,
        insufficient arguments given the format string, or other
        illegal conditions. For specification of all possible
        formatting errors, see the [Details](../util/Formatter.md#detail) section of the
        formatter class specification.
  + ### readLine

    public [String](../lang/String.md "class in java.lang") readLine([String](../lang/String.md "class in java.lang") fmt,
    [Object](../lang/Object.md "class in java.lang")... args)

    Provides a formatted prompt, then reads a single line of text from the
    console.

    Parameters:
    :   `fmt` - A format string as described in [Format string syntax](../util/Formatter.md#syntax).
    :   `args` - Arguments referenced by the format specifiers in the format
        string. If there are more arguments than format specifiers, the
        extra arguments are ignored. The maximum number of arguments is
        limited by the maximum dimension of a Java array as defined by
        The Java Virtual Machine Specification.

    Returns:
    :   A string containing the line read from the console, not
        including any line-termination characters, or `null`
        if an end of stream has been reached.

    Throws:
    :   `IllegalFormatException` - If a format string contains an illegal syntax, a format
        specifier that is incompatible with the given arguments,
        insufficient arguments given the format string, or other
        illegal conditions. For specification of all possible
        formatting errors, see the [Details](../util/Formatter.md#detail) section
        of the formatter class specification.
    :   `IOError` - If an I/O error occurs.
  + ### readLine

    public [String](../lang/String.md "class in java.lang") readLine()

    Reads a single line of text from the console.

    Returns:
    :   A string containing the line read from the console, not
        including any line-termination characters, or `null`
        if an end of stream has been reached.

    Throws:
    :   `IOError` - If an I/O error occurs.
  + ### readPassword

    public char[] readPassword([String](../lang/String.md "class in java.lang") fmt,
    [Object](../lang/Object.md "class in java.lang")... args)

    Provides a formatted prompt, then reads a password or passphrase from
    the console with echoing disabled.

    Parameters:
    :   `fmt` - A format string as described in [Format string syntax](../util/Formatter.md#syntax)
        for the prompt text.
    :   `args` - Arguments referenced by the format specifiers in the format
        string. If there are more arguments than format specifiers, the
        extra arguments are ignored. The maximum number of arguments is
        limited by the maximum dimension of a Java array as defined by
        The Java Virtual Machine Specification.

    Returns:
    :   A character array containing the password or passphrase read
        from the console, not including any line-termination characters,
        or `null` if an end of stream has been reached.

    Throws:
    :   `IllegalFormatException` - If a format string contains an illegal syntax, a format
        specifier that is incompatible with the given arguments,
        insufficient arguments given the format string, or other
        illegal conditions. For specification of all possible
        formatting errors, see the [Details](../util/Formatter.md#detail)
        section of the formatter class specification.
    :   `IOError` - If an I/O error occurs.
  + ### readPassword

    public char[] readPassword()

    Reads a password or passphrase from the console with echoing disabled

    Returns:
    :   A character array containing the password or passphrase read
        from the console, not including any line-termination characters,
        or `null` if an end of stream has been reached.

    Throws:
    :   `IOError` - If an I/O error occurs.
  + ### flush

    public void flush()

    Flushes the console and forces any buffered output to be written
    immediately .

    Specified by:
    :   `flush` in interface `Flushable`
  + ### charset

    public [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset()

    Returns the [`Charset`](../nio/charset/Charset.md "class in java.nio.charset") object used for
    the `Console`.

    The returned charset corresponds to the input and output source
    (e.g., keyboard and/or display) specified by the host environment or user.
    It may not necessarily be the same as the default charset returned from
    [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset()).

    Returns:
    :   a [`Charset`](../nio/charset/Charset.md "class in java.nio.charset") object used for the
        `Console`

    Since:
    :   17