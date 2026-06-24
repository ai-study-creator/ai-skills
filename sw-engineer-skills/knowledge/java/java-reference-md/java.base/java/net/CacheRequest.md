Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class CacheRequest

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.CacheRequest

---

public abstract class CacheRequest
extends [Object](../lang/Object.md "class in java.lang")

Represents channels for storing resources in the
ResponseCache. Instances of such a class provide an
OutputStream object which is called by protocol handlers to
store the resource data into the cache, and also an abort() method
which allows a cache store operation to be interrupted and
abandoned. If an IOException is encountered while reading the
response or writing to the cache, the current cache store operation
will be aborted.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CacheRequest()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `abort()`

  Aborts the attempt to cache the response.

  `abstract OutputStream`

  `getBody()`

  Returns an OutputStream to which the response body can be
  written.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CacheRequest

    public CacheRequest()

    Constructor for subclasses to call.
* ## Method Details

  + ### getBody

    public abstract [OutputStream](../io/OutputStream.md "class in java.io") getBody()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns an OutputStream to which the response body can be
    written.

    Returns:
    :   an OutputStream to which the response body can
        be written

    Throws:
    :   `IOException` - if an I/O error occurs while
        writing the response body
  + ### abort

    public abstract void abort()

    Aborts the attempt to cache the response. If an IOException is
    encountered while reading the response or writing to the cache,
    the current cache store operation will be abandoned.