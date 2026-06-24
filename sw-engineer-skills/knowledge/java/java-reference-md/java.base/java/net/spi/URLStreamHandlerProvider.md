Module [java.base](../../../module-summary.md)

Package [java.net.spi](package-summary.md)

# Class URLStreamHandlerProvider

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.net.spi.URLStreamHandlerProvider

All Implemented Interfaces:
:   `URLStreamHandlerFactory`

---

public abstract class URLStreamHandlerProvider
extends [Object](../../lang/Object.md "class in java.lang")
implements [URLStreamHandlerFactory](../URLStreamHandlerFactory.md "interface in java.net")

URL stream handler service-provider class.

A URL stream handler provider is a concrete subclass of this class that
has a zero-argument constructor. URL stream handler providers may be
installed in an instance of the Java platform by adding them to the
application class path.

A URL stream handler provider identifies itself with a
provider-configuration file named java.net.spi.URLStreamHandlerProvider in
the resource directory META-INF/services. The file should contain a list of
fully-qualified concrete URL stream handler provider class names, one per
line.

URL stream handler providers are located at runtime, as specified in the
[URL constructor](../URL.md#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String)).

Since:
:   9

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `URLStreamHandlerProvider()`

  Initializes a new URL stream handler provider.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.net.[URLStreamHandlerFactory](../URLStreamHandlerFactory.md "interface in java.net")

  `createURLStreamHandler`

* ## Constructor Details

  + ### URLStreamHandlerProvider

    protected URLStreamHandlerProvider()

    Initializes a new URL stream handler provider.

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`RuntimePermission`](../../lang/RuntimePermission.md "class in java.lang")`("setFactory")`.