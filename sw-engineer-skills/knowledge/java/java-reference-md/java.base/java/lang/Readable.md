Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface Readable

All Known Implementing Classes:
:   `BufferedReader`, `CharArrayReader`, `CharBuffer`, `FileReader`, `FilterReader`, `InputStreamReader`, `LineNumberReader`, `PipedReader`, `PushbackReader`, `Reader`, `StringReader`

---

public interface Readable

A `Readable` is a source of characters. Characters from
a `Readable` are made available to callers of the read
method via a [`CharBuffer`](../nio/CharBuffer.md "class in java.nio").

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `read(CharBuffer cb)`

  Attempts to read characters into the specified character buffer.

* ## Method Details

  + ### read

    int read([CharBuffer](../nio/CharBuffer.md "class in java.nio") cb)
    throws [IOException](../io/IOException.md "class in java.io")

    Attempts to read characters into the specified character buffer.
    The buffer is used as a repository of characters as-is: the only
    changes made are the results of a put operation. No flipping or
    rewinding of the buffer is performed.

    Parameters:
    :   `cb` - the buffer to read characters into

    Returns:
    :   The number of `char` values added to the buffer,
        or -1 if this source of characters is at its end

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `NullPointerException` - if cb is null
    :   `ReadOnlyBufferException` - if cb is a read only buffer