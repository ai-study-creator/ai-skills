Module [java.base](../../module-summary.md)

# Package java.net

---

package java.net

Provides the classes for implementing networking applications.

The java.net package can be roughly divided in two sections:

* *A Low Level API*, which deals with the
  following abstractions:

  + *Addresses*, which are networking identifiers,
    like IP addresses.
  + *Sockets*, which are basic bidirectional data communication
    mechanisms.
  + *Interfaces*, which describe network interfaces.
* *A High Level API*, which deals with the following
  abstractions:

  + *URIs*, which represent
    Universal Resource Identifiers.
  + *URLs*, which represent
    Universal Resource Locators.
  + *Connections*, which represents connections to the resource
    pointed to by *URLs*.

## Addresses

Addresses are used throughout the java.net APIs as either host
identifiers, or socket endpoint identifiers.

The [`InetAddress`](InetAddress.md "class in java.net") class is the abstraction representing an
IP (Internet Protocol) address. It has two subclasses:

* [`Inet4Address`](Inet4Address.md "class in java.net") for IPv4 addresses.
* [`Inet6Address`](Inet6Address.md "class in java.net") for IPv6 addresses.

But, in most cases, there is no need to deal directly with the subclasses,
as the InetAddress abstraction should cover most of the needed
functionality.

### **About IPv6**

Not all systems have support for the IPv6 protocol, and while the Java
networking stack will attempt to detect it and use it transparently when
available, it is also possible to disable its use with a system property.
In the case where IPv6 is not available, or explicitly disabled,
Inet6Address are not valid arguments for most networking operations any
more. While methods like [`InetAddress.getByName(java.lang.String)`](InetAddress.md#getByName(java.lang.String)) are
guaranteed not to return an Inet6Address when looking up host names, it
is possible, by passing literals, to create such an object. In which
case, most methods, when called with an Inet6Address will throw an
Exception.

## Sockets

Sockets are means to establish a communication link between machines over
the network. The java.net package provides 4 kinds of Sockets:

* [`Socket`](Socket.md "class in java.net") is a TCP client API, and will typically
  be used to [connect](Socket.md#connect(java.net.SocketAddress)) to a remote host.
* [`ServerSocket`](ServerSocket.md "class in java.net") is a TCP server API, and will
  typically [accept](ServerSocket.md#accept())
  connections from client sockets.
* [`DatagramSocket`](DatagramSocket.md "class in java.net") is a UDP endpoint API and is used
  to [send](DatagramSocket.md#send(java.net.DatagramPacket)) and
  [receive](DatagramSocket.md#receive(java.net.DatagramPacket))
  [datagram packets](DatagramPacket.md "class in java.net").
* [`MulticastSocket`](MulticastSocket.md "class in java.net") is a subclass of
  `DatagramSocket` used when dealing with multicast
  groups.

Sending and receiving with TCP sockets is done through InputStreams and
OutputStreams which can be obtained via the
[`Socket.getInputStream()`](Socket.md#getInputStream()) and
[`Socket.getOutputStream()`](Socket.md#getOutputStream()) methods.

## Interfaces

The [`NetworkInterface`](NetworkInterface.md "class in java.net") class provides APIs to browse and
query all the networking interfaces (e.g. ethernet connection or PPP
endpoint) of the local machine. It is through that class that you can
check if any of the local interfaces is configured to support IPv6.

Note, all conforming implementations must support at least one
`NetworkInterface` object, which must either be connected to a
network, or be a "loopback" interface that can only communicate with
entities on the same machine.

## High level API

A number of classes in the java.net package do provide for a much higher
level of abstraction and allow for easy access to resources on the
network. The classes are:

* [`URI`](URI.md "class in java.net") is the class representing a
  Universal Resource Identifier, as specified in RFC 2396.
  As the name indicates, this is just an Identifier and doesn't
  provide directly the means to access the resource.
* [`URL`](URL.md "class in java.net") is the class representing a
  Universal Resource Locator, which is both an older concept for
  URIs and a means to access the resources.
* [`URLConnection`](URLConnection.md "class in java.net") is created from a URL and is the
  communication link used to access the resource pointed by the
  URL. This abstract class will delegate most of the work to the
  underlying protocol handlers like http or https.
* [`HttpURLConnection`](HttpURLConnection.md "class in java.net") is a subclass of URLConnection
  and provides some additional functionalities specific to the
  HTTP protocol. This API has been superseded by the newer
  [HTTP Client API](../../../java.net.http/java/net/http/package-summary.md).

The recommended usage is to use [`URI`](URI.md "class in java.net") to identify
resources, then convert it into a [`URL`](URL.md "class in java.net") when it is time to
access the resource. From that URL, you can either get the
[`URLConnection`](URLConnection.md "class in java.net") for fine control, or get directly the
InputStream.

Here is an example:

```
 URI uri = new URI("http://www.example.com/");
 URL url = uri.toURL();
 InputStream in = url.openStream();
```

## Protocol Handlers

As mentioned, URL and URLConnection rely on protocol handlers which must be
present, otherwise an Exception is thrown. This is the major difference with
URIs which only identify resources, and therefore don't need to have access
to the protocol handler. So, while it is possible to create an URI with any
kind of protocol scheme (e.g. `myproto://myhost.mydomain/resource/`),
a similar URL will try to instantiate the handler for the specified protocol;
if it doesn't exist an exception will be thrown.

By default the protocol handlers are loaded dynamically from the default
location. It is, however, possible to deploy additional protocols handlers
as [`services`](../util/ServiceLoader.md "class in java.util"). Service providers of type
[URLStreamHandlerProvider](spi/URLStreamHandlerProvider.md "class in java.net.spi") are located at
runtime, as specified in the [URL constructor](URL.md#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String)).

## Additional Specification

* [Networking System Properties](doc-files/net-properties.md)

Since:
:   1.0

* Related Packages

  Module

  Package

  Description

  [java.net.http](../../../java.net.http/module-summary.md)

  [java.net.http](../../../java.net.http/java/net/http/package-summary.md)

  HTTP Client and WebSocket APIs

  [java.base](../../module-summary.md)

  [java.net.spi](spi/package-summary.md)

  Service-provider classes for the [`java.net`](package-summary.md) package.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [Authenticator](Authenticator.md "class in java.net")

  The class Authenticator represents an object that knows how to obtain
  authentication for a network connection.

  [Authenticator.RequestorType](Authenticator.RequestorType.md "enum class in java.net")

  The type of the entity requesting authentication.

  [BindException](BindException.md "class in java.net")

  Signals that an error occurred while attempting to bind a
  socket to a local address and port.

  [CacheRequest](CacheRequest.md "class in java.net")

  Represents channels for storing resources in the
  ResponseCache.

  [CacheResponse](CacheResponse.md "class in java.net")

  Represent channels for retrieving resources from the
  ResponseCache.

  [ConnectException](ConnectException.md "class in java.net")

  Signals that an error occurred while attempting to connect a
  socket to a remote address and port.

  [ContentHandler](ContentHandler.md "class in java.net")

  The abstract class `ContentHandler` is the superclass
  of all classes that read an `Object` from a
  `URLConnection`.

  [ContentHandlerFactory](ContentHandlerFactory.md "interface in java.net")

  This interface defines a factory for content handlers.

  [CookieHandler](CookieHandler.md "class in java.net")

  A CookieHandler object provides a callback mechanism to hook up a
  HTTP state management policy implementation into the HTTP protocol
  handler.

  [CookieManager](CookieManager.md "class in java.net")

  CookieManager provides a concrete implementation of [`CookieHandler`](CookieHandler.md "class in java.net"),
  which separates the storage of cookies from the policy surrounding accepting
  and rejecting cookies.

  [CookiePolicy](CookiePolicy.md "interface in java.net")

  CookiePolicy implementations decide which cookies should be accepted
  and which should be rejected.

  [CookieStore](CookieStore.md "interface in java.net")

  A CookieStore object represents a storage for cookie.

  [DatagramPacket](DatagramPacket.md "class in java.net")

  This class represents a datagram packet.

  [DatagramSocket](DatagramSocket.md "class in java.net")

  This class represents a socket for sending and receiving datagram packets.

  [DatagramSocketImpl](DatagramSocketImpl.md "class in java.net")

  Abstract datagram and multicast socket implementation base class.

  [DatagramSocketImplFactory](DatagramSocketImplFactory.md "interface in java.net")

  This interface defines a factory for datagram socket implementations.

  [FileNameMap](FileNameMap.md "interface in java.net")

  A simple interface which provides a mechanism to map
  between a file name and a MIME type string.

  [HttpCookie](HttpCookie.md "class in java.net")

  An HttpCookie object represents an HTTP cookie, which carries state
  information between server and user agent.

  [HttpRetryException](HttpRetryException.md "class in java.net")

  Thrown to indicate that a HTTP request needs to be retried
  but cannot be retried automatically, due to streaming mode
  being enabled.

  [HttpURLConnection](HttpURLConnection.md "class in java.net")

  A URLConnection with support for HTTP-specific features.

  [IDN](IDN.md "class in java.net")

  Provides methods to convert internationalized domain names (IDNs) between
  a normal Unicode representation and an ASCII Compatible Encoding (ACE) representation.

  [Inet4Address](Inet4Address.md "class in java.net")

  This class represents an Internet Protocol version 4 (IPv4) address.

  [Inet6Address](Inet6Address.md "class in java.net")

  This class represents an Internet Protocol version 6 (IPv6) address.

  [InetAddress](InetAddress.md "class in java.net")

  This class represents an Internet Protocol (IP) address.

  [InetSocketAddress](InetSocketAddress.md "class in java.net")

  This class implements an IP Socket Address (IP address + port number)
  It can also be a pair (hostname + port number), in which case an attempt
  will be made to resolve the hostname.

  [InterfaceAddress](InterfaceAddress.md "class in java.net")

  This class represents a Network Interface address.

  [JarURLConnection](JarURLConnection.md "class in java.net")

  A URL Connection to a Java ARchive (JAR) file or an entry in a JAR
  file.

  [MalformedURLException](MalformedURLException.md "class in java.net")

  Thrown to indicate that a malformed URL has occurred.

  [MulticastSocket](MulticastSocket.md "class in java.net")

  A `MulticastSocket` is a datagram socket that is
  convenient for sending and receiving IP multicast datagrams.

  [NetPermission](NetPermission.md "class in java.net")

  This class is for various network permissions.

  [NetworkInterface](NetworkInterface.md "class in java.net")

  This class represents a Network Interface made up of a name,
  and a list of IP addresses assigned to this interface.

  [NoRouteToHostException](NoRouteToHostException.md "class in java.net")

  Signals that an error occurred while attempting to connect a
  socket to a remote address and port.

  [PasswordAuthentication](PasswordAuthentication.md "class in java.net")

  The class PasswordAuthentication is a data holder that is used by
  Authenticator.

  [PortUnreachableException](PortUnreachableException.md "class in java.net")

  Signals that an ICMP Port Unreachable message has been
  received on a connected datagram.

  [ProtocolException](ProtocolException.md "class in java.net")

  Thrown to indicate that there is an error in the underlying
  protocol, such as a TCP error.

  [ProtocolFamily](ProtocolFamily.md "interface in java.net")

  Represents a family of communication protocols.

  [Proxy](Proxy.md "class in java.net")

  This class represents a proxy setting, typically a type (http, socks) and
  a socket address.

  [Proxy.Type](Proxy.Type.md "enum class in java.net")

  Represents the proxy type.

  [ProxySelector](ProxySelector.md "class in java.net")

  Selects the proxy server to use, if any, when connecting to the
  network resource referenced by a URL.

  [ResponseCache](ResponseCache.md "class in java.net")

  Represents implementations of URLConnection caches.

  [SecureCacheResponse](SecureCacheResponse.md "class in java.net")

  Represents a cache response originally retrieved through secure
  means, such as TLS.

  [ServerSocket](ServerSocket.md "class in java.net")

  This class implements server sockets.

  [Socket](Socket.md "class in java.net")

  This class implements client sockets (also called just
  "sockets").

  [SocketAddress](SocketAddress.md "class in java.net")

  This class represents a Socket Address with no protocol attachment.

  [SocketException](SocketException.md "class in java.net")

  Thrown to indicate that there is an error creating or accessing a Socket.

  [SocketImpl](SocketImpl.md "class in java.net")

  The abstract class `SocketImpl` is a common superclass
  of all classes that actually implement sockets.

  [SocketImplFactory](SocketImplFactory.md "interface in java.net")

  This interface defines a factory for socket implementations.

  [SocketOption](SocketOption.md "interface in java.net")<T>

  A socket option associated with a socket.

  [SocketOptions](SocketOptions.md "interface in java.net")

  Interface of methods to get/set socket options.

  [SocketPermission](SocketPermission.md "class in java.net")

  This class represents access to a network via sockets.

  [SocketTimeoutException](SocketTimeoutException.md "class in java.net")

  Signals that a timeout has occurred on a socket read or accept.

  [StandardProtocolFamily](StandardProtocolFamily.md "enum class in java.net")

  Defines the standard families of communication protocols.

  [StandardSocketOptions](StandardSocketOptions.md "class in java.net")

  Defines the *standard* socket options.

  [UnixDomainSocketAddress](UnixDomainSocketAddress.md "class in java.net")

  A Unix domain socket address.

  [UnknownHostException](UnknownHostException.md "class in java.net")

  Thrown to indicate that the IP address of a host could not be determined.

  [UnknownServiceException](UnknownServiceException.md "class in java.net")

  Thrown to indicate that an unknown service exception has
  occurred.

  [URI](URI.md "class in java.net")

  Represents a Uniform Resource Identifier (URI) reference.

  [URISyntaxException](URISyntaxException.md "class in java.net")

  Checked exception thrown to indicate that a string could not be parsed as a
  URI reference.

  [URL](URL.md "class in java.net")

  Class `URL` represents a Uniform Resource
  Locator, a pointer to a "resource" on the World
  Wide Web.

  [URLClassLoader](URLClassLoader.md "class in java.net")

  This class loader is used to load classes and resources from a search
  path of URLs referring to both JAR files and directories.

  [URLConnection](URLConnection.md "class in java.net")

  The abstract class `URLConnection` is the superclass
  of all classes that represent a communications link between the
  application and a URL.

  [URLDecoder](URLDecoder.md "class in java.net")

  Utility class for HTML form decoding.

  [URLEncoder](URLEncoder.md "class in java.net")

  Utility class for HTML form encoding.

  [URLPermission](URLPermission.md "class in java.net")

  Represents permission to access a resource or set of resources defined by a
  given url, and for a given set of user-settable request methods
  and request headers.

  [URLStreamHandler](URLStreamHandler.md "class in java.net")

  The abstract class `URLStreamHandler` is the common
  superclass for all stream protocol handlers.

  [URLStreamHandlerFactory](URLStreamHandlerFactory.md "interface in java.net")

  This interface defines a factory for `URL` stream
  protocol handlers.