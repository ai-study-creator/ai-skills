Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Interface SSLSessionBindingListener

All Superinterfaces:
:   `EventListener`

---

public interface SSLSessionBindingListener
extends [EventListener](../../../java/util/EventListener.md "interface in java.util")

This interface is implemented by objects which want to know when
they are being bound or unbound from a SSLSession. When either event
occurs via [`SSLSession.putValue(String, Object)`](SSLSession.md#putValue(java.lang.String,java.lang.Object))
or [`SSLSession.removeValue(String)`](SSLSession.md#removeValue(java.lang.String)), the event is communicated
through a SSLSessionBindingEvent identifying the session.

Since:
:   1.4

See Also:
:   * [`SSLSession`](SSLSession.md "interface in javax.net.ssl")
    * [`SSLSessionBindingEvent`](SSLSessionBindingEvent.md "class in javax.net.ssl")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `valueBound(SSLSessionBindingEvent event)`

  This is called to notify the listener that it is being bound into
  an SSLSession.

  `void`

  `valueUnbound(SSLSessionBindingEvent event)`

  This is called to notify the listener that it is being unbound
  from a SSLSession.

* ## Method Details

  + ### valueBound

    void valueBound([SSLSessionBindingEvent](SSLSessionBindingEvent.md "class in javax.net.ssl") event)

    This is called to notify the listener that it is being bound into
    an SSLSession.

    Parameters:
    :   `event` - the event identifying the SSLSession into
        which the listener is being bound.
  + ### valueUnbound

    void valueUnbound([SSLSessionBindingEvent](SSLSessionBindingEvent.md "class in javax.net.ssl") event)

    This is called to notify the listener that it is being unbound
    from a SSLSession.

    Parameters:
    :   `event` - the event identifying the SSLSession from
        which the listener is being unbound.