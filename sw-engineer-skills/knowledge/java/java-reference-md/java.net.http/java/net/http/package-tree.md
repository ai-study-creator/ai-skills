# Hierarchy For Package java.net.http

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.net.http.[HttpClient](HttpClient.md "class in java.net.http") (implements java.lang.[AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang"))
  + java.net.http.[HttpHeaders](HttpHeaders.md "class in java.net.http")
  + java.net.http.[HttpRequest](HttpRequest.md "class in java.net.http")
  + java.net.http.[HttpRequest.BodyPublishers](HttpRequest.BodyPublishers.md "class in java.net.http")
  + java.net.http.[HttpResponse.BodyHandlers](HttpResponse.BodyHandlers.md "class in java.net.http")
  + java.net.http.[HttpResponse.BodySubscribers](HttpResponse.BodySubscribers.md "class in java.net.http")
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.io.[IOException](../../../../java.base/java/io/IOException.md "class in java.io")
        + java.net.http.[HttpTimeoutException](HttpTimeoutException.md "class in java.net.http")
          - java.net.http.[HttpConnectTimeoutException](HttpConnectTimeoutException.md "class in java.net.http")
        + java.net.http.[WebSocketHandshakeException](WebSocketHandshakeException.md "class in java.net.http")

## Interface Hierarchy

* java.util.concurrent.[Flow.Publisher](../../../../java.base/java/util/concurrent/Flow.Publisher.md "interface in java.util.concurrent")<T>
  + java.net.http.[HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http")
* java.util.concurrent.[Flow.Subscriber](../../../../java.base/java/util/concurrent/Flow.Subscriber.md "interface in java.util.concurrent")<T>
  + java.net.http.[HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<T>
* java.net.http.[HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http")
* java.net.http.[HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http")
* java.net.http.[HttpResponse](HttpResponse.md "interface in java.net.http")<T>
* java.net.http.[HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<T>
* java.net.http.[HttpResponse.PushPromiseHandler](HttpResponse.PushPromiseHandler.md "interface in java.net.http")<T>
* java.net.http.[HttpResponse.ResponseInfo](HttpResponse.ResponseInfo.md "interface in java.net.http")
* java.net.http.[WebSocket](WebSocket.md "interface in java.net.http")
* java.net.http.[WebSocket.Builder](WebSocket.Builder.md "interface in java.net.http")
* java.net.http.[WebSocket.Listener](WebSocket.Listener.md "interface in java.net.http")

## Enum Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../../../java.base/java/lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.net.http.[HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http")
    - java.net.http.[HttpClient.Version](HttpClient.Version.md "enum class in java.net.http")