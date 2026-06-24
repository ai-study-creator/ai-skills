Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class CacheResponse

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.CacheResponse

Direct Known Subclasses:
:   `SecureCacheResponse`

---

public abstract class CacheResponse
extends [Object](../lang/Object.md "class in java.lang")

Represent channels for retrieving resources from the
ResponseCache. Instances of such a class provide an
InputStream that returns the entity body, and also a
getHeaders() method which returns the associated response headers.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CacheResponse()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract InputStream`

  `getBody()`

  Returns the response body as an InputStream.

  `abstract Map<String,List<String>>`

  `getHeaders()`

  Returns the response headers as a Map.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CacheResponse

    public CacheResponse()

    Constructor for subclasses to call.
* ## Method Details

  + ### getHeaders

    public abstract [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[List](../util/List.md "interface in java.util")<[String](../lang/String.md "class in java.lang")>> getHeaders()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the response headers as a Map.

    Returns:
    :   An immutable Map from response header field names to
        lists of field values. The status line has null as its
        field name.

    Throws:
    :   `IOException` - if an I/O error occurs
        while getting the response headers
  + ### getBody

    public abstract [InputStream](../io/InputStream.md "class in java.io") getBody()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns the response body as an InputStream.

    Returns:
    :   an InputStream from which the response body can
        be accessed

    Throws:
    :   `IOException` - if an I/O error occurs while
        getting the response body