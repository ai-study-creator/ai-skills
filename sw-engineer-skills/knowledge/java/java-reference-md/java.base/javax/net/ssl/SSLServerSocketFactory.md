Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SSLServerSocketFactory

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[javax.net.ServerSocketFactory](../ServerSocketFactory.md "class in javax.net")

javax.net.ssl.SSLServerSocketFactory

---

public abstract class SSLServerSocketFactory
extends [ServerSocketFactory](../ServerSocketFactory.md "class in javax.net")

`SSLServerSocketFactory`s create
`SSLServerSocket`s.

Since:
:   1.4

See Also:
:   * [`SSLSocket`](SSLSocket.md "class in javax.net.ssl")
    * [`SSLServerSocket`](SSLServerSocket.md "class in javax.net.ssl")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SSLServerSocketFactory()`

  Constructor is used only by subclasses.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ServerSocketFactory`

  `getDefault()`

  Returns the default SSL server socket factory.

  `abstract String[]`

  `getDefaultCipherSuites()`

  Returns the list of cipher suites which are enabled by default.

  `abstract String[]`

  `getSupportedCipherSuites()`

  Returns the names of the cipher suites which could be enabled for use
  on an SSL connection created by this factory.

  ### Methods inherited from class javax.net.[ServerSocketFactory](../ServerSocketFactory.md "class in javax.net")

  `createServerSocket, createServerSocket, createServerSocket, createServerSocket`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SSLServerSocketFactory

    protected SSLServerSocketFactory()

    Constructor is used only by subclasses.
* ## Method Details

  + ### getDefault

    public static [ServerSocketFactory](../ServerSocketFactory.md "class in javax.net") getDefault()

    Returns the default SSL server socket factory.

    The first time this method is called, the security property
    "ssl.ServerSocketFactory.provider" is examined. If it is non-null, a
    class by that name is loaded and instantiated. If that is successful and
    the object is an instance of SSLServerSocketFactory, it is made the
    default SSL server socket factory.

    Otherwise, this method returns
    `SSLContext.getDefault().getServerSocketFactory()`. If that
    call fails, an inoperative factory is returned.

    Returns:
    :   the default `ServerSocketFactory`

    See Also:
    :   - [`SSLContext.getDefault()`](SSLContext.md#getDefault())
  + ### getDefaultCipherSuites

    public abstract [String](../../../java/lang/String.md "class in java.lang")[] getDefaultCipherSuites()

    Returns the list of cipher suites which are enabled by default.
    Unless a different list is enabled, handshaking on an SSL connection
    will use one of these cipher suites. The minimum quality of service
    for these defaults requires confidentiality protection and server
    authentication (that is, no anonymous cipher suites).

    The returned array includes cipher suites from the list of standard
    cipher suite names in the [JSSE Cipher Suite Names](../../../../../specs/security/standard-names.md#jsse-cipher-suite-names) section of the Java Security Standard
    Algorithm Names Specification, and may also include other cipher
    suites that the provider supports.

    Returns:
    :   array of the cipher suites enabled by default

    See Also:
    :   - [`getSupportedCipherSuites()`](#getSupportedCipherSuites())
  + ### getSupportedCipherSuites

    public abstract [String](../../../java/lang/String.md "class in java.lang")[] getSupportedCipherSuites()

    Returns the names of the cipher suites which could be enabled for use
    on an SSL connection created by this factory.
    Normally, only a subset of these will actually
    be enabled by default, since this list may include cipher suites which
    do not meet quality of service requirements for those defaults. Such
    cipher suites are useful in specialized applications.

    The returned array includes cipher suites from the list of standard
    cipher suite names in the [JSSE Cipher Suite Names](../../../../../specs/security/standard-names.md#jsse-cipher-suite-names) section of the Java Security Standard
    Algorithm Names Specification, and may also include other cipher
    suites that the provider supports.

    Returns:
    :   an array of cipher suite names

    See Also:
    :   - [`getDefaultCipherSuites()`](#getDefaultCipherSuites())