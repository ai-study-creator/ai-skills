Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Interface HandshakeCompletedListener

All Superinterfaces:
:   `EventListener`

---

public interface HandshakeCompletedListener
extends [EventListener](../../../java/util/EventListener.md "interface in java.util")

This interface is implemented by any class which wants to receive
notifications about the completion of an SSL protocol handshake
on a given SSL connection.

When an SSL handshake completes, new security parameters will
have been established. Those parameters always include the security
keys used to protect messages. They may also include parameters
associated with a new *session* such as authenticated
peer identity and a new SSL cipher suite.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `handshakeCompleted(HandshakeCompletedEvent event)`

  This method is invoked on registered objects
  when a SSL handshake is completed.

* ## Method Details

  + ### handshakeCompleted

    void handshakeCompleted([HandshakeCompletedEvent](HandshakeCompletedEvent.md "class in javax.net.ssl") event)

    This method is invoked on registered objects
    when a SSL handshake is completed.

    Parameters:
    :   `event` - the event identifying when the SSL Handshake
        completed on a given SSL connection