Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Interface RMIFailureHandler

---

public interface RMIFailureHandler

An `RMIFailureHandler` can be registered via the
`RMISocketFactory.setFailureHandler` call. The
`failure` method of the handler is invoked when the RMI
runtime is unable to create a `ServerSocket` to listen
for incoming calls. The `failure` method returns a boolean
indicating whether the runtime should attempt to re-create the
`ServerSocket`.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `failure(Exception ex)`

  The `failure` callback is invoked when the RMI
  runtime is unable to create a `ServerSocket` via the
  `RMISocketFactory`.

* ## Method Details

  + ### failure

    boolean failure([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    The `failure` callback is invoked when the RMI
    runtime is unable to create a `ServerSocket` via the
    `RMISocketFactory`. An `RMIFailureHandler`
    is registered via a call to
    `RMISocketFactory.setFailureHandler`. If no failure
    handler is installed, the default behavior is to attempt to
    re-create the ServerSocket.

    Parameters:
    :   `ex` - the exception that occurred during `ServerSocket`
        creation

    Returns:
    :   if true, the RMI runtime attempts to retry
        `ServerSocket` creation

    Since:
    :   1.1

    See Also:
    :   - [`RMISocketFactory.setFailureHandler(RMIFailureHandler)`](RMISocketFactory.md#setFailureHandler(java.rmi.server.RMIFailureHandler))