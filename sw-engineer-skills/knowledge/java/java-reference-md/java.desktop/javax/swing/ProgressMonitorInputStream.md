Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ProgressMonitorInputStream

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.io.InputStream](../../../java.base/java/io/InputStream.md "class in java.io")

[java.io.FilterInputStream](../../../java.base/java/io/FilterInputStream.md "class in java.io")

javax.swing.ProgressMonitorInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class ProgressMonitorInputStream
extends [FilterInputStream](../../../java.base/java/io/FilterInputStream.md "class in java.io")

Monitors the progress of reading from some InputStream. This ProgressMonitor
is normally invoked in roughly this form:

```
 InputStream in = new BufferedInputStream(
                          new ProgressMonitorInputStream(
                                  parentComponent,
                                  "Reading " + fileName,
                                  new FileInputStream(fileName)));
```

This creates a progress monitor to monitor the progress of reading
the input stream. If it's taking a while, a ProgressDialog will
be popped up to inform the user. If the user hits the Cancel button
an InterruptedIOException will be thrown on the next read.
All the right cleanup is done when the stream is closed.

For further documentation and examples see
[How to Monitor Progress](https://docs.oracle.com/javase/tutorial/uiswing/components/progress.html),
a section in *The Java Tutorial.*

Since:
:   1.2

See Also:
:   * [`ProgressMonitor`](ProgressMonitor.md "class in javax.swing")
    * [`JOptionPane`](JOptionPane.md "class in javax.swing")

* ## Field Summary

  ### Fields inherited from class java.io.[FilterInputStream](../../../java.base/java/io/FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ProgressMonitorInputStream(Component parentComponent,
  Object message,
  InputStream in)`

  Constructs an object to monitor the progress of an input stream.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Overrides `FilterInputStream.close`
  to close the progress monitor as well as the stream.

  `ProgressMonitor`

  `getProgressMonitor()`

  Get the ProgressMonitor object being used by this stream.

  `int`

  `read()`

  Overrides `FilterInputStream.read`
  to update the progress monitor after the read.

  `int`

  `read(byte[] b)`

  Overrides `FilterInputStream.read`
  to update the progress monitor after the read.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Overrides `FilterInputStream.read`
  to update the progress monitor after the read.

  `void`

  `reset()`

  Overrides `FilterInputStream.reset`
  to reset the progress monitor as well as the stream.

  `long`

  `skip(long n)`

  Overrides `FilterInputStream.skip`
  to update the progress monitor after the skip.

  ### Methods inherited from class java.io.[FilterInputStream](../../../java.base/java/io/FilterInputStream.md "class in java.io")

  `available, mark, markSupported`

  ### Methods inherited from class java.io.[InputStream](../../../java.base/java/io/InputStream.md "class in java.io")

  `nullInputStream, readAllBytes, readNBytes, readNBytes, skipNBytes, transferTo`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ProgressMonitorInputStream

    public ProgressMonitorInputStream([Component](../../java/awt/Component.md "class in java.awt") parentComponent,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") message,
    [InputStream](../../../java.base/java/io/InputStream.md "class in java.io") in)

    Constructs an object to monitor the progress of an input stream.

    Parameters:
    :   `parentComponent` - The component triggering the operation
        being monitored.
    :   `message` - Descriptive text to be placed in the dialog box
        if one is popped up.
    :   `in` - The input stream to be monitored.
* ## Method Details

  + ### getProgressMonitor

    public [ProgressMonitor](ProgressMonitor.md "class in javax.swing") getProgressMonitor()

    Get the ProgressMonitor object being used by this stream. Normally
    this isn't needed unless you want to do something like change the
    descriptive text partway through reading the file.

    Returns:
    :   the ProgressMonitor object used by this object
  + ### read

    public int read()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Overrides `FilterInputStream.read`
    to update the progress monitor after the read.

    Overrides:
    :   `read` in class `FilterInputStream`

    Returns:
    :   the next byte of data, or `-1` if the end of the
        stream is reached.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterInputStream.in`](../../../java.base/java/io/FilterInputStream.md#in)
  + ### read

    public int read(byte[] b)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Overrides `FilterInputStream.read`
    to update the progress monitor after the read.

    Overrides:
    :   `read` in class `FilterInputStream`

    Parameters:
    :   `b` - the buffer into which the data is read.

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the stream has been reached.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterInputStream.read(byte[], int, int)`](../../../java.base/java/io/FilterInputStream.md#read(byte%5B%5D,int,int))
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Overrides `FilterInputStream.read`
    to update the progress monitor after the read.

    Overrides:
    :   `read` in class `FilterInputStream`

    Parameters:
    :   `b` - the buffer into which the data is read.
    :   `off` - the start offset in array `b`
        at which the data is written.
    :   `len` - the maximum number of bytes to read.

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the stream has been reached.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterInputStream.in`](../../../java.base/java/io/FilterInputStream.md#in)
  + ### skip

    public long skip(long n)
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Overrides `FilterInputStream.skip`
    to update the progress monitor after the skip.

    Overrides:
    :   `skip` in class `FilterInputStream`

    Parameters:
    :   `n` - the number of bytes to be skipped.

    Returns:
    :   the actual number of bytes skipped.

    Throws:
    :   `IOException` - if `in.skip(n)` throws an IOException.

    See Also:
    :   - [`InputStream.skipNBytes(long)`](../../../java.base/java/io/InputStream.md#skipNBytes(long))
  + ### close

    public void close()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Overrides `FilterInputStream.close`
    to close the progress monitor as well as the stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `FilterInputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterInputStream.in`](../../../java.base/java/io/FilterInputStream.md#in)
  + ### reset

    public void reset()
    throws [IOException](../../../java.base/java/io/IOException.md "class in java.io")

    Overrides `FilterInputStream.reset`
    to reset the progress monitor as well as the stream.

    Overrides:
    :   `reset` in class `FilterInputStream`

    Throws:
    :   `IOException` - if this stream has not been marked or if the
        mark has been invalidated.

    See Also:
    :   - [`FilterInputStream.in`](../../../java.base/java/io/FilterInputStream.md#in)
        - [`FilterInputStream.mark(int)`](../../../java.base/java/io/FilterInputStream.md#mark(int))