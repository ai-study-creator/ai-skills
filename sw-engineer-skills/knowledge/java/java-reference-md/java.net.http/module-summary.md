# Module java.net.http

---

module java.net.http

Defines the HTTP Client and WebSocket APIs.

**System properties used by the java.net.http API**

The following is a list of system networking properties used by the java.net.http
client implementation in the JDK. Any properties below that take a numeric value
assume the default value if given a string that does not parse as a number.
Unless otherwise specified below, all values can be set in the `conf/net.properties`
file. In all cases, values can be specified as system properties on the command line,
in which case, any value in `conf/net.properties` is overridden. No guarantee is
provided that property values can be set programatically with `System.setProperty()`.
Other implementations of this API may choose not to support these properties.

* **`jdk.httpclient.allowRestrictedHeaders`** (default: see below)  
  A comma-separated list of normally restricted HTTP header names that users may set in HTTP
  requests or by user code in HttpRequest instances. By default, the following request
  headers are not allowed to be set by user code: connection, content-length, expect, host,
  and upgrade. You can override this behavior with this property. The names are case-insensitive
  and whitespace is ignored. Note that this property is intended for testing and not for
  real-world deployments. Protocol errors or other undefined behavior are likely to occur
  when using this property. There may be other headers that are restricted from being set
  depending on the context. This includes the "Authorization" header when the relevant
  HttpClient has an authenticator set. These restrictions cannot be overridden by this
  property.
* **`jdk.httpclient.bufsize`** (default: 16384 bytes or 16 kB)  
  The size to use for internal allocated buffers in bytes.
* **`jdk.httpclient.connectionPoolSize`** (default: 0)  
  The maximum number of connections to keep in the HTTP/1.1 keep alive cache. A value of 0
  means that the cache is unbounded.
* **`jdk.httpclient.connectionWindowSize`** (default: 2^26)  
  The HTTP/2 client connection window size in bytes. The maximum size is 2^31-1. This value
  cannot be smaller than the stream window size, which can be configured through the
  `jdk.httpclient.windowsize` system property.
* **`jdk.httpclient.disableRetryConnect`** (default: false)  
  Whether automatic retry of connection failures is disabled. If false, then retries are
  attempted (subject to the retry limit).
* **`jdk.httpclient.enableAllMethodRetry`** (default: false)  
  Whether it is permitted to automatically retry non-idempotent HTTP requests.
* **`jdk.httpclient.enablepush`** (default: 1)  
  Whether HTTP/2 push promise is enabled. A value of 1 enables push promise; a value of 0
  disables it.
* **`jdk.httpclient.hpack.maxheadertablesize`** (default: 16384 or
  16 kB)  
   The HTTP/2 client maximum HPACK header table size in bytes.
* **`jdk.httpclient.HttpClient.log`** (default: none)  
  Enables high-level logging of various events through the [Platform Logging API](../java.base/java/lang/System.Logger.md "interface in java.lang"). The value contains a comma-separated list of any of the
  following items:
  + errors
  + requests
  + headers
  + content
  + frames
  + ssl
  + trace
  + channel  
  You can append the frames item with a colon-separated list of any of the following items:
  + control
  + data
  + window
  + all  
  Specifying an item adds it to the HTTP client's log. For example, if you specify the
  following value, then the Platform Logging API logs all possible HTTP Client events:  
  "errors,requests,headers,frames:control:data:window,ssl,trace,channel"  
  Note that you can replace control:data:window with all. The name of the logger is
  "jdk.httpclient.HttpClient", and all logging is at level INFO.
* **`jdk.httpclient.keepalive.timeout`** (default: 30)  
  The number of seconds to keep idle HTTP connections alive in the keep alive cache. This
  property applies to both HTTP/1.1 and HTTP/2. The value for HTTP/2 can be overridden
  with the `jdk.httpclient.keepalive.timeout.h2 property`.
* **`jdk.httpclient.keepalive.timeout.h2`** (default: see
  below)  
  The number of seconds to keep idle HTTP/2 connections alive. If not set, then the
  `jdk.httpclient.keepalive.timeout` setting is used.
* **`jdk.httpclient.maxframesize`** (default: 16384 or 16kB)  
  The HTTP/2 client maximum frame size in bytes. The server is not permitted to send a frame
  larger than this.
* **`jdk.httpclient.maxstreams`** (default: 100)  
  The maximum number of HTTP/2 push streams that the client will permit servers to open
  simultaneously.
* **`jdk.httpclient.receiveBufferSize`** (default: operating system
  default)  
  The HTTP client [socket receive buffer size](../java.base/java/net/StandardSocketOptions.md#SO_RCVBUF) in bytes.
* **`jdk.httpclient.redirects.retrylimit`** (default: 5)  
  The maximum number of attempts to send a HTTP request when redirected or any failure occurs
  for any reason.
* **`jdk.httpclient.websocket.writeBufferSize`** (default: 16384
  or 16kB)  
  The buffer size used by the web socket implementation for socket writes.
* **`jdk.httpclient.windowsize`** (default: 16777216 or 16 MB)  
  The HTTP/2 client stream window size in bytes.
* **`jdk.httpclient.auth.retrylimit`** (default: 3)  
  The number of attempts the Basic authentication filter will attempt to retry a failed
  authentication.
* **`jdk.httpclient.sendBufferSize`** (default: operating system
  default)  
  The HTTP client socket
  [send buffer size](../java.base/java/net/StandardSocketOptions.md#SO_SNDBUF).
  Values less than or equal to zero are ignored.
* **`jdk.internal.httpclient.disableHostnameVerification`** (default:
  false)  
  If true (or set to an empty string), hostname verification in SSL certificates
  is disabled. This is a system property only and not available in `conf/net.properties`.
  It is provided for testing purposes only.
* **`jdk.http.auth.proxying.disabledSchemes`** (default: see
  conf/net.properties)  
  A comma separated list of HTTP authentication scheme names,
  that are disallowed for use by the HTTP client implementation, for HTTP proxying.
* **`jdk.http.auth.tunneling.disabledSchemes`** (default: see
  conf/net.properties)  
  A comma separated list of HTTP authentication scheme names, that
  are disallowed for use by the HTTP client implementation, for HTTP CONNECT tunneling.

Since:
:   11

* ## Packages

  Exports

  Package

  Description

  [java.net.http](java/net/http/package-summary.md)

  HTTP Client and WebSocket APIs